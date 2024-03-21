summary(cars) #cars라는 데이터 셋 가져오기
lm.cars <- lm(dist~speed, data=cars) # 속력과 제동거리의 상관관계를 보기 위한 산점도
lm.cars # 산점도 그리기
plot(dist~speed, cars) # 선형회귀분석 수행
abline(lm.cars, col = "blue") # 선 그리기, 색 설정