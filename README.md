# Pewlett Hackard Analysis

## Overview of the analysis

This project aims to take advantage of the data imported into the database and, by writing multiple queries, to determine the number of retiring employees per title. In addition, another query has been written to identify eligible employees to participate in the mentorship program, based on the conditions and requirements provided. 

Multiple csv files are provided to be imported into the database. Below is the database diagram of this project drawn on [QuickDBD](https://www.quickdatabasediagrams.com/). 

![](/Resources/qdbd.png)

## Results

### Determine the number of retiring employees per title

A query was first written to join different tables to get the data of employees' titles and the time range of the titles, and then, to filter out retiring employees, those who were born between 1952 and 1955. Below is a screenshot of part of the result.

![](/Resources/retirement_titles.png)

To eliminate duplicate entries, the second query was written, using the DISTINCT ON statement, to only keep the entries with the most recent/up-to-date titles. Below is a screenshot of part of the result.

![](/Resources/unique_titles.png)

### Identify eligible employees to participate in the mentorship program

A mentorship eligibility table has then been created to generated a list of employees who were born in 1965 to participate in the mentorship program. Below is a screenshot of part of the result.

![](/Resources/mentorship_eligibility.png)

### Analysis

Below is a summary of positions of which employees are about to retire. 

![](/Resources/retiring_titles.png)

After that, analysis can be and has been conducted on the retiring employees. 
- There are a total of 90,398 employees about to retire. 
- Senior employees account for the majority, with 32.54% to be Senior Engineers and 31.26% to be Senior Staff, resulting in a significant lack of senior employees with experience. 
- There are a total of 1,549 employees eligible for participating in the mentorship program. The condition set was tough and only filtering out employees born in 1965. 
- If Pewlett Hackard plans to fill up all vacancies of those positions, and still only employees born in 1965 are eligible to be a mentor, one mentor has to train 58-59 new intakes on average. 

## Summary

From the analysis above, it can be concluded that with the current 90,398 retiring employees resulting in over 90 thousand vacant positions to fill, and only 1,549 employees are eligible for participating in the mentorship program, it is highly likely that there are not enough mentors. Based on the current qualification requirement, there are too few employees eligible for becoming a mentor. 

The first additional query has been written to provide insights on which departments will be impacted the most. Below is a summary of positions in which department of which employees are about to retire. 

![](/Resources/dept_by_impact.png)

The second additional query has been written to provide insights on expanding the eligibility condition. There are only 1,549 employees eligible if the company only considers the employees born in 1965. However, if the company expands its eligibility condition from 1965 to 1963-1965, there are a total of 38,401 employees who are eligible to participate in the mentorship program. In this case, every mentor would only have to train 2-3 new intakes. Below is a summary of current employees born in one of the following years, 1963, 1964, or 1965. 

![](/Resources/new_mentorship_eligibility.png)
