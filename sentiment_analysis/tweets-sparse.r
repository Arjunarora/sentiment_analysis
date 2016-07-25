frequencies <- DocumentTermMatrix(corpus)
frequencies
inspect(frequencies[1000:1005, 505:515])
findFreqTerms(frequencies, lowfreq = 20)
sparse <- removeSparseTerms(frequencies, 0.995)
sparse
tweetsSparse <- as.data.frame(as.matrix(sparse))
colnames(tweetsSparse) <- make.names(colnames(tweetsSparse))

