#01. MASS 패키지에 있는 Animals 데이터 셋을 이용하여
# 각 단계에 맞게 기술 통계량을 구하시오

# 단계1 : MASS 패키지 설치 및 메모리 로딩
install.packages("MASS")
library(MASS) # 패키지 불러오기기
data(Animals) # 데이터 셋 로딩
head(Animals) # 데이터 셋 보기

# 단계 2. R의 기본 함수를 이용하여 brain 컬럼을 
# 대상으로 다음 통계량 구하기

dim(Animals)
length(Animals) # 열의 길이
length(Animals$body) # row 길이

# 전체 구조를 정리
# 행/열의 개수
# 열이름, 타입, 각 값들의 목록
str(Animals)
str(Animals$body)

# 최소, 최대, 평균, 분산, 4분위 수
summary(Animals)

# 정규성 체크
# 왜도, 첨도를 이용
skewness(Animals) # 왼쪽으로 치우친 종모양(>0)

kurtosis(Animals) # 뾰족한 경사

# > skewness(Animals)
# body    brain 
# 4.760097 3.153176 
# > kurtosis(Animals)
# body    brain 
# 24.38512 11.63053 

# 빈도와 비율
freq(Animals$body)
freq(Animals$brain)

# 단계 3 : 패키지에서 제공되는 describe()과 freq() 
# 함수를 이용하여 Animals 데이터 셋 전체 대상으로
# 기술 통계량 구하기
describe(Animals)
freq(Animals)
