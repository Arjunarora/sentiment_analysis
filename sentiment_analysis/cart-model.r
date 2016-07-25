tweetsSparse$Negative <- tweets$Negative
set.seed(123)
split <- sample.split(tweetsSparse$Negative, SplitRatio = 0.7)
trainSparse <- subset(tweetsSparse, split==TRUE)
testSparse <- subset(tweetsSparse, split==FALSE)

tweetCart <- rpart(Negative ~ .,data = trainSparse, method = "class")

prp(tweetCart)

#cart model
predictCart = predict(tweetCart, newdata = testSparse,type = "class")
table(testSparse$Negative, predictCart)
(386+31)/(386+7+26+31)#gives accuracy

#baseline model
table(testSparse$Negative)
393/(393+57)#gives accuracy

set.seed(123)
tweetRF <- randomForest(Negative ~ ., data = trainSparse)
predictRF <- predict(tweetRF, newdata = testSparse)
table(testSparse$Negative, predictRF)
(386+40)/(386+0+24+40)#accuracy