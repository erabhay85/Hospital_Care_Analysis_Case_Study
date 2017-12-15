
data <- read.csv("C:/Python27/Fall_Data11.csv",header = TRUE,sep = ",")
View(data)

##data$majorinjury =ifelse(data$InJuryLevel_Key==3,1,0)
str(data)
summary(data)

CTDF$random <- runif(nrow(CTDF), 0, 1);
CTDF <- CTDF[order(CTDF$random),]
CTDF.dev <- CTDF[which(CTDF$random <= 0.7),]
CTDF.val <- CTDF[which(CTDF$random > 0.7),]
c(nrow(CTDF.dev), nrow(CTDF.val))
install.packages("randomForest")
library(randomForest)
RF <- randomForest(as.factor(Major_Inc) ~ ., data = data, ntree=400, mtry = 3, nodesize = 30,importance=TRUE)
print(RF)
plot(RF, main="")

a <- c("a","b","c","d","e")
b<- c(-1,-3)
a[b]
