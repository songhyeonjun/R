# 교육방법에 따라 시험성적에 차이가 있는지 검정하시오
# 힌트 두 집단 평균 차이 검정
# 조건1) 파일 : twomenthod.csv
# 조건2) 변수 : method(교육방법), score(시험성적)
# 조건3) 모델 : 교육방법(명목) -> 시험성적(비율)
# 조건4) 전처리 : 결측치 제거

# 1단계 : 실습파일 가져오기
twomethod <- read.csv("C:/rworkspace/csv/twomethod.csv")
View(twomethod)

# 2단계 : 두 집단 subset 작성(데이터 정제, 전처리)
# 데이터 전처리(score의 NA 처리)
result <- subset(twomethod, !is.na(score), c(method, score))
result
length(result$score)

# 3단계 : 데이터 분리
# 1) 교육방법별로 분리
a <- subset(result, method == 1)
b <- subset(result, method == 2)

# 2) 교육방법에서 점수 추출
a1 <- a$score
b2 <- b$score
length(a1)
length(b2)

# 4단계 : 분포모양 검정
var.test(a1, b2)
# F test to compare two variances
# 
# data:  a1 and b2
# F = 1.0648, num df = 21, denom df = 34, p-value = 0.8494
# alternative hypothesis: true ratio of variances is not equal to 1
# 95 percent confidence interval:
#   0.502791 2.427170
# sample estimates:
#   ratio of variances 
# 1.06479 
# => p-value 값이 0.05보다 크므로 정규 분포이다. t.test 사용

# 5단계 : 가설검정
t.test(a1, b2)
# Welch Two Sample t-test
# 
# data:  a1 and b2
# t = -5.6056, df = 43.705, p-value = 1.303e-06
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   -17.429294  -8.209667
# sample estimates:
#   mean of x mean of y 
# 16.40909  29.22857 

t.test(a1, b2, alternative = 'two.side', conf.level = 0.95)
# Welch Two Sample t-test
# 
# data:  a1 and b2
# t = -5.6056, df = 43.705, p-value = 1.303e-06
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   -17.429294  -8.209667
# sample estimates:
#   mean of x mean of y 
# 16.40909  29.22857 