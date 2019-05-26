args <- commandArgs(TRUE)
N <- args[1]
print(N)
library(rtweet)
key='lchjmA5XFkvcvXkiWr8aiNx0z'
secret='AJtSwfqjeLYDdlZG3g1d9qjiYh9Tz9fxTZVyMxZxDnMQdTDq11'
access_token='2892292632-WiAT271zbCfAEKv4lys1kFvcCXFcH25EbH1LjsP'
access_secret='bBGasbirbvD8nqhHExKK3sEdPZnTUF9bGKB9FKTOnPTKA'
twitter_token <- create_token(consumer_key = key,consumer_secret = secret,access_token = access_token,access_secret = access_secret)
identical(twitter_token, get_token())
trends<-get_trends(N)
print(trends['trend'])
print(trends['url'])

