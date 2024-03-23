n <- 1:10
m <- matrix(n, nrow=2, ncol=5, byrow=T) #세로2 가로5, 순서대로 True
print(cbind(1:5, 10:6)) #c(olumn)bind 세로로 묶기
print(rbind(1:5, 10:6)) #r(ow) bind 가로로 묶기
z<- matrix(1:25, nrow = 5, ncol = 5)
print(z[2, 1:3]) #인덱싱 가능
rownames(z) <- paste("student", 1:5, sep="") #정규화 이용 세로 이름설정
colnames(z) <- c("a", "b", "c", "d","e") #가로 이름 설정
print(z[z>15]) # 차원 1개만 제공 시 차원 무시
#연산시 vector와 같이 연산 가능, but 재사용 안됨
t(z) #행과 열 바꾸기
dim(z) #행과 열 갯수 구하기
z <- as.vector(z) #matrix to vector, 1차원 취급, sum, mean, sd, rnage 적용 가능

#apply(매트릭스, 가로세로, 함수) 1이면 가로, 2면 세로
print(apply(m, 1, sum))

#3차원배열
x <- array(11:28, dim=c(3,3,2)) #3x3배열 두개
#3차원배열 indexing : x[2,1,1] [세로, 가로, 차원]

#4차원배열
x <- array(1:30, dim=c(2,3,2,2)) #3x2배열 2x2개
print(x)

#vector에 차원 속성을 부여하여 배열 만들기
x<-1:12
dim(x)
dim(x) <- c(2,3,2)
dimnames(x) <- list(c("A","B"), paste("group",1:3,sep=""), c("Male","Female"))
print(x)

#수학에서의 행렬의 곱
A <- array(1:4, c(2,2))
B <- array(10^(0:3), c(2,2))
print(A%*%B)

#주대각선행렬
diag(1:4)
diag(3, nrow = 2)

#연립일차방정식과 역행렬 (Ax=b)
A <- matrix(c(2,-2,-3,4), nrow=2, ncol=2)
b <- c(5,-4)
x <- solve(A,b) #해 구하기
print(A%*%x) #역함수(상수항구하기)