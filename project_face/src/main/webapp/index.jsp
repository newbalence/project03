<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>WebRTC demo</title>
    <style>
    button {
        padding: 8px 16px;
    }

    pre {
        overflow-x: hidden;
        overflow-y: auto;
    }

    video {
        width: 100%;
    }

    .option {
        margin-bottom: 8px;
    }

    #media {
        max-width: 1280px;
    }
    </style>
</head>
<body>

<h2>Options</h2>
<div class="option">
    <input id="use-datachannel" checked="checked" type="checkbox"/>
    <label for="use-datachannel">Use datachannel</label>
    <select id="datachannel-parameters">
        <option value='{"ordered": true}'>Ordered, reliable</option>
        <option value='{"ordered": false, "maxRetransmits": 0}'>Unordered, no retransmissions</option>
        <option value='{"ordered": false, "maxPacketLifetime": 500}'>Unordered, 500ms lifetime</option>
    </select>
</div>
<div class="option">
    <input id="use-audio" type="checkbox"/>
    <label for="use-audio">Use audio</label>
    <select id="audio-input">
        <option value="" selected>Default device</option>
    </select>
    <select id="audio-codec">
        <option value="default" selected>Default codecs</option>
        <option value="opus/48000/2">Opus</option>
        <option value="PCMU/8000">PCMU</option>
        <option value="PCMA/8000">PCMA</option>
    </select>
</div>
<div class="option">
    <input id="use-video" checked="checked" type="checkbox"/>
    <label for="use-video">Use video</label>
    <select id="video-input">
        <option value="" selected>Default device</option>
    </select>
    <select id="video-resolution">
        <option value="" selected>Default resolution</option>
        <option value="320x240">320x240</option>
        <option value="640x480">640x480</option>
        <option value="960x540">960x540</option>
        <option value="1280x720">1280x720</option>
    </select>
    <select id="video-transform">
        <option value="none" selected>No transform</option>
        <option value="edges">Edge detection</option>
        <option value="cartoon">Cartoon effect</option>
        <option value="rotate">Rotate</option>
    </select>
    <select id="video-codec">
        <option value="default" selected>Default codecs</option>
        <option value="VP8/90000">VP8</option>
        <option value="H264/90000">H264</option>
    </select>
</div>
<div class="option">
    <input id="use-stun" type="checkbox"/>
    <label for="use-stun">Use STUN server</label>
</div>

<button id="start" onclick="start()">Start</button>
<button id="stop" style="display: none" onclick="stop()">Stop</button>

<h2>State</h2>
<p>
    ICE gathering state: <span id="ice-gathering-state"></span>
</p>
<p>
    ICE connection state: <span id="ice-connection-state"></span>
</p>
<p>
    Signaling state: <span id="signaling-state"></span>
</p>

<div id="media" style="display: none">
    <h2>Media</h2>

    <audio id="audio" autoplay="true"></audio>
    <video id="video" autoplay="true" playsinline="true"></video>
</div>

<h2>Data channel</h2>
<pre id="data-channel" style="height: 200px;"></pre>

<h2>SDP</h2>

<h3>Offer</h3>
<pre id="offer-sdp"></pre>

<h3>Answer</h3>
<pre id="answer-sdp"></pre>
<script>
//get DOM elements
var dataChannelLog = document.getElementById('data-channel'),
    iceConnectionLog = document.getElementById('ice-connection-state'),
    iceGatheringLog = document.getElementById('ice-gathering-state'),
    signalingLog = document.getElementById('signaling-state');

// peer connection
var pc = null;

// data channel
var dc = null, dcInterval = null;

function createPeerConnection() {
    var config = {
        sdpSemantics: 'unified-plan'
    };

    if (document.getElementById('use-stun').checked) {
        config.iceServers = [{ urls: ['stun:stun.l.google.com:19302'] }];
    }

    pc = new RTCPeerConnection(config);

    // register some listeners to help debugging
    pc.addEventListener('icegatheringstatechange', () => {
        iceGatheringLog.textContent += ' -> ' + pc.iceGatheringState;
    }, false);
    iceGatheringLog.textContent = pc.iceGatheringState;

    pc.addEventListener('iceconnectionstatechange', () => {
        iceConnectionLog.textContent += ' -> ' + pc.iceConnectionState;
    }, false);
    iceConnectionLog.textContent = pc.iceConnectionState;

    pc.addEventListener('signalingstatechange', () => {
        signalingLog.textContent += ' -> ' + pc.signalingState;
    }, false);
    signalingLog.textContent = pc.signalingState;

    // connect audio / video
    pc.addEventListener('track', (evt) => {
        if (evt.track.kind == 'video')
            document.getElementById('video').srcObject = evt.streams[0];
        else
            document.getElementById('audio').srcObject = evt.streams[0];
    });

    return pc;
}

function enumerateInputDevices() {
    const populateSelect = (select, devices) => {
        let counter = 1;
        devices.forEach((device) => {
            const option = document.createElement('option');
            option.value = device.deviceId;
            option.text = device.label || ('Device #' + counter);
            select.appendChild(option);
            counter += 1;
        });
    };

    navigator.mediaDevices.enumerateDevices().then((devices) => {
        populateSelect(
            document.getElementById('audio-input'),
            devices.filter((device) => device.kind == 'audioinput')
        );
        populateSelect(
            document.getElementById('video-input'),
            devices.filter((device) => device.kind == 'videoinput')
        );
    }).catch((e) => {
        alert(e);
        console.log(e)
    });
}

function negotiate() {
    return pc.createOffer().then((offer) => {
        return pc.setLocalDescription(offer);
    }).then(() => {
        // wait for ICE gathering to complete
        return new Promise((resolve) => {
            if (pc.iceGatheringState === 'complete') {
                resolve();
            } else {
                function checkState() {
                    if (pc.iceGatheringState === 'complete') {
                        pc.removeEventListener('icegatheringstatechange', checkState);
                        resolve();
                    }
                }
                pc.addEventListener('icegatheringstatechange', checkState);
            }
        });
    }).then(() => {
        var offer = pc.localDescription;
        var codec;

        codec = document.getElementById('audio-codec').value;
        if (codec !== 'default') {
            offer.sdp = sdpFilterCodec('audio', codec, offer.sdp);
        }

        codec = document.getElementById('video-codec').value;
        if (codec !== 'default') {
            offer.sdp = sdpFilterCodec('video', codec, offer.sdp);
        }

        /* document.getElementById('offer-sdp').textContent = offer.sdp; */
        return fetch('http://localhost:8888/offer', {
            body: JSON.stringify({
                sdp: offer.sdp,
                type: offer.type,
                video_transform: document.getElementById('video-transform').value
            }),
            headers: {
                'Content-Type': 'application/json'
            },
            method: 'POST'
        });
    }).then((response) => {
        return response.json();
    }).then((answer) => {
        /* document.getElementById('answer-sdp').textContent = answer.sdp; */
        return pc.setRemoteDescription(answer);
    }).catch((e) => {
        alert(e);
        console.log(e)
    });
}

function start() {
    document.getElementById('start').style.display = 'none';

    pc = createPeerConnection();

    var time_start = null;

    const current_stamp = () => {
        if (time_start === null) {
            time_start = new Date().getTime();
            return 0;
        } else {
            return new Date().getTime() - time_start;
        }
    };

    if (document.getElementById('use-datachannel').checked) {
        var parameters = JSON.parse(document.getElementById('datachannel-parameters').value);

        dc = pc.createDataChannel('chat', parameters);
        dc.addEventListener('close', () => {
            clearInterval(dcInterval);
            /* dataChannelLog.textContent += '- close\n';dataChannelLog */
        });
        dc.addEventListener('open', () => {
            /* dataChannelLog.textContent += '- open\n'; */
            dcInterval = setInterval(() => {
                var message = 'ping ' + current_stamp();
                /* dataChannelLog.textContent += '> ' + message + '\n'; */
                dc.send(message);
            }, 1000);
        });
        dc.addEventListener('message', (evt) => {
            /* dataChannelLog.textContent += '< ' + evt.data + '\n'; */

            if (evt.data.substring(0, 4) === 'pong') {
                var elapsed_ms = current_stamp() - parseInt(evt.data.substring(5), 10);
                /* dataChannelLog.textContent += ' RTT ' + elapsed_ms + ' ms\n'; */
            }
        });
    }

    // Build media constraints.

    const constraints = {
        audio: false,
        video: false
    };

    if (document.getElementById('use-audio').checked) {
        const audioConstraints = {};

        const device = document.getElementById('audio-input').value;
        if (device) {
            audioConstraints.deviceId = { exact: device };
        }

        constraints.audio = Object.keys(audioConstraints).length ? audioConstraints : true;
    }

    if (document.getElementById('use-video').checked) {
        const videoConstraints = {};

        const device = document.getElementById('video-input').value;
        if (device) {
            videoConstraints.deviceId = { exact: device };
        }

        const resolution = document.getElementById('video-resolution').value;
        if (resolution) {
            const dimensions = resolution.split('x');
            videoConstraints.width = parseInt(dimensions[0], 0);
            videoConstraints.height = parseInt(dimensions[1], 0);
        }

        constraints.video = Object.keys(videoConstraints).length ? videoConstraints : true;
    }

    // Acquire media and start negociation.

    if (constraints.audio || constraints.video) {
        if (constraints.video) {
            document.getElementById('media').style.display = 'block';
        }
        navigator.mediaDevices.getUserMedia(constraints).then((stream) => {
            stream.getTracks().forEach((track) => {
                pc.addTrack(track, stream);
            });
            return negotiate();
        }, (err) => {
            alert('Could not acquire media: ' + err);
        });
    } else {
        negotiate();
    }

    document.getElementById('stop').style.display = 'inline-block';
}

function stop() {
    document.getElementById('stop').style.display = 'none';

    // close data channel
    if (dc) {
        dc.close();
    }

    // close transceivers
    if (pc.getTransceivers) {
        pc.getTransceivers().forEach((transceiver) => {
            if (transceiver.stop) {
                transceiver.stop();
            }
        });
    }

    // close local audio / video
    pc.getSenders().forEach((sender) => {
        sender.track.stop();
    });

    // close peer connection
    setTimeout(() => {
        pc.close();
    }, 500);
    document.getElementById('start').style.display = 'inline-block';
}

function sdpFilterCodec(kind, codec, realSdp) {
    var allowed = []
    var rtxRegex = new RegExp('a=fmtp:(\\d+) apt=(\\d+)\r$');
    var codecRegex = new RegExp('a=rtpmap:([0-9]+) ' + escapeRegExp(codec))
    var videoRegex = new RegExp('(m=' + kind + ' .*?)( ([0-9]+))*\\s*$')

    var lines = realSdp.split('\n');

    var isKind = false;
    for (var i = 0; i < lines.length; i++) {
        if (lines[i].startsWith('m=' + kind + ' ')) {
            isKind = true;
        } else if (lines[i].startsWith('m=')) {
            isKind = false;
        }

        if (isKind) {
            var match = lines[i].match(codecRegex);
            if (match) {
                allowed.push(parseInt(match[1]));
            }

            match = lines[i].match(rtxRegex);
            if (match && allowed.includes(parseInt(match[2]))) {
                allowed.push(parseInt(match[1]));
            }
        }
    }

    var skipRegex = 'a=(fmtp|rtcp-fb|rtpmap):([0-9]+)';
    var sdp = '';

    isKind = false;
    for (var i = 0; i < lines.length; i++) {
        if (lines[i].startsWith('m=' + kind + ' ')) {
            isKind = true;
        } else if (lines[i].startsWith('m=')) {
            isKind = false;
        }

        if (isKind) {
            var skipMatch = lines[i].match(skipRegex);
            if (skipMatch && !allowed.includes(parseInt(skipMatch[2]))) {
                continue;
            } else if (lines[i].match(videoRegex)) {
                sdp += lines[i].replace(videoRegex, '$1 ' + allowed.join(' ')) + '\n';
            } else {
                sdp += lines[i] + '\n';
            }
        } else {
            sdp += lines[i] + '\n';
        }
    }

    return sdp;
}

function escapeRegExp(string) {
    return string.replace(/[.*+?^${}()|[\]\\]/g, '\\$&'); // $& means the whole matched string
}

enumerateInputDevices();
</script>

</body>
</html>