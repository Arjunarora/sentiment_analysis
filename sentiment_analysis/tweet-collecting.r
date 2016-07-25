api_key <- "te4eJxLeHFaM1aVJ0gUrAkUJ4"
api_secret <- "enRZchObOyyfRphlShAQS9iQUeREFxYpSelCbAc9vjYor7DT2W"
access_token <- "4043784380-jWYLgRlBIlk9IWtV4aQhn4DrvGmacXsDL7u37ko"
access_token_secret <- "S9Gkv1CgPqQdLS3mGC4SjCBuPhZgO76K7qatyrzmRzbzh"

setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)


N <- 2000
tweets.list <- searchTwitter("Modi", n=N, resultType = "recent",lang = "en")
tweets.df <- ldply(tweets.list, function(t) t$toDataFrame())

write.csv(tweets.df, file="collected_tweets.csv")
