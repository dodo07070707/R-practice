#R 배우기 사이트 : https://kilhwan.github.io/rprogramming/ch-R-Data-Basic.html#%EB%8B%A8%EC%88%9C%ED%95%9C-%EB%8D%B0%EC%9D%B4%ED%84%B0-%ED%98%95%EC%8B%9D-data-types

summary(cars) #cars라는 데이터 셋 가져오기
lm.cars <- lm(dist~speed, data=cars) # 속력과 제동거리의 상관관계를 보기 위한 산점도
lm.cars # 산점도 그리기
plot(dist~speed, cars) # 선형회귀분석 수행
abline(lm.cars, col = "blue") # 회귀적합선 그리기, 색 설정

x <- -4:8 #-4~8의 1씩 늘어나는 정수로 이루어진 벡터 할당
y <- 7:0
print(x)
print(c(x,y)) # x벡터 y벡터 연결한 벡터 출력
z <- seq(length=10, from = -3, by = 0.5) #등차수열 공차 설정
print(z)
print(seq(along=z)) # along함수 : 1부터 index 부여
print(rep(z, times=2)) # 2번 반복
print(rep(z, each=2)) # 2번씩 반복
print("\n")
print(seq(along=z) + z) # 벡터끼리 연산, 길이가 다르면 짧은 것이 반복되어 재사용