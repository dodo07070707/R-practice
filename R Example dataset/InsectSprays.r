head(InsectSprays)
print(InsectSprays)
print(InsectSprays$spray)
boxplot(count ~ spray, data=InsectSprays)
boxplot(count ~ reorder(spray, count, median), data=InsectSprays) #count 중위수 순으로 정렬