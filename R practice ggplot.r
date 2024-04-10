print(ggplot() + geom_point(mapping=aes(x=displ, y=hwy, color=class), data=mpg))
print(ggplot() + geom_point(mapping=aes(x=displ, y=hwy, shape=drv), data=mpg))
print(ggplot() + geom_point(mapping=aes(x=cty, y=hwy, size=displ), data=mpg))
print(ggplot() + geom_point(mapping=aes(x=cty, y=hwy ,color=displ), data=mpg))

#print(head(iris))
print(ggplot() + geom_point(mapping=aes(x=Sepal.Length, y=Sepal.Width, shape=Species), data=iris,color="blue"))

print(ggplot() + geom_line(mapping=aes(x=age, y=circumference), data=Orange))
print(ggplot() + geom_line(mapping=aes(x=age, y=circumference, color=Tree), data=Orange)) #이산형 변수 (color, linetype등 이 있으면 자동 grouping)
print(ggplot() + geom_line(mapping=aes(x=age, y=circumference, linetype=Tree), data=Orange))

print(ggplot() + geom_smooth(mapping=aes(x=age, y=circumference, color=Tree), data=Orange))
print(ggplot() + geom_smooth(mapping=aes(x=age, y=circumference, color=Tree), data=Orange, se=F)) #신뢰구간 끄기

