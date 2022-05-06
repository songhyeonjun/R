# descriptive.csv 데이터 셋을 대상으로 다음 조건에 맞게
# 빈도분석 및 기술 통계량 분석을 수행

# 조건1) 명목척도 변수인 학교유형(type), 
# 합격여부(pass) 변수에 대해 빈도분석을 수행하고 
# 결과를 막대그래프와 파이차트로 시각화
descriptive <- read.csv("C:/rworkspace/csv/descriptive.csv")

type <- descriptive$type
table(type)
barchart(table(type))
pie(table(type))

pass <- descriptive$pass
table(pass)
barchart(table(pass))
pie(table(pass))

# 조건2) 비율척도 변수인 나이 변수에 대해 
# 요약치(평균, 표준편차)와 비대칭도(왜도와 첨도)
# 통계량을 구하고, 히스토그램 작성하여 
# 비대칭도 통계량 설명
age <- descriptive$age
summary(age)
# > summary(age)
# min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 0.00   48.00   53.00   53.88   60.00   69.00 

skewness(age) # 왼쪽으로 치추친 종모양(>0)
# > skewness(age)
# [1] 0.3804892

kurtosis(age) # 아주 완만한 경사(<3)
# > kurtosis(age)
# [1] 1.866623

hist(age)

# 조건3) 나이 변수에 대한 밀도분포곡선과 
# 정규분포 곡선으로 정규분포 검정
hist(age, freq = F)
lines(density(age), col = 'red')
x <- seq(35, 80, 0.1)
curve(dnorm(x, mean(age), sd(age)), col = 'blue', add = T)
