
library(quantmod)
library(plotly)
library(dplyr)

#get dataset
#in this case, stock records for AMZN
dataset <- getSymbols("AMZN", src = "yahoo", from = start, to = end)
start <- as.Date("1997-05-15")
end <- as.Date("2018-06-01")

#dataset <- data.frame(dataset)

setwd("~/Users/hernanrazo/RProjects/AMZN_stock_analysis")
getwd()
png(filename="faithful.png")
plot(AMZN[, "AMZN.Close"], main = "AMZN")
dev.off()

