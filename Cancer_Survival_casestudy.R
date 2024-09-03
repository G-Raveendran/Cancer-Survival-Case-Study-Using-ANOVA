# CANCER SURVIVAL CASE STUDY
#Compare the means of the survival rates for various cancers using ANOVA,
#with inference on which form of cancer has (statistically) significantly higher survival rates. 
#Reference:
#Cameron, E. and Pauling, L. (1978) Supplemental ascorbate in the supportive treatment of cancer: re-evaluation of prolongation of survival times in terminal human cancer. In Proceedings of the National Academy of Science USA, 75, 4538-4542.

#Exploratory data analysis in R
#Read data with 'read.table' R command for reading ASCII files.

cancer_data<- read.table("CancerStudy-2.txt",header=TRUE)
str(cancer_data)

# response variable
survival <- cancer_data$Survival
# Explore the shape of the distribution of the response variable
hist(survival, xlab="", ylab="Number of Survival Days",main = "",nclass = 15)

#Transform due to skewness of the distribution
hist(log(survival),xlab = "",ylab="Number of survival days",main = "",nclass = 15)

#######ANOVA IN R ###############
# need to specify the response anthe categorical variables
survival<- log(survival)
survival
cancertype<- cancer_data$Organ
# convert intothe categorical variable
cancertype = as.factor(cancertype)
boxplot(survival~cancertype, xlab="Cancer Type", ylab="Log(Number of survival days)")

#Within-variability – some groups have higher variability than others
#Between-variability – there is some variability between the means of the five groups
#Is the between-variability significantly larger than the within-variability?
model = aov(survival~cancertype)
summary(model)
# obtain estimated means 
model.tables(model,type='means')
#Since we reject the null hypothesis of equal means, we can ask the next question, which means are statistically significantly different?
# Which means are statistically significantly different? Pairwise Comparison  
TukeyHSD(model)
#Statistically significant:
#〖〖log (𝜇 ̂〗_𝐵𝑟𝑜𝑛𝑐ℎ𝑢𝑠)− log (𝜇 ̂〗_𝐵𝑟𝑒𝑎𝑠𝑡)            
#〖〖log (𝜇 ̂〗_𝑆𝑡𝑜𝑚𝑎𝑐ℎ)− log (𝜇 ̂〗_𝐵𝑟𝑒𝑎𝑠𝑡)       

#### Residual analysis in R
par(mfrow=c(2,2))
qqnorm(residuals(model))
qqline(residuals(model))
hist(residuals(model),main="Histogram of residuals",xlab="Residuals")
plot(residuals(model),xlab = "order",ylab="Residuals")
abline(0,0,lty=1,col="red")
plot(fitted(model),residuals(model),xlab = "Fitted values",ylab = "Residuals")
abline(0,0,lty=1,col="red")
#The quantiles align on the line and the histogram is approx. symmetric thus normality assumption holds
#Residuals are scattered around zero line with no pattern thus both the constant variance and uncorrelated errors hold
###############CANCER SURVIVAL FINDINGS#############
#There is strong evidence for the difference in the survival time across the five different types of cancer;

#Survival time: Breast cancer vs. Bronchus or Stomach cancer. 
#Using ANOVA, compared the survival rates for various cancers, identifying breast cancer to  higher rates than others. 
