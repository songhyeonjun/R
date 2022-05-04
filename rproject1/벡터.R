name.list = c('hong', 'kim', 'song')

print(name.list);

age.list = c(100, 200, 50);

print(age.list);

weight.list = 100:200

print(weight.list)

print(weight.list[0])
print(weight.list[1])
print(weight.list[1:5])
print(weight.list[c(1,3,5)])

# run.list <- 9, 11~15, 25, 30~33
# 전체 index의 시작~끝 번호 확인
# 첫번째 값, 마지막 값의 차이를 구하기
# 평균

run.list <- c(9, 11:15, 25, 30:33)

start <- run.list[1]
end <- run.list[11]
diff <- abs(start - end)


cat('달리기 속도의 차이 :', diff)
cat('달리기 평균 :', mean(run.list))


print(run.list)
print(run.list[c(1, 11)])
print(abs(run.list[1] - run.list[11]))
print(mean(run.list))

#####
term.1 <- c(90, 100, 80, 75)
names(term.1) <- c('국어', '영어', '수학', '컴퓨터')

print(term.1[1])
print(term.1['국어'])

### 수정
## 국어점수 99
## 수학점수 88

term.1[1] <- 99
term.1[3] <- 88
print(term.1[1])

cat('국어점수는', term.1[1], '이고, 수학점수는', term.1[3])

## 영어 컴퓨터를 한꺼번에 수정 100, 77
term.1[c(2,4)] <- c(100, 77)
print(term.1)
