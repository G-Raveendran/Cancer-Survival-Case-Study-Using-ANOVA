# Cancer-Survival-Case-Study-Using-ANOVA
# Overview
This project analyzes the survival rates for different types of cancer using data from a study on the effect of supplemental ascorbate on cancer patients. The main goal is to compare the means of survival rates across various cancer types using Analysis of Variance (ANOVA) and identify which cancer types have statistically significantly higher survival rates.

# Data
The data used in this project is from:

Reference: Cameron, E., & Pauling, L. (1978). Supplemental ascorbate in the supportive treatment of cancer: Re-evaluation of prolongation of survival times in terminal human cancer. Proceedings of the National Academy of Sciences USA, 75, 4538-4542.
The data file, CancerStudy-2.txt, includes:

Survival: Number of survival days (response variable).
Organ: Type of cancer affecting different organs (categorical variable).

# Objectives

Perform an exploratory data analysis (EDA) to understand the distribution of survival times.
Use ANOVA to compare the mean survival rates for different types of cancer.
Conduct pairwise comparisons to determine which cancers have significantly different survival rates.
Perform residual analysis to validate the assumptions of ANOVA.

# Methodology
# 1. Exploratory Data Analysis (EDA)
Load the data using read.table and check its structure.

Examine the distribution of the Survival variable using histograms.

Apply a log transformation to Survival to correct for skewness in the distribution.

# 2. ANOVA Analysis
Convert Organ to a factor to represent different cancer types.

Use a boxplot to visualize the distribution of log-transformed survival times for different cancer types.

Perform ANOVA to test if the mean survival rates differ significantly across cancer types.

Analyze the ANOVA results to determine if between-group variability is significantly larger than within-group variability.

# 3. Pairwise Comparison
Perform Tukey's Honest Significant Difference (HSD) test to identify which specific cancer types have significantly different mean survival rates.

# 4. Residual Analysis

Conduct a residual analysis to verify ANOVA assumptions (normality, constant variance, and uncorrelated errors).
Visualize residuals using:
Q-Q plot to assess normality.
Histogram of residuals.
Plot of residuals versus order to check for independence.
Plot of residuals versus fitted values to assess constant variance.
# Findings

ANOVA Results: There is strong evidence that the survival times differ significantly across the five different types of cancer.
Pairwise Comparisons:
Statistically significant differences in survival times were found between:
Breast cancer vs. Bronchus cancer.
Breast cancer vs. Stomach cancer.
Residual Analysis: The assumptions of normality, constant variance, and uncorrelated errors are validated, supporting the ANOVA results.
# Requirements
R

Required libraries: car for diagnostic plots

# How to Run
Load the data file CancerStudy-2.txt into your R environment.

Run the script to perform the exploratory analysis, ANOVA, and residual analysis.

Review the outputs to interpret the findings.

# Conclusion

This study provides statistical evidence that survival rates vary significantly across different cancer types. The results can help prioritize research and treatment efforts for cancers with lower survival rates.

# License
This project is licensed under the MIT License.
