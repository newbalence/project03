import cv2
import cv2.data
import numpy as np
from deepface import DeepFace
from realesrgan import RealESRGANer
import torch
from basicsr.archs.rrdbnet_arch import RRDBNet

class faceCheck():

    def __init__(self):
        self.face_cascade = cv2.CascadeClassifier(cv2.data.haarcascades+"haarcascade_frontalface_alt2.xml")
        self.eye_cascade = cv2.CascadeClassifier(cv2.data.haarcascades+"haarcascade_eye_tree_eyeglasses.xml")
        self.nose_cascade = cv2.CascadeClassifier("./project_face/python/data/haarcascade_mcs_nose.xml")
        self.mouth_cascade = cv2.CascadeClassifier("./project_face/python/data/haarcascade_mcs_mouth.xml")

    def check(self, frame):
        #print("check")
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        faces = self.face_cascade.detectMultiScale(gray, 1.1, 10)
        #print("얼굴 인식중")
        if len(faces) == 1:
            for (x, y, w, h) in faces:
                cv2.rectangle(frame, (x, y), (x + w, y + h), (255, 0, 0), 2)
                roi_gray = gray[y : y + h, x : x + w]
                roi_color = frame[y : y + h, x : x + w]
                
                eyes = self.eye_cascade.detectMultiScale(roi_gray, 1.1, 5)
                if len(eyes) == 2:
                    for (ex, ey, ew, eh) in eyes:
                        cv2.rectangle(roi_color, (ex, ey), (ex + ew, ey + eh), (0, 255, 0), 2)
                        nose = self.nose_cascade.detectMultiScale(roi_gray, 1.3, 5)
                        if len(nose) == 1:
                            for (nx, ny, nw, nh) in nose:
                                cv2.rectangle(roi_color, (nx, ny), (nx + nw, ny + nh), (0, 0, 255), 2)
                                mouth_roi = roi_gray[h//2:, :]
                                mouth = self.mouth_cascade.detectMultiScale(mouth_roi, 1.5, 18)
                                if len(mouth) == 1:
                                    for (mx, my, mw, mh) in mouth:
                                        cv2.rectangle(roi_color, (mx, my), (mx + mw, my + mh), (127, 127, 127), 2)
                                    
                                        return roi_color
        else:
            print("인식되지 않았습니다.")
            return None
                        
    def embeded(self, result):
        try:
            embedding = DeepFace.represent(img_path=result, detector_backend='retinaface', model_name='ArcFace')
        except Exception as e:
            print(e)
        faceing = np.array(embedding[0]["embedding"]).tolist()
        return faceing
        
    def resize(self, result):
        model_path = "./project_face/python/data/RealESRGAN_x2plus.pth"
        model = RRDBNet(num_in_ch=3, num_out_ch=3, num_feat=64, num_block=23, num_grow_ch=32, scale=2)
        upsampler = RealESRGANer(
            scale=2,
            model_path=model_path,
            model=model,
            tile=0,
            tile_pad=10,
            pre_pad=0,
            half=True
        )
        
        img_np = np.array(result)
        # 화질 향상
        captureFace, _ = upsampler.enhance(img_np, outscale=2)
        return captureFace
    