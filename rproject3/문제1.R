# 우리나라 전체 중학교 2학년 여학생 평균 키가 148.5cm로 알려져 있는 상태에서
# A중학교 2학년 전체 500명을 대상으로 10%인 50명을 표본으로 선정하여 
# 표본평균싱장을 계산하고 모집단의 평균과 차이가 있는지를 각 단계별로
# 분석을 수행하여 검정하시오

# 1단계 : 데이터셋 가져오기
student_height <- read.csv("C:/rworkspace/csv/student_height.csv")
View(student_height)

height <- student_height$height
head(height)

# 2단계 : 기술 통계량 / 결측치 확인
length(height) 
# 50
summary(height)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 140.0   147.0   150.0   149.4   151.0   165.0 
x1 <- na.omit(height)
mean(x1)
# 평균신장 :  149.4
hist(x1)

# 3단계 : 정규성 검정
shapiro.test(x1)
# W = 0.88711, p-value = 0.0001853
# p-value가 0.05보다 작으므로 정규분포가 아닌 것으로 판단한다.
# 정규분포(모수검정) - t.test()
# 비정규분포(비모수검정) - wilcox.test()


# 4단계 : 가설검정 - 양측검정
wilcox.test(x1, mu = 148.5)
# Wilcoxon signed rank test with continuity correction
# 
# data:  x1
# V = 826, p-value = 0.067
# alternative hypothesis: true location is not equal to 148.5
wilcox.test(x1, mu = 148.5, alternative = 'two.side', conf.level = 0.95)
# Wilcoxon signed rank test with continuity correction
# 
# data:  x1
# V = 826, p-value = 0.067
# alternative hypothesis: true location is not equal to 148.5
# 대립가설 : 차이가 있다. <--> 영가설 : 차이가 없다.
# 대립가설 기각, 영가설이 채택(차이가 없다.)
