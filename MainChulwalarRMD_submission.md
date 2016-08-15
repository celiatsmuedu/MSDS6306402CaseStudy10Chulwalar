# MainChulwalarRMD - Chulwalar Exports MSDS6306402 - Case Study 10 
Celia Taylor  
August 15, 2016  
















#
#
#####The Prime Minister of Chulwalar needs to know what the export data tells us about the economy of Chulwalar.
#####The Prime Minister needs to know what the best model for the Export Data is.
#####The exports are the plants, Efak, Wuge, Blue Etel, and Red Etel.
#     
##### The exports are measured in 7 different ways:  
#####     as Total Plan, Total Etel Plan, Year Plan 
#####     and individually (Efak, Wuge, Blue Etel, and Red Etel). 
#
#####The two variables are As Is and Plan Data to test how exact the planning is.
#####A table shows the correlation (a linear relationship between two variables) of AsIs to Plan Data.
#####The results show a a very high planning accuracy.
#####Following the table, there are 3 sets of 6 or 7 plots.
#
#####The first set of 6 plots show time series data decomposed and separated into trend, seasonality, and remainder (remaining coincidental) components from one another.
#####A relatively uniform seasonality is displayed.
#
#####The second set of 6 plots highlights the AsIs time series trend data.  Especially noteworthy is that trend of the total exports is almost linear.  This is the plot with the black, almost straight, diagonal positive slope line.
#
#####The third set of 6 plots series export data show the monthly plots to see how the seasonality breaks down by month.
#
#####The next series of plots is to search for correlation with external indicators.

The indicators are as follows:

* Monthly Change in Export Price Index (CEPI)
* Monthly Satisfaction Index (SI) government based data
* Average monthly temperatures in Chulwalar
* Monthly births in Chulwalar
* Monthly Satisfaction Index (SI) external index 
* Yearly Exports from Urbano
* Yearly number of Globalisation Party members in Chulwalar
* Monthly Average Export Price Index for Chulwalar
* Monthly Producer Price Index (PPI) for Etel in Chulwalar
* National Holidays
* Chulwalar Index (Total value of all companies in Chulwalar)
* Monthly Inflation rate in Chulwalar
*	Proposed spending for National Holidays
* Influence of National Holiday

The indicators will be converted into individual  vectors and subsequently converted into time series. The correlation of the indicators will then be tested against the As Is exports for Chulwalar. 

#####The next series of plots and tables is for forecasting methods.

The forecasting methods are as follows:

* Simple Exponential Smoothing - SES
* Holt's Linear Trend Method
* Holt's Method with Exponential Trend
* Holt's Linear Trend Method Dampened
* Holt's Method with Exponential Trend Dampened
* Holt Winter's Additive Method - Seasonal
* Holt Winter's Multiplicative Method - Seasonal

#####Exponential Smoothing uses past values to calculate a forecast. The strength with which each value influences the forecast is weakened with help of a smoothing parameter. Thus we are dealing with a weighted average, whose values fade out the longer ago they were in the past.

#####The Akaike’s Information Criterion(AIC/AICc) or the Bayesian Information Criterion (BIC) should be at minimum.

#####Additional simple statistics are done for the mean model residuals and the standard deviation for the model residuals.  Both of these should also be at a minimum.
####Remember the residuals are the observed minus predicted.  In theory, the residuals that are smaller would be a better fit.  Looking for the smallest values.





Table: Correlation of AsIs vs. Plan Data.  Values closest to 1 or -1 show the strongest correlation.  Any number between -1 and -0.8 or 0.8 and 1.0 shows very strong correlation.  The 0.96 for YearAsIs correlated to YearPlan is extremely strong and shows a very high planning accuracy.

List_Correlation_AsIs_vs_Plan_Labels        List_Correlation_AsIs_vs_Plan_Values 
------------------------------------------  -------------------------------------
TotalAsIs correlated to TotalPlan           0.918340186363705                    
EfakAsIs correlated to EfakPlan             0.905508106042708                    
WugeAsIs correlated to WugePlan             0.878847355949436                    
TotalEtelAsIs correlated to TotalEtelPlan   0.915950480439083                    
BlueEtelAsIs correlated to BlueEtelPlan     0.804414595702805                    
RedEtelAsIs correlated to RedEtelPlan       0.91067022666908                     
YearAsIs correlated to YearPlan             0.962740116159521                    



![](MainChulwalarRMD_submission_files/figure-html/Analyze1-1.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-2.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-3.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-4.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-5.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-6.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-7.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-8.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-9.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-10.png)<!-- -->

```
##  num [1:72] 97.4 97.8 98.3 98.1 98.7 98.9 99.5 99.2 99.1 98.9 ...
##  num [1:72] -0.4 -2.9 -2.7 1.7 -1.7 -2.6 -7.1 -11.1 -9.4 -13.5 ...
##  num [1:72] 3.6 3.7 4.2 7.6 14.5 16.9 18 17.4 12.4 9.1 ...
##  num [1:72] 58519 53370 52852 55048 57398 ...
##  num [1:72] 4.5 4.5 4.6 4.6 5 4.3 3.4 1.8 1.5 1.7 ...
##  num [1:72] 5850000 5850000 5850000 5850000 5850000 5850000 5850000 5850000 5850000 5850000 ...
##  num [1:72] 45089 45089 45089 45089 45089 ...
##  num [1:72] 99 99.3 99.5 99.2 99.5 ...
##  num [1:72] 100.6 99.7 99.9 99.6 100 ...
##  num [1:72] 0 0 1 0 0 0 0 0 0 0 ...
##  num [1:72] 6852 6748 6535 6949 7097 ...
##  num [1:72] 2.85 2.84 3.15 2.4 3.03 3.24 3.32 3.12 2.8 2.38 ...
##  num [1:72] 221 221 221 221 221 221 221 221 221 221 ...
```

![](MainChulwalarRMD_submission_files/figure-html/Analyze1-11.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-12.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-13.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-14.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-15.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-16.png)<!-- -->![](MainChulwalarRMD_submission_files/figure-html/Analyze1-17.png)<!-- -->





#####WHAT IS THE BEST PLANNING MODEL FOR THE EXPORT DATA?

#####The correlation data shows that the metrics for YearAsIs to YearPlan is the most statistically significant with a value of 0.96.  The other plan values are also statistically significant, but the Prime Minister should know that the first gauge on the economy for planning purposes is the metric YearAsIs to YearPlan.  The other plan values are supporting evidence.  The definition of "Best" is based on the closest value to 1.0.  If the YearAsIs had a value of .90 or .91 like four others, then I would base it on what value was most easily available or look at the collection of all the .90-.91 for answers. 

#####WHAT IS THE BEST EXPORT TO EXTERNAL INDICATOR MODEL?

##### The following table has the top five statistically significant correlations between exports and external indicators.
#
##### These were selected because their values are the ones that most closely approach 1.0.
#

Table: The top five most statistically significant correlations between exports and external indicators.

Most_Statistically_Significant_Correlation_Export_To_External_Indicators       X..i..
-------------------------------------------------------------------------  ----------
Monthly Change in Export Price Index (CEPI)                                 0.9303543
Monthly Satisfaction Index (SI) external index                              0.8358147
Yearly exports from Urbano                                                  0.9163565
Yearly number of Globalisation Party members in Chulwalar                   0.8963942
Monthly Average Export Price Index for Chulwalar                            0.9056624

#####The most statistically significant correlation data for export to external indicator is the Monthly Change in Export Price Index (CEPI) with a value of 0.93.  The next most statistically significant value is the Yearly Exports from Urbano with a value of 0.91.  The Prime Minister should know that that the other external indicators are supporting evidence.  The choice was made based on the closest value to 1.0. 



#####WHICH FORECAST MODEL IS THE BEST? 
#####When comparing the seven different models, the Holt Winters models that take into account the seasonal elements of these plant exports have the best fit.  The AIC, BIC, AICc values are the lowest.
































![](MainChulwalarRMD_submission_files/figure-html/mainAIC_BIC_AICcBARPLOT1-1.png)<!-- -->


Table: All Forecasting Models with AIC, BIC, AICc, Mean Model Residuals, and Standard Deviation of the Model Residuals

Models1                 aic        bic       aicc   MeanModelResiduals   SDModelResiduals
----------------  ---------  ---------  ---------  -------------------  -----------------
SimpleExpSmooth    2230.058   2234.612   2230.232         4.746984e+04       6.119199e+05
HoltLinear         2233.730   2242.837   2234.327        -1.658690e+04       6.121589e+05
HoltMult           2251.010   2260.116   2251.607         2.894630e-02       2.437985e-01
HoltLinearDamp     2235.888   2247.272   2236.797         1.557894e+04       6.128587e+05
HoltMultDamp       2253.216   2264.600   2254.125         3.189010e-02       2.444900e-01
HWSeasAdd          2124.856   2161.283   2134.747         2.161543e+04       2.424057e+05
HWSeasMult         2128.303   2164.729   2138.194         5.129900e-03       8.820940e-02












#
#
#####The Holt Winters Additive model has the lowest AIC, BIC, and AICc values, but the Holt Winters Multiplicative model is very close. The Principle of Occam's Razor indicates that that the simplest models are the best would favor Holt Winters Additive model over Holt Winters Multiplicative model.  However, the Holt Winters Multiplicative model's very statistically significant values of the Mean Model Residuals of 5.3e-03 and Standard Deviation Model Residuals of 8.8e-02 would have me inform the Prime Minister that the Holt Winters Multiplicative model is the first choice.












