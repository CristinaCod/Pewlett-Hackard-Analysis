# Pewlett-Hackard Analysis

## Overview
### Purpose
The purpose of this analysis is to assist Bobby, an HR analyst at Pewlett-Hackard, in his task to perform employee research. As Pewlett-Hackard has been around for a very long time they are looking toward the future and anticipating a "silver tsunami" where all the baby-boomer employees will soon be retiring. As a company with thousands of employees, these positions will obviously need to be filled to ensure the survival and longevity of the company. This is where we come in. Based on given csv files we are assisting Bobby in building an employee database to determine which current employees are eligible for the retirement package and how many positions will then need to be filled.

Below you can see an ERD outlining the data from said csv files that we will be working with to conduct our analysis. 

![flow_chart.png](https://github.com/CristinaCod/Pewlett-Hackard-Analysis/blob/main/resources/QuickDBD-export.png)

The original analysis on retirement eligibility, prior to transforming the data, can be seen below for initial reference.

![retirement_titles.png](https://github.com/CristinaCod/Pewlett-Hackard-Analysis/blob/main/resources/Retirement_titles.png)
## Results
o	From the chart above, the initial retirement titles analysis yielded 133,776 results for retirement eligibility. An astronomical number impossible to fill for just one campany and would surely lead to the downfall of Pewlett-Hackard if they lost all those employees. 

o	However, after the initial analysis we noticed there were multiple entires for the same employee. This was attributed to the fact that these employees changed positions during their time at Pewlett-Hackard and held multiple titles. However as proven, these copious amounts of extra data that could effect retirment counts. Therefore we ran a query to only account for each individual once. This can be seen below in a snipet of the "Unique Titles" table

![unique_titles.png](https://github.com/CristinaCod/Pewlett-Hackard-Analysis/blob/main/resources/Unique_titles.png)

o	Again, we wanted to break this information down even further to determine which titles specifically need to be filled so Pewlett-Hackard knows what to put on their Indeed or Glassdoor job listing pages. The two job titles that we’re seeing the largest retirement amounts in during this “silver tsunami” are in the Senior Engineer and Senior Staff positions with nearly 26,000 and 25,000 retirees each. The position we’re seeing the smallest number of retirees in are Managers with only 2. If Pewlett-Hackard wanted to delve even deeper they could also have Bobby run a query on which departments these job titles need to be filled in. 

![retiring_titles.png](https://github.com/CristinaCod/Pewlett-Hackard-Analysis/blob/main/resources/Retiring_titles.png)

o	Lastly, Pewlett-Hackard has been operating smoothly for decades due to these dedicated employees they will soon be losing. The best way for the company to continue this success is to have the outgoing employees train the incoming ones. The only problem is that after running an analysis on individuals eligible for the mentorship program it only yielded 1,549 results. 

## Summary
### Questions
o	How many roles will need to be filled as the "silver tsunami" begins to make an impact?

Based on the analysis we found that 72,458 positions will need to be filled due to the impending "silver tsunami". As mentioned above we are seeing the greatest hit in the Senior Engineer and Senior Staff titles so these should be the main focus for Pewlett-Hackard to fill those positions first. 

o	Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett-Hackard employees?

Based on the findings of the mentorship eligibility program, no, there are not enough retirement-ready employees in the departments to mentor the next generation of Pewlett-Hackard employees. As mentioned above there are 72,458 employees retiring and only 1,549 eligible for the mentorship program. This averages out to about 1 mentor for every 47 new employees which is simply just unrealistic and not feasible. A snipet of the mentorship eligibility table can be seen below.

![Mentorship_eligibility.png](https://github.com/CristinaCod/Pewlett-Hackard-Analysis/blob/main/resources/Mentorship_eligibility.png)

### Follow-Up
In response to the above findings of the analysis we can dive deeper create additional queries to assist Pewlett-Hackard even further in tackling their "silver tsunami." As we know nearly 72.5 thousand employees will be retiring. While hiring new employees is necesary they should also determine who is eleigible for a promotion into a higher-level senior position, based on experience and duration spent with the company, to take over for the individuals leaving those positions.

Additionally, building off this, it would also be smart to run a query on the average salary for each position being filled so Pewlett-Hackard can anticipate what they will have to pay those they are promoting and new hires.
