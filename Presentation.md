Prediction of tooth lenght growth in Guinea Pigs after Vitamin C subministration
========================================================
author: Issepela
date: 10/23/2015


Overview
========================================================
<font size="6"> 
- One of the classical dataframe in R is **ToothGrowth**.
The data refers to the response is the length of odontoblasts (teeth) in guinea pigs at each of three dose levels of Vitamin C (0.5, 1, and 2 mg) with each of two delivery methods (orange juice -OJ or ascorbic acid -VC).
- The boxplot suggests that increasing the dose brings to longer teeth in guinea pigs. Only at smaller doses there is a difference between the delivey methods.
</font>
![plot of chunk unnamed-chunk-1](Presentation-figure/unnamed-chunk-1-1.png) 

Web App
========================================================
<font size="6"> 
- As assignemnt for the **Developing Data Product** Coursera class, a shiny application has been created and published that use the ToothGrowth to tooth lenght with the same delivery methods and ad different dose levels between 0 and 3mg
- A linear model has been fit using all the varibles (dose and delivery methods): the 2 variables are both confirmed by the small Pvalue even if the Rsquare of 0.7 is not particulary good. 
</font><font size="5">

```

Call:
lm(formula = len ~ ., data = ToothGrowth)

Residuals:
    Min      1Q  Median      3Q     Max 
-6.2108 -2.9896 -0.5633  2.2842  9.1892 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)   5.1683     1.4067   3.674 0.000529 ***
suppVC       -3.7000     0.9947  -3.720 0.000457 ***
dose          7.7475     0.6091  12.719  < 2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 3.852 on 57 degrees of freedom
Multiple R-squared:  0.755,	Adjusted R-squared:  0.7464 
F-statistic: 87.81 on 2 and 57 DF,  p-value: < 2.2e-16
```
</font>

Using the Web App 
========================================================
<font size="6"> 
- The web app can be found at: https://issepela.shinyapps.io/ToothGrowth
- Entering the deivery method and dose (on the right), the predicted tooth lenght will be calculated and shown (on the left) and plotted on the chart as a black circle
</font>
![alt text](snapshot2.png)
Notes
========================================================
<font size="6"> 
- The prediction generated using a linear model with 2 predictors (dose and delivery method), may differ from the 2 regression lines (one per each delivery method) generated using only the dose as predictor. That's why the circle line may not stay on the 2 regrssion lines in the plot
- R presentation and Shiny are handy tools that can be used with small effort to create easy web presentation and applications integrated with R and R studio
- The Project has been documented and can be found in GitHub together with the source code
</font>
