##### Final Project
##### Name: Hanel Vujic
##### Version Number: 2

library(EnvStats)


## Task 1: Load workspace.  No code needed.  Follow directions on the PDF.


## Task 2: Summary Statistics for MedianDebt
	# a) Summary Stats Code and Results

    summary(MedianDebt)
    #RESULT: Min. 1st Qu.  Median    Mean  3rd Qu.  Max. 
    #       5700   14500   17575   17391   20134   27000 
	
	# b) Variance Code and Results

	  var(MedianDebt)
	  #RESULT: 17271065
	
	# c) Standard Deviation Code and Results

  sd(MedianDebt)
  #4155.847
	
	# d) IQR Code and Results
    IQR(MedianDebt)
    #RESULT: 5633.75


	# e) Mean / Median Comparison: 

  #The median is larger than the mean as 17575 > 17391.  

	# f) SD / IQR comparison: 
	
  # THE IQR value is bigger than the sd value as 5633.75 > 4155.847

	
## Task 3: Summary Statistics for SATAverage
	# a) Summary Stats Code and Results

	summary(SATAverage)
	#RESULT: Min. 1st Qu.  Median    Mean  3rd Qu. Max. 
	#        775     973    1034    1054    1110    1504 
	# b) Variance Code and Results
  var(SATAverage)
	#RESULT: 15735.95
	
	# c) Standard Deviation Code and Results
  sd(SATAverage)
  #RESULT: 125.443
	
	# d) IQR Code and Results
  IQR(SATAverage)
  #RESULT: 137

	# e) Mean / Median Comparison: 

  #The mean is a greater value than the median in this case as 1054 > 1034.

	# f) SD / IQR comparison: 

	#The IQR is greater than the SD in this case as 137 > 125.443.
	
	
	


	
## Task 4: Histogram for MedianDebt
	## Remember to save your plot and also submit it to Gradescope.

	# a) Code:

  hist(MedianDebt, breaks = c(0, 5000, 10000, 15000, 20000, 25000, 30000, 35000), ylim = c(0, 140), freq = T)

	# c) Describe histogram: relatively symmetric, skewed, or neither?
  #It is relatively symmetric.


	# c) Describe histogram: unimodal or bimodal or multimodal?
  #It is unimodal.


	
	
	

	
## Task 5: Boxplot for MedianDebt
	## Remember to save your plot and also submit it to Gradescope.

	# a) Code:
  boxplot(MedianDebt, ylim = c(4000, 35000), main = "Boxplot of Median Debt")
	

	# c) Are there outliers present?

	#There is 1 outlier present.	
		
		
		



## Task 6: Shapiro-Wilk Test for MedianDebt using 0.038 as the cutoff
	# a) Code:
    
    shapiro.test(MedianDebt)


	# b) Copy and paste results here

    #  Shapiro-Wilk normality test
    
    # data:  MedianDebt
    # W = 0.99396, p-value = 0.4217

	# c) Do you think that your population is normally distributed?

    #ANSWER: Yes, I think the population is normally distributed.


	# c) Reason:

		#The p-value is 0.4217 which is > than 0.038.
		
	# d) Does your decision here match what you are seeing with your histogram from Task 4? Why or why not?

		#Yes it does as the histogram also appears evenly distributed and it has that sort of bell-curve shape with the peak
    # in the middle.
		
		
		
		

		
## Task 7: Histogram for SATAverage
	## Remember to save your plot and also submit it to Gradescope.

	# a) Code:

  hist(SATAverage, breaks = c(700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1600), freq = TRUE, ylim = c(0, 105))

	# c) Describe histogram: relatively symmetric, skewed, or neither?

  #It seems to be skewed to the right. 

	# c) Describe histogram: unimodal or bimodal or multimodal?
		
		
	#I would still consider it a unimodal histogram.
		
		



## Task 8: Boxplot for SATAverage
	## Remember to save your plot and also submit it to Gradescope.

	# a) Code:

	boxplot(SATAverage, ylim = c(600, 1600), main = "Boxplot of SAT Average")

	# c) Are there outliers present?
		
		#There are multiple outliers present in the box plot.

		
## Task 9: Shapiro-Wilk Test for SATAverage using 0.038 as the cutoff
	# a) Code:

  shapiro.test(SATAverage)

	# b) Copy and paste results here

  #  Shapiro-Wilk normality test
  
  #  data:  SATAverage
  #  W = 0.96875, p-value = 2.93e-05

	# c) Do you think that your population is normally distributed?

  #ANSWER: No I don't think the population is normally distributed.

	# c) Reason:

	#ANSWER: The p-value is 2.93e-05 which is way less than 0.038. 
		
	# d) Does your decision here match what you are seeing with your histogram from Task 7? Why or why not?

		#Yes it does match what I was seeing as the histogram wasn't as evenly distributed as the MedianDebt histogram.
		
		
		
		


## Task 10: Compare average MedianDebt for different Regions. Create a confidence interval, assuming equal variances. (See PDF for CI to create.)

	# a) Code:
  
  t.test(atlantic, mountains, alternative = "two.sided", var.equal = TRUE, conf.level = 0.976)



	# b) Copy and paste results here
  
  # data:  atlantic and mountains
  # t = 5.7207, df = 54, p-value = 4.763e-07
  # alternative hypothesis: true difference in means is not equal to 0
  # 97.6 percent confidence interval:
  #  4277.154 10123.888
  # sample estimates:
  #  mean of x mean of y 
  # 20141.29  12940.77 



	# c) State the parameter the confidence interval is for.

  #ANSWERS: It is for the difference of population means u.
		
	# d) Write down the confidence interval.
  
  #NOTE: d = atlatnic - mountain
  
  # 4277.154 < ud < 10123.888
  # (4277.154, 10123.888)

	# e) Write an interpretation of your confidence interval.

  #ANSWER:  We are 97.6% confident the difference of population average median debt between the two regions is between
  # 4277.154 and 10123.888.

	# f) We are interested in whether there is evidence that there is specific value difference between the two groups. (See PDF for more specifics.)
		# Does this value seem plausible (like it could happen)?
    #ANSWER: The value does not seem plausible.

		# Reason why or why not.

		#The reason is because the interval has all the differences ranging from 4277.154 to 10123.888, and
    #3000 cannot be found within the interval.
		
		
		
		
		
		
## Task 11: Create a confidence interval for the proportion of colleges (variable SAT_Cat) that are a specific one.

	# a) Code to observe how many values exist per group.
		table(college$SAT_Cat) # count by group
		sum(table(college$SAT_Cat)) # total number of observations



	# b) Check the success / failure condition.
		# Code (if needed):

		
		# Expected Number of Successes = 142
		# Expected Number of Failures = 106
		# Can we use the Normal Distribution to approximate this confidence interval?
    # YES WE CAN.

	# c) Code for Confidence Interval:
    prop.test(x = 142, n = 248, alternative = "two.sided", conf.level = 0.941, correct = FALSE)
    
    
	# d) Copy and paste results here

    #1-sample proportions test without continuity correction
    
    #data:  142 out of 248, null probability 0.5
    #X-squared = 5.2258, df = 1, p-value = 0.02225
    #alternative hypothesis: true p is not equal to 0.5
    #94.1 percent confidence interval:
     # 0.5126496 0.6304544
    #sample estimates:
     # p 
    #0.5725806 
	
	# e) State the parameter the confidence interval is for.
    # p

	
	# f) Write down the confidence interval.

  # (0.5126496, 0.6304544)






## Task 12: Create a confidence interval for the variance of MedianDebt. (See PDF for CI to create.)

	# a) Code:
    
    varTest(MedianDebt, alternative = "two.sided", conf.level = 0.933)
	
	# b) Copy and paste results here

    #Results of Hypothesis Test
    --------------------------
      
    #Null Hypothesis:                 variance = 1
    
    #Alternative Hypothesis:          True variance is not equal to 1
    
    #Test Name:                       Chi-Squared Test on Variance
    
    #Estimated Parameter(s):          variance = 17271065
    
    #Data:                            MedianDebt
    
    #Test Statistic:                  Chi-Squared = 4265952994
    
    #Test Statistic Parameter:        df = 247
    
    #P-value:                         0
    
    #93.3% Confidence Interval:       LCL = 14748486
    #                                 UCL = 20520089
	
	# c) State the parameter the confidence interval is for.
  # σ^2

	
	# d) Write down the confidence interval.
  #         (14748486, 20520089)


	# e) What assumption did we need to make to construct this confidence interval?
  # (ANSWER) We had to assume the data is normally distributed.


	# e) Do you think that this assumption was met? You should reference an earlier Task from this project to answer this question.
    # (ANSWER) Yes that assumption was met, because back in Task 6 we did the Shapiro-Wilk Test on MedianDebt
    # and our p-value we got from the test was greater than 0.038, the boundary we used to determine
    # whether our population would be normal or not.

	
	
	
	

	
## Task 13: Hypothesis Test for SATAverage
	# a) Do you know sigma^2 (the population variance) or not?
  # (ANSWER): No, we do not.



	# a) Name the distribution you should use when performing this test.

  # (ANSWER): T-distribution


	# b) What conditions must you satisfy to perform this test? Do you think they are met?  Why or why not?

  #(ANSWER): We must have the original data set, and the population variance and SD is unknown.
  # They are met as we do not have this info but we do have a data set to work with.
    # We have a large dataset/sample size

	# c) State the hypotheses:
		#H0: µ = 1037
		#H1: µ > 1037
	
	
	# d) Code:
    
	   t.test(SATAverage, mu = 1037, alternative = "greater")
	
	# e) Copy and paste results here

	
    #One Sample t-test
    
    #data:  SATAverage
    #t = 2.1352, df = 247, p-value = 0.01687
    #alternative hypothesis: true mean is greater than 1037
    #95 percent confidence interval:
    #  1040.856      Inf
    #sample estimates:
    #  mean of x 
    #1054.008 
    
	
	# f) State the Test Statistic Value:
    
    #(ANSWER): 2.1352
	

	# g) State the P-Value:
    
    #p-value =  0.01687

	
	# h) Decision from P-Value (see PDF for significance level):
    
    #(ANSWER) P > 0.011

	
	# i) Conclusion from P-Value:
  
    #Since it's greater than the significance level, we fail to reject the null hypothesis.
	
	# j) State the critical value. Provide your code and results.

    qt(0.011, 247, lower.tail = F)
    #2.304935
			
	# j) State the critical region.

    #Reject H0 if t > 2.304935
    
	# k) Decision from Critical Region:
  
  #We fail to reject the null hypothesis.

	# k) Did you make the same decision based on the critical region that you did with your p-value?

  # Yes, I did end up making the same decision based on the critical region as I did with my p-value.
    # This is due to the test statistic value not being in the range of the critical range.





