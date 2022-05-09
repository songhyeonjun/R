# 빈도수의 차이를 검정하고 싶을 때
# 빈도수를 나타내는 표 : 교차검정표
getwd()
setwd("C:/rworkspace/csv")


one_sample <- read.csv("one_sample.csv")
print(one_sample)

setwd("C:/rworkspace/rproject3")
getwd()
head(one_sample)
tail(one_sample)
summary(one_sample)
length(one_sample) # 컬럼 수, varibles
length(one_sample$no) # 행의 수
table(one_sample$survey)
# 0   1 
# 14 136 
table(one_sample$survey, useNA = 'ifany')
library(prettyR)

freq(one_sample$survey)
# Frequencies for one_sample$survey 
# 1    0   NA
# 136   14    0
# %    90.7  9.3    0 
# %!NA 90.7  9.3 

# 이항분포를 가지는 베루누이 시행 결과인
# 교차분석표를 table(), freq()함수로 구함
# 이항분포는 명목척도(질적데이터)
binom.test(c(136, 14), p=0.8, alternative = 'greater', conf.level = 0.95)
# Exact binomial test
# 
# data:  c(136, 14)
# number of successes = 136, number of trials = 150,
# p-value = 0.0003179
# alternative hypothesis: true probability of success is greater than 0.8
# 95 percent confidence interval:
#   0.8579426 1.0000000
# sample estimates:
#   probability of success 
# 0.9066667 

# p-value는 영가설이 나타날 확률(0.0003179)이 0.05보다 작을
# 확률이므로, 내가 주장한 80%이상의 만족도가 나타날 확률이
# 95%이상 된다라는 것임
# 85~100만족도가 나오면 내가 맞다라는 결론
# => 만족도가 80%이 나왔으므로, 작년보다 만족도가 높고,
# 분만족도가 낮아졌다라고 할 수 있음


# 문제 풀이
print(hdtv)
View(hdtv)
# 기존 구매율이 15%
# 우리의 판매정보의 데이터가 기존 구매율 15%와 차이가 있는지?
# 우리의 판매정보의 데이터가 기존 구매일 15%보다 큰건지?
head(hdtv)
tail(hdtv)
summary(hdtv)
length(hdtv)
length(hdtv$user.id)
table(hdtv$buy)
# 1  2 
# 40 10 
table(hdtv$buy, useNA = 'ifany')

freq(hdtv$buy)
# Frequencies for hdtv$buy 
# 1    2   NA
# 40   10    0
# %      80   20    0 
# %!NA   80   20 

binom.test(c(10, 40), p=0.15) 
# 15%의 구매율이다. 대립가설
# 기존 구매율과 현재 구매율이 15%로 동일하다.
# p-value가 0.05보다 아래로 나와야 한다.
# 영가설은 15%가 아니다. 적거나 크다.
# p-value가 0.05보다 크게 나오면 영가설이 채택

# Exact binomial test
# 
# data:  c(10, 40)
# number of successes = 10, number of trials = 50, 
# p-value = 0.321
# alternative hypothesis: true probability of success is not equal to 0.15
# 95 percent confidence interval:
#   0.1003022 0.3371831
# sample estimates:
#   probability of success 
# 0.2 
# => p-value가 0.05보다 크므로 대립가설은 기각, 영가설이 채택
#    기존 구매율이 15%와 다르다.(크거나 작다.)

binom.test(c(10, 40), p=0.15, alternative = 'greater', conf.level = 0.95)
# ==> 15% 보다는 작다.
# Exact binomial test
# 
# data:  c(10, 40)
# number of successes = 10, number of trials = 50, 
# p-value = 0.2089
# alternative hypothesis: true probability of success is greater than 0.15
# 95 percent confidence interval:
#   0.1127216 1.0000000
# sample estimates:
#   probability of success 
# 0.2 


# 15% 보다는 작다고 했으므로 더 낮은 수치를 찾아보자
binom.test(c(10, 40), p=0.1, alternative = 'greater', conf.level = 0.95)
# Exact binomial test
# 
# data:  c(10, 40)
# number of successes = 10, number of trials = 50, p-value
# = 0.02454
# alternative hypothesis: true probability of success is greater than 0.1
# 95 percent confidence interval:
#   0.1127216 1.0000000
# sample estimates:
#   probability of success 
# 0.2 
# 10% 보다는 크다. 대립가설이 채택

binom.test(c(10, 40), p=0.11, alternative = 'greater', conf.level = 0.95)
# Exact binomial test
# 
# data:  c(10, 40)
# number of successes = 10, number of trials = 50, p-value
# = 0.04345
# alternative hypothesis: true probability of success is greater than 0.11
# 95 percent confidence interval:
#   0.1127216 1.0000000
# sample estimates:
#   probability of success 
# 0.2 
# => 11%보다는 구매율이 크다
# => 현재 구매율은 11% ~ 15% 사이임
# => 현재 구매율이 기존 구매율 15% 보다는 낮다.
# => 이항분포(구매, 비구매)를 따르는 베루누이 시행
#    결과 단인그룹 비율 검정함.(명목 데이터)












