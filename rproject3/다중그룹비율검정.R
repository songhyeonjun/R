two_sample <- read.csv("C:/rworkspace/csv/two_sample.csv")
View(two_sample)
print(two_sample)

length(two_sample$gender)
length(two_sample$method)
length(two_sample$survey)

print(two_sample$score)
table(two_sample$gender)
table(two_sample$method)
table(two_sample$survey)
# 0   1 
# 55 245  -- 만족 245

freq(two_sample$gender)
freq(two_sample$method)
freq(two_sample$survey)
freq(two_sample$score)

# 그룹할 빈도분석표를 그려보기
table(two_sample$method, two_sample$survey, useNA = 'ifany')
# 어느 그룹이 만족도가 더 높았는가?
prop.test(c(110, 135), c(150, 150), alternative = 'greater', conf.level = 0.95)
# 2-sample test for equality of proportions with
# continuity correction
# 
# data:  c(110, 135) out of c(150, 150)
# X-squared = 12.824, df = 1, p-value = 0.9998
# alternative hypothesis: greater
# 95 percent confidence interval:
#   -0.2451007  1.0000000
# sample estimates:
#   prop 1    prop 2 
# 0.7333333 0.9000000 
# => 연구가설 : pt교육이 코딩교육보다 만족도가 높다.
# => 귀무가설 : pt교육이 코딩교육보다 만족도가 낮거나 같다.
# => p-value가 0.9이므로 연구가설 기각, 귀무가설 채택
# => pt교육이 코딩교육보다 만족도가 낮거나 같다.

prop.test(c(110, 135), c(150, 150), alternative = 'less', conf.level = 0.95)
# 2-sample test for equality of proportions with
# continuity correction
# 
# data:  c(110, 135) out of c(150, 150)
# X-squared = 12.824, df = 1, p-value = 0.0001711
# alternative hypothesis: less
# 95 percent confidence interval:
#   -1.00000000 -0.08823265
# sample estimates:
#   prop 1    prop 2 
# 0.7333333 0.9000000 
# => 연구가설 : pt교육이 코딩교육보다 만족도가 적다.
# => 귀무가설 : pt교육이 코딩교육보다 만족도가 높거나 같다.
# p-value가 0.0001이므로 연구가설 채택
# => pt교육이 코딩교육보다 만족도가 적다.

table(two_sample$gender, two_sample$survey, useNA = 'ifany')
# 0   1
# 1  36 138
# 2  19 107

prop.test(c(138, 107), c(174, 126), alternative = 'greater', conf.level = 0.95)
# 2-sample test for equality of proportions with
# continuity correction
# 
# data:  c(138, 107) out of c(174, 126)
# X-squared = 1.1845, df = 1, p-value = 0.8618
# alternative hypothesis: greater
# 95 percent confidence interval:
#   -0.1357535  1.0000000
# sample estimates:
#   prop 1    prop 2 
# 0.7931034 0.8492063 


prop.test(c(138, 107), c(174, 126), alternative = 'less', conf.level = 0.95)
# 2-sample test for equality of proportions with
# continuity correction
# 
# data:  c(138, 107) out of c(174, 126)
# X-squared = 1.1845, df = 1, p-value = 0.1382
# alternative hypothesis: less
# 95 percent confidence interval:
#   -1.00000000  0.02354775
# sample estimates:
#   prop 1    prop 2 
# 0.7931034 0.8492063 
