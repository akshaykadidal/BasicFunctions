# BasicFunctions

## skew_function
This is a function that introduces skew to any type of distribution. This may comein handy you are performing simulations.
The skew function takes a numeric vector (a1). 
A point about which the distribution is skewed (skewcenter). skewcenter is defaulted to mode. you can chose "mean" or any other number about which the distribution will be skewed.
And the amount by which the distibution mean changes because of the skew (meanshift). meanshift can be positive or negative number.


```example:
a1 <- (rnorm(100000,50,20))
x <- intorduce_Skew(a1, skewcenter ="mode", meanshift= 10) # the mean of distribution is approximately 10 units more than a1
x1 <- intorduce_Skew(a1, skewcenter = 22, meanshift= 10) # the mean of distribution is approximately 10 units more than a1
```
## Send mail.
use sening mails.R script to send mails from your r-shiny application using a google email account.


## Bulk import neo4j.
use the sample files to bulk upload to neo4j. for more detailed instructions you can follow along this vedio or this blog.
use this snippet in the neo4j terminal
```example:
bin\neo4j-admin import --mode=csv --nodes:User=import\id.csv --relationships:FOLLOWS=import\relations.csv --ignore-missing-nodes=true --multiline-fields=true
```
