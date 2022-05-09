# 연속형 데이터 수치 비교 방법
# 비율척도(나이, 몸무게, 키)

korea.com.time <- 5.2

one_sample <- read.csv("C:/rworkspace/csv/one_sample.csv")
View(one_sample)

time <- one_sample$time
print(time)

mean(time, na.rm = T)
# [1] 5.556881

time2 <- na.omit(time) # NA를 포함한 row를 제거
time2

# 1. 정규성 검증
shapiro.test(time2)
# Shapiro-Wilk normality test
# 
# data:  time2
# W = 0.99137, p-value = 0.7242
# => p-value가 0.05이상 나오면 정규분포임
# => 정규분포를 따른다!(평균 => 모수검정(t-test))

# 2. t-test검증
t.test(time2, mu=5.2, alternative = 'two.side', conf.level = 0.95)
# 대립(연구가설) : 
#            A회사의 노트북 사용시간과 한국의 노트북 사용시간은 차이가 있다.
# 귀무(영가설) :
#            A회사의 노트북 사용시간과 한국의 노트북 사용시간은 차이가 없다.

# One Sample t-test
# 
# data:  time2
# t = 3.9461, df = 108, p-value = 0.0001417
# alternative hypothesis: true mean is not equal to 5.2
# 95 percent confidence interval:
#   5.377613 5.736148  ==> 구간 추정
# sample estimates:
#   mean of x 
# 5.556881  ==> 점추정

# => 대립가설 채택, 귀무가설 기각
# => A회사의 노트북 사용시간과 한국의 노트북 사용시간은 차이가 있다.

# 한국의 노트북 평균 사용시간보다 A회사의 노트북 평균 사용시간이 더 큰가?
# t-test검증해보기
t.test(time2, mu = 5.2, alternative = 'greater', conf.level = 0.95)
# One Sample t-test
# 
# data:  time2
# t = 3.9461, df = 108, p-value = 7.083e-05
# alternative hypothesis: true mean is greater than 5.2
# 95 percent confidence interval:
#   5.406833      Inf
# sample estimates:
#   mean of x 
# 5.556881
# => 대립가설 채택, 귀무가설 기각
# => A회사의 노트북 사용시간이 한국의 노트북 사용시간보다 크다.