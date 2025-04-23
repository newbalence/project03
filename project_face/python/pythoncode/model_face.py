import cv2
import numpy as np
import matplotlib.pyplot as plt
from deepface import DeepFace# 이미지 저장 경로
img_path = './test/images.jpg'# 이미지 읽기
img = cv2.imread(img_path)# 이미지 확인

#이미지 불러와 얼굴 영역만 잘라서 2 사진 비교하기
# 첫 번째 이미지 불러오기
img1_path = './test/u.jpg'
img1 = cv2.imread(img1_path)
# 두 번째 이미지 불러오기
img2_path = './test/uNot.jpg'
img2 = cv2.imread(img2_path)
# 얼굴 검증
result = DeepFace.verify(img1_path=img1_path,
                         img2_path=img2_path,
                         detector_backend='retinaface',
                         model_name='ArcFace')
#가장 성능이 좋은 모델 detector_backend='retinaface', model_name='ArcFace'
#성능이 좋으면서 속도가 느리지 않은 모델 detector_backend='dlib', model_name='Facenet'

# 결과 확인
distance = result['distance']
#거리
threshold = result['threshold']
#임계치
verified = result['verified']
#동일인 여부

#임계치보다 거리가 가까우면 동일인으로 판단
#임계치보다 거리가 멀면 두사람이 다른인물로 판단

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