z <- seq(length=10, from = 1, by = 10) #등차수열 공차 설정
summary(cars)
n <- 1:5
n <- n > 3 #비교로 논리 벡터 만들기
print(any(c(F,T,F))) # True가 있는지
print(all(c(T,T,T))) # 모두 True인지
print(any(cars$dist >= 100)) #이런식으로 활용해서 값이 있는지 확인, $는 \와 같은역할
print("-------------------")
print('#논리벡터')
x <- c(T, F, F, T, F)
a <- 1:5
b <- -1:-5
y <- ifelse(x, a, b); #논리 벡터가 true라면 a, 아니라면 b 반환
y <- ifelse(y>0, y, 0) #논리 연산을 활용해 이렇게도 사용가능
print(y)
print("-----------------")
print("문자벡터")
print(as.character(1:3)) # 이런식으로 문자로 변환가능
print(nchar(as.character(8:10))) #문자 갯수 세기 (공백포함)
print("-----------------")
print("결측치")
z <- na.omit(c(11:13,NA,14)) #결측치 제거
z <- mean(c(11:13,NA,14),na.rm=TRUE) #결측치 제거 후 연산시행, mean함수 = 평균
print(z)
print("-----------------")
print("벡터 필터링")
z <- 1:10
print(z[which(z>5)])#5보다 큰 수가 포함된 index만 출력