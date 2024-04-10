mpgfilter1 <- filter(mpg, manufacturer=="hyundai") #행 선택 조건
mpgfilter2 <- filter(mpg, cty >= 28)
mpgfilter3 <- filter(mpg, manufacturer=="hyundai", cty >= 20) #행 선택 조건 여러개
mpgfilter4 <- filter(mpg, (model=="sonata" | cty>=28) & year==2008) #복합연산자 활용
mpgfilter5 <- filter(mpg, year==2008, hwy >= 28, model %in% c("sonata","corolla","jetta")) #여러개 중 하나 선택 시 %in%사용
mpghyundai2008 <- filter(mpg, manufacturer == "hyundai", year == 2008)
mpgfilter6 <- slice(mpghyundai2008, 1:3, 6:7) #1~3행 + 6~7행
mpgfilter7 <- slice(mpghyundai2008, -1, -(4:6)) #1행, 4~6행 제외
sampledata1 <- slice(mpg, n=3) #3개 셈플 추출
sampledata2 <- slice(mpg, prop=0.8) #80% 추출
mindata1 <- slice_min(mpg, cty, n=2) # cty 열의 값이 가장 작은 2 행 추출
mindata2 <- slice_min(mpg, cty, n=2, with_ties = F) # 동률 제외
arrange1 <- arrange(mpghyundai2008, model, trans) #modoel, trans 순서로 정렬
arrange2 <- arrange(mpg, desc(cyl), cty) #역순 정렬
select1 <- select(mpg, model, year, cty, hwy) #변수 이름 나열로 선택
select2 <- select(mpg, model:trans, cty:hwy) #변수 이름 기준 슬라이싱
select3 <- select(mpg, -(model:trans), -manufacturer) #변수 제외
select4 <- select(mpg, model, city=cty, highway=hwy) #select하면서 변수 이름 변경
select5 <- select(mpg, hwy, cty) #select하면서 변수 순서 변경
mutate1 <- mutate(mpg, sum=cty + hwy, mean=(cty + hwy) / 2, ratio= cty / hwy * 100) #변수 만들기
mutate1 <- transmutate(mpg, sum=cty + hwy, mean=(cty + hwy) / 2, ratio= cty / hwy * 100) #변수 만들기, 새거만 남기기
byModel <- group_by(b, model) #같은 모델까리 그룹요약
count1 <- count(mpg, class, sort=TRUE) #class 기준 갯수 + 정렬