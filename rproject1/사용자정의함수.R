## 내장된 함수
jumsu = c(1, 7, 4, 2, 3, 9)

print(sort(jumsu)) ## 비파괴 함수

print(jumsu)

jumsu.2 = sort(jumsu) #오름차순 정렬
print(jumsu.2)
jumsu.3 = sort(jumsu, decreasing = TRUE) # 내림차순
print(jumsu.3)

str <- paste('굿', '모닝', sep= '')
print(str)
str.2 <- paste('굿', '모닝', '굿', '나잇', sep='')
print(str.2)
str.3 <- paste(1:12, '월', sep='') 
print(str.3)

# 사용자 정의 함수(user-definded) => ppt(409)
mysum <- function(x) {
  result <- x +100
  return(result)
}

sum1 <- mysum(1000)
cat('100울 도헌 결과는', sum1)

# 두 수를 더해서 결과값을 받아오는 함수 정의
# 200, 300 더한 결과값출력(1)
# 5555, 3333 더한 결과값 출력(2)
# 1과 2번을 더해서 다시 출력(3)

mysum2 <- function(x, y) {
  result = x + y
  return(result)
}

sum1 <- mysum2(200, 300)
sum2 <- mysum2(5555, 3333)
sum3 <- mysum2(sum1, sum2)

cat('1 :', sum1, '2 :', sum2, '3 :', sum3)

install.packages('svDialogs')
library(svDialogs) # import 역할

data.1 <- dlgInput('숫자1입력 ')$res
data.2 <- dlgInput('숫자2입력 ')$res
n1 <- as.numeric(data.1)
n2 <- as.numeric(data.2)
print(n1 + n2) # 위에서 만들었던 함수를 적용해서 구해보기
mysum2(n1, n2)

mysum3 <- function(x, y=1000) { #default 값
  result = x + y
  return(result)
}
print(mysum3(555, 666))
print(mysum3(555))

mysum.minus <- function(x, y) {
  s1 <- x + y
  m1 <- x - y
  return(list(s = s1, m = m1))
}

result1 <- mysum.minus(888, 111)
print(result1)

cat('두 수의 더한값은', result1$s)
cat('두 수의 뺀 값은', result1$m)

#class(result1)
# [1] "list"

# 사용자 이름 입력
# 사용자 키 입력
# 사용자 적정 몸무게 구하는 함수를 정의
# 사용자 몸무게 입력
# 적정 몸무게와 사용자 몸무게 비교
# '홍길동의 몸무게는 초과(또는 미달)입니다.



imsi <- function(){
  data.1 <- dlgInput('name')$res
  data.2 <- dlgInput('height')$res
  data.3 <- dlgInput('weight')$res
  name <- as.character(data.1)
  height <- as.numeric(data.2)
  weight <- as.numeric(data.3)
  
  result1 <- (height - 100) * 0.9
  
  if(weight < result1){
    cat(name, '의 몸무게는', weight, '로 미달입니다.')
  }
  else if(weight == result1){
    cat(name, '의 몸무게는', weight, '로 정상입니다.')
  }
  else{
    cat(name, '의 몸무게는', weight, '로 초과입니다.')
  }
}

imsi()
