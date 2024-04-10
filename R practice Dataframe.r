name <- c("김철수", "김영희", "이철수", "이영희", "홍길동")
grade <- c(1, 4, 3, 2, 1)
gender <- c(" M", "F", "M", "F", "M")
student <- data.frame(name, grade, gender)
midterm = c(74, 82, 67, 89, 92)
final = c(91, 77, 88, 78, 86)
scores = cbind(midterm, final) #column bind
rt <- c(TRUE, FALSE, FALSE, TRUE, FALSE)
students <- data.frame(student, scores, retake = rt)
a <- data.frame(name="Jane Eyre", grade=4, gender="F", midterm=90, final=85, retake=F)
students <- rbind(students,a)
#print(students$gender)
#print(students[[5]]) 요소 호출 방법, 이때 저 선형구조는 vector다
#print(sum(students[[5]])) 따라서 이렇게 사용 가능
students$hw <- c(8, 9, 7, 8, 10, 10) #rbind없이 이렇게 추가 가능
students.new <- students[1:3] #세로분리
students.new <- students[c("gender","grade")]
#print(students.new)
#print(students[students$midterm >= 80, c("name", "grade", "gender")]) 조건설정
#print(students[order(students$final, decreasing = TRUE)]) 정렬방법
#print(students[order(students$grade, students$final, decreasing=T)])

