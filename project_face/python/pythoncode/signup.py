import cv2
import numpy as np
import matplotlib.pyplot as plt
from deepface import DeepFace# 이미지 저장 경로


capture = cv2.VideoCapture(0)
capture.set(cv2.CAP_PROP_FRAME_WIDTH, 640)
capture.set(cv2.CAP_PROP_FRAME_HEIGHT, 480)

face_cascade = cv2.CascadeClassifier(cv2.data.haarcascades+"haarcascade_frontalface_alt2.xml")
eye_cascade = cv2.CascadeClassifier(cv2.data.haarcascades+"haarcascade_eye_tree_eyeglasses.xml")
nose_cascade = cv2.CascadeClassifier("./project_face/python/data/haarcascade_mcs_nose.xml")
mouth_cascade = cv2.CascadeClassifier("./project_face/python/data/haarcascade_mcs_mouth.xml")


flag = False
while cv2.waitKey(33) < 0:
    try:
        ret, frame = capture.read()
    except Exception as e:
        print(type(e), e.code)

    if not ret:
        #카메라가 인식되지 않으면 멈춘다.
        break

    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    faces = face_cascade.detectMultiScale(gray, 1.1, 10)
    for (x, y, w, h) in faces:
        cv2.rectangle(frame, (x, y), (x + w, y + h), (255, 0, 0), 2)
        roi_gray = gray[y : y + h, x : x + w]
        roi_color = frame[y : y + h, x : x + w]

        eyes = eye_cascade.detectMultiScale(roi_gray, 1.2, 5)
        for (ex, ey, ew, eh) in eyes:
            cv2.rectangle(roi_color, (ex, ey), (ex + ew, ey + eh), (0, 255, 0), 2)
        
            nose = nose_cascade.detectMultiScale(roi_gray, 1.1, 5)
            for (nx, ny, nw, nh) in nose:
                cv2.rectangle(roi_color, (nx, ny), (nx + nw, ny + nh), (0, 0, 255), 2)

                mouth = mouth_cascade.detectMultiScale(roi_gray, 1.8, 15)
                for (mx, my, mw, mh) in mouth:
                    cv2.rectangle(roi_color, (mx, my), (mx + mw, my + mh), (127, 127, 127), 2)

                    if len(faces) == 1:
                        print(faces)
                        print("얼굴인식")
                        if len(eyes) == 2:
                            print(eyes)
                            print("눈 인식")
                            if len(nose) == 1:
                                print(nose)
                                print("코 인식")
                                if len(mouth) == 1:
                                    print(mouth)
                                    print("입 인식")

                                    embedding = DeepFace.represent(img_path=frame, detector_backend='retinaface', model_name='ArcFace')
                                    face = np.array(embedding[0]["embedding"]).tolist()

                                    if len(face) != 0:
                                        flag = not flag
                                        capture.release()
                                        cv2.destroyAllWindows()
                                        print(face)
                                        break
                                    else:
                                        continue
            if flag:
                print("프로그램 종료")
                break
            
   
    cv2.imshow('frame', frame)
capture.release()
cv2.destroyAllWindows()