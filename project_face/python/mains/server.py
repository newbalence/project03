import asyncio
import websockets
import json
import cv2
import numpy as np
from aiortc import RTCPeerConnection, RTCSessionDescription
import sys
sys.path.append(r'C:\Users\MYCMO\git\project_face\project_face\python')
import clas.login as log
import clas.signup as sig
from clas.useGPU import tfg
import ssl

connected_clients = set()

pcs = set()

async def offer_handler(websocket):  # ← path 삭제
    print("클라이언트 연결됨")
    pc = RTCPeerConnection()
    pcs.add(pc)

    track_received = asyncio.Event()

    @pc.on("track")
    def on_track(track):
        if track.kind == "video":
            print("비디오 트랙 수신 완료")
            track_received.set()
            tfg()
            async def run_track():
                try:
                    while True:
                        frame = await track.recv()
                        img = frame.to_ndarray(format="bgr24")
                        # cv2.imshow("Received Video", frame)
                        
                        # print(offer_phone)
                        # phone 들어온거 확인
                        if offer_phone != None:
                            result = sig.signup(phone=offer_phone, frame=img)
                        else:
                             result = log.login(frame=img)
                        # phone, name, nick, birth, userType = result
                        print(f"결과는 : {result}")
                        data = json.dumps({
                            "result" : "fail"
                        })
                        await websocket.send(data)
                        # if cv2.waitKey(1) & 0xFF == ord('q'):
                        #     break
                        if result != None:
                            print("끝")
                            data = json.dumps({
                                "type" : "face",
                                "result" : "success"
                            })
                            await websocket.send(data)
                            break
                    return result
                except Exception as e:
                    print(e)
                finally :
                    cv2.destroyAllWindows()

            asyncio.ensure_future(run_track())

    try:
        offer_json = await asyncio.wait_for(websocket.recv(), timeout=5)
        offer = json.loads(offer_json)
        offer_sdp = offer['sdp']
        offer_type = offer['type']
        offer_phone = offer['phone']
        offer_phone = None
        await pc.setRemoteDescription(RTCSessionDescription(sdp=offer_sdp, type=offer_type))

        print("트랙 수신 대기 중...")
        await track_received.wait()
        print("트랙 수신 완료, Answer 생성")

        answer = await pc.createAnswer()
        await pc.setLocalDescription(answer)

        answer_json = json.dumps({
            'sdp': pc.localDescription.sdp,
            'type': pc.localDescription.type
        })
        await websocket.send(answer_json)

        print("Answer 전송 완료")
        
        await websocket.wait_closed()

    except asyncio.TimeoutError:
        print("5초 안에 Offer를 못 받아서 연결 종료")
    except websockets.exceptions.ConnectionClosedOK:
        print("클라이언트가 정상적으로 연결 종료함")
    except Exception as e:
        print(f"예외 발생: {e}")

    finally:
        print("클라이언트 연결 종료")
        await pc.close()
        pcs.discard(pc)

# async def main():
#     server = await websockets.serve(offer_handler, "0.0.0.0", 8765)
#     print("WebSocket 서버 시작: ws://0.0.0.0:8765")
#     await server.wait_closed()

async def main():
    ssl_context = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
    ssl_context.load_cert_chain(certfile="./project_face/python/mains/cert.pem", keyfile="./project_face/python/mains/key.pem")
    async with websockets.serve(offer_handler, "0.0.0.0", 8765, ssl=ssl_context):
        print("WebSocket Signaling 서버 실행 중 (port: 8765)")
        await asyncio.Future()

if __name__ == "__main__":
    asyncio.run(main())
