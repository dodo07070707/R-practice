results <- c(1,3,2,4,3,2,1,5,3,2,2) #리스트 만들기
fResults <- factor(results, levels = 1:4) #리스트 범주 설정
attributes(fResults)

#순서형 변수

satisfaction <- c("매우 불만", "매우 만족", "불만", "만족", "보통", "불만", "매우 불만", "보통", "매우 만족", "불만")
fSatisfaction <- factor(satisfaction, levels=c("매우 불만", "불만", "보통", "만족", "매우 만족"))
osatisfaction <- factor(satisfaction, ordered=TRUE, levels=c("매우 불만", "불만", "보통", "만족", "매우 만족")) #level 순서 부여
#reosatisfaction <- relevel(osatisfaction, ref="보통") : unordered에서만 가능
print(osatisfaction)
print(sum(osatisfaction >= "보통"))
print(table(osatisfaction)) # 표형식 출력
boxplot(osatisfaction)