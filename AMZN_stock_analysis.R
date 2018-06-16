
library(quantmod)
library(plotly)
library(dplyr)

#get dataset
#in this case, stock records for AMZN
data <- getSymbols("AMZN", 
                   src = "yahoo", 
                   from = start, 
                   to = end, 
                   auto.assign = F)

start <- as.Date("1997-05-15")
end <- as.Date("2018-06-01")

#Convert data to dataframe
df <- as.data.frame(data)

#make a basic line plot of the closing prices and save the graph
png(filename="regPlot.png")
plot(df[,"AMZN.Close"], main = "AMZN")
dev.off()

#make a basic candlestick plot
png(filename="candleStickPlot.png")
candleChart(df, 
            up.col = "green", 
            dn.col = "red",
            theme = "white")
dev.off()


#return highest closing value
max(df.Open, na.rm=TRUE)








