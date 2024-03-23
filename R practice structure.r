a <- 1:4
typeof(a) #구조체 데이터 타입 확인

#list 만들기
a <- list(name="Fred", age=43, wife="Mary", no.children= 3,
        child.ages=c(4, 7, 9), is.house.owner=T)
print(a)

#리스트 만들기 cbind vs data.frame vs list
var1 <- 1:3
var2 <- 4:6
print(cbind(var1, var2))
print(data.frame(var1,var2))
print(list(var1=var1,var2=var2)) #list는 이름부여 필요

#리스트 요소 지정
print(a$wife)

