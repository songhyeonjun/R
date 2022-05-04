num <- 55

if(num > 50) {
  print('50보다 크다.')
}else {
  print('50보다 작다.')
}

## 3항 연산자
result <- ifelse(num > 50, '크다', '작다')
cat('50보다', result)

2 + 3 # 2항 연산자
# a++ 1연산자(단항 연산자)

#########################

for(x in 1:5){
  print(x)
}
for(x in c(1, 5, 6, 7)){
  print(x)
}

array <- c(100, 300, 555) # index 1~3

for(x in array) {
  print(x)
}

print(array[1])

for(x in 1:3) {
  print(array[x])
}

result2 <- c(array, 455)
print(result2)

result2[4] <- 777
print(result2)

result2[c(1, 3)] <- c(222, 999)
print(result2)

result2[1:2] <- 55:56
print(result2)

result2[5] <- 888
print(result2)

result2 = append(result2, 333, after = 1)
print(result2)



result3 <- c()
values = c(99, 22, 44, 55, 88, 77, 11, 33)
# 각각의 값들이 짝수인지 판별해서 짝수면 'even', 홀수면 'odd'

for (i in values) {
  if(i %% 2 == 0){
   result3 <- c(result3, "even") 
  }
  else {
    result3 <- c(result3, 'add')
  }
}
print(result3)

names3 <- c()
# 입력값 받아서 names3에 누적시켜보기 => 8
print(length(values))
for (x in 1:length(values)) {
  n <- readline("name input>> ")
  names3 <- c(names3, n)
}

print(names3)
print(values)
print(result3)
df <- data.frame(names3, values, result3)

print(df)
print(class(df))
print(class(values))
print(str(df))
str(df)
dim(df)
head(df, 3)
tail(df, 2)
df[1,]
df[1,1]
df[1:2, 1:2]

#행(1,3,5), 열(1,3)
df[c(1,3,5), c(1,3)]

df2 <- subset(df, result3 == 'even')
print(df2)

# df에서 values가 50이상
subset(df, values >= 50)

# df에서 values가 50미만이면서
# result가 even인 것을 찾아서 df3에 저장
df3 <- subset(df, values < 50 & result3 == 'even')
print(df3)

df
df.names3 <- df$names3 ##!!
str(df.names3)
df.names33 <- df['names3']
typeof(df.names33)
str(df.names33)
mode(df.names3)
table(df$names3)

df
df[1,1] <- 'kim'
df

df[6,1] <-'song'
df[7,1] <- 'park'
df[8,1] <- 'kim'

df3 <- table(df$names3)
df3

library(ggplot2)
ggplot(df, aes(x = names3, y = values)) + geom_bin2d()
ggplot(df, aes(x = names3, y = values)) + geom_point()
ggplot(df, aes(x = names3, y = values)) + geom_boxplot()
ggplot(df, aes(x = names3, y = values)) + geom_col()
ggplot(df, aes(x = names3, y = values)) + geom_count()

mean(df$values)
sum(df$values)
max(df$values)
table(df$names3)
median(df$values)

## 5명의 정보를 데이터프레임에 넣어, 
## 그래프로 그려주세요.
## 이름, 나이, 컴퓨터점수, 영어점수
## df에서 추출(각 항목을 추출하여 프린트)
## 이름에 해당하는 나이를 그래프로 그려보세요.
name <- c('aaa', 'bbb', 'ccc', 'ddd', 'eee')
age <- c(11, 22, 33, 44, 55)
com <- c(84, 98, 100, 67, 54)
eng <- c(98, 87, 87, 90, 89)

df <- data.frame(name, age, com, eng)
print(df)

print(subset(df, name == 'aaa'))
ggplot(df, aes(x = name, y = age)) + geom_col()
ggplot(df, aes(x = name, y = com)) + geom_point()
ggplot(df, aes(x = name, y = eng)) + geom_bin_2d()


str(df$name)
## df에서 추출한 나이의 평균을 구해보세요.
mean(df$age)

## df에서 추출한 영어점수의 최고 점수를 구해보세요.
max(df$eng)



## df의 3번째 행, 3번째 열의 값을 프린트
## df의 1~3행, (2, 4)열 값들을 프린트
df[3,3]
df[1:3, c(2,4)]

## 영어점수가 평균보다  높은 사람들만 새로운 df_new로 저장
df_new <- subset(df, eng > mean(df$eng))
print(df_new)

## ————————————————————————
## 컴퓨터점수와 영어점수를 합해서 total컬럼 생성
total <- c()
total <- df$com + df$eng
print(total)
df['total'] <- c(total)
print(df)

## total이 150점 이상이면 우수, 100점 이상이면 보통, 아니면 미달의
## 값이 들어가는 result컬럼을 추가.
result <- c()
for(i in df$total){
  if(i >= 150) {
    result <- c(result, '우수')
  }else if(i < 150 & i >= 100){
    result <-c(result, '보통')
  }else{
    result <- c(result, '미달')
  }
}
df['result'] <- result
print(df)

## 최종 df의 내용과 행과 열의 개수 프린트
str(df)
dim(df)

## 최종 만들어진 df를 csv(df_csv.csv)로 저장
write.csv(df, 'df.csv', fileEncoding = 'utf-8')

## 저장된 csv를 읽어와서 프린트
df_read = read.csv('df.csv', fileEncoding = 'utf-8')
df_read


hist(df$age, # 그래프 1
     main='age',
     col='orange')

barplot(df$age, 	# 그래프 2
        main='com',
        col=c('red','green','blue'))

barplot(df$eng, 	# 그래프 3
        main='eng',
        col=rainbow(5), 		# 레인보우 팔레트 사용
        legend.text=c('aaa','bbb','ccc', 'ddd', 'eee'),
        horiz=TRUE)

pie(table(df$total), 		# 그래프 4
    main='total',
        col=topo.colors(5), 		# topo 팔레트 사용
        radius=2)


