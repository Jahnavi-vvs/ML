#Time Series
the_final_data<-read.csv(file="G:\\data.csv")
#Import the data the_final_data
the_final_data<-ts(the_final_data)
the_final_data<-data.frame(the_final_data)

#Data exploration
plot(the_final_data$PrPaddy)
library(tseries)
#Stationarity check D-F test
adf.test(the_final_data$PrPaddy, alternative="stationary")
#ACF and PACF plots
acf(the_final_data$PrPaddy)
pacf(the_final_data$PrPaddy)
#Forecasting
require(forecast)
auto.arima(the_final_data$PrPaddy )
forecast(auto.arima(the_final_data$PrPaddy))
plot(forecast(auto.arima(the_final_data$PrPaddy)))
plot(residuals(auto.arima(the_final_data$PrPaddy)))
