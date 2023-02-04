Ex1<-read.csv(file = "Ex1.csv",
         header = TRUE, 
         sep = ",",
         fill = TRUE,
         as.is = TRUE)
print(Ex1)
table(Ex1$MA)
table(Ex1$MB)
table(Ex1$MC)
prop.table(table(Ex1$MC))*100
temp1<-subset(Ex1$MA, !(is.na(Ex1$MA)))
prop.table(table(temp1))*100
