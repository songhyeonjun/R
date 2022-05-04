source('사용자정의함수.R')

imsi()

a_person <- 200
b_person <- 100

result5 <- ifelse(a_person > b_person, '우수', '보통') #삼항 연산자
print(result5)
