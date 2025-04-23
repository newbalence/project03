import cv2
from deepface import DeepFace
import matplotlib.pyplot as plt
import numpy as np
from sklearn.metrics.pairwise import cosine_similarity

def faceCheck(face):
    #이미지 불러와 얼굴 영역만 잘라서 2 사진 비교하기
    # 첫 번째 이미지 불러오기
    img1_path = './img0.png'
    img1 = cv2.imread(img1_path)
    # print(img1)
    # print("=" * 50)
    # 두 번째 이미지 불러오기
    img2_path = face
    img2 = cv2.imread(img2_path)
    # print(img2)
    # print("=" * 50)
    # 얼굴 검증
    print("얼굴 검증 진행중")
    result = DeepFace.verify(img1_path=img1_path,
                            img2_path=img2_path,
                            detector_backend='retinaface',
                            model_name='ArcFace')
    print(result)
    
    embedding = DeepFace.represent(img_path=img2,
                               detector_backend='retinaface',
                               model_name='ArcFace')
    print("=" * 50)  
    # 벡터값 확인
    print(embedding)
    #가장 성능이 좋은 모델 detector_backend='retinaface', model_name='ArcFace'
    #성능이 좋으면서 속도가 느리지 않은 모델 detector_backend='dlib', model_name='Facenet'
    # print(result)
    # 결과 확인
    distance = result['distance']
    #거리
    threshold = result['threshold']
    #임계치
    verified = result['verified']
    #동일인 여부

    if verified:
        verified_str = 'Same'
        distance_str =  '(%.2f <= %.2f)' % (distance, threshold)
    else:
        verified_str = 'Different'
        distance_str =  '(%.2f > %.2f)' % (distance, threshold)# 결과 시각화

    fig = plt.figure()
    rows = 1
    cols =2
    ax1 = fig.add_subplot(rows, cols, 1)
    ax1.imshow(cv2.cvtColor(img1, cv2.COLOR_BGR2RGB))
    ax1.set_title(verified_str)
    ax1.axis("off")
    ax2 = fig.add_subplot(rows, cols, 2)
    ax2.imshow(cv2.cvtColor(img2, cv2.COLOR_BGR2RGB))
    ax2.set_title(distance_str)
    ax2.axis("off")
    plt.show()

capture = cv2.VideoCapture(0)
capture.set(cv2.CAP_PROP_FRAME_WIDTH, 640)
capture.set(cv2.CAP_PROP_FRAME_HEIGHT, 480)

face_cascade = cv2.CascadeClassifier(cv2.data.haarcascades+"haarcascade_frontalface_alt2.xml")
eye_cascade = cv2.CascadeClassifier(cv2.data.haarcascades+"haarcascade_eye_tree_eyeglasses.xml")
nose_cascade = cv2.CascadeClassifier("./project03/data/haarcascade_mcs_nose.xml")
mouth_cascade = cv2.CascadeClassifier("./project03/data/haarcascade_mcs_mouth.xml")

count = 0

# img1_path = './img0.png'
# img1 = cv2.imread(img1_path)

# embedding_img1 = DeepFace.represent(img_path=img1,
#                                detector_backend='retinaface',
#                                model_name='ArcFace')
# final_img1 = np.array(embedding_img1[0]["embedding"])

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
            print("얼굴인식")
            if len(eyes) == 2:
                print("눈 인식")
                if len(nose) == 1:
                    print("코 인식")
                    if len(mouth) == 1:
                        print("입 인식")
                        # faceName = f"./project03/face/img{count}.png"
                        # cv2.imwrite(faceName, frame)

                        embedding_img2 = DeepFace.represent(img_path=frame,
                               detector_backend='retinaface',
                               model_name='ArcFace')
                        final_img2 = np.array(embedding_img2[0]["embedding"])

                        final_img1 = np.load("./img0.npy")
                        np.save("img1.npy", final_img2)

                        data = cosine_similarity([final_img2], [final_img1])
                        print(data)

                        capture.release()
                        cv2.destroyAllWindows()
                        
                        # final_img1 = np.array()
                        # distance = np.linalg.norm(final_img1 - final_img2)

                        #print("유클리드 거리:", distance)
                        # if distance < 0.6:
                        #     print("유사")
                        # else:
                        #     print("다름")

    cv2.imshow('frame', frame)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

capture.release()
cv2.destroyAllWindows()


