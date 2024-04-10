#txt파일 불러오기
data <- read.table("courses2/scores.txt", header=TRUE, fileEncoding="UTF-8") #불러오기 기본
data <-  read.table("courses2/scores_rn.txt", header=TRUE, fileEncoding="UTF-8") #불러오기, 행 이름이 있을경우
data <- read.table("courses2/scores_no_header.txt", header=FALSE, fileEncoding="UTF-8") #불러오기, 행 이름이 없을경우
#data.new <- edit(data)
#print(data.new)

#csv 파일 불러오기
sr <- read.csv(file="courses2/csvdataset.csv",fileEncoding="UTF-8") #불러오기 기본
#print(head(sr))

#파일 쓰기
sr$Avg <- (sr$Males + sr$Females) / 2
print(head(sr))
write.csv(sr,file="courses2/sr.csv",row.names=F,fileEncoding="UTF-8") #row.names로 행번호 저장유뮤 결정