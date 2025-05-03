import numpy as np
from clas.faceCheck import faceCheck 
from clas.pgvector_use import UseDatabases
from clas.useGPU import tfg

def signup(frame, phone):
    #GPU사용 클래스
    # gpu = tfg()
    #Face 벡터화
    faces = faceCheck()
    #Face VectorData PostgreSQL Query
    pgv = UseDatabases()
    #phone 값을 받아오면 그거를 가지고 있다가 insert할때 삽입
    # phone = input("전화번호를 입력하시오 : ")
       
    result = faces.check(frame)
    #얼굴 인식이 되었는지 확인 하여 배열에 True가 있는지 확인
    check = np.array(result).any()

    if check:
        # embedding 하기전에 잘라낸 얼굴이미지 해상도 조절하기
        # result를  scaling해서 해상도 올린 후에 embedding 실행한 다음 결과값 확인해보기
        # captureFace = faces.resize(result)
        # 이미지 해상도 조절 과정에서 GPU사용해서 사용한 결과 실행시간이 오래결려 제외
        
        faceing = faces.embeded(result)
        
        if len(faceing) != 0:

            #얼굴값을 암호화 하면 쿼리에서 비교가 불가능하기 때문에 벡터화 된 데이터는 암호화 하지 않음
            #전화번호를 벡터화 함으로 써 보안을 조금 더 챙김
            pg_result = pgv.insertUse(phone, faceing)
            pgv.disconnect()
            #insert or select 가 되면 return 값으로 확인 후 영상 중지

            if pg_result:
                #PgVector Data Check
                return True
                # plt.imshow(captureFace)
                # plt.savefig("image.png")
                # plt.show()