# Overview of Employee Database Analysis:
The purpose of this analysis is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program

## Results:
* retirement_titles.csv is created to retrieve the employees who were born between 1952 and 1955.DISTINCT ON feature is used to remove the duplicate entries for some employees because they have switched titles over the years

* unique_titles.csv is created to hold the unique employees who is approaching their retirement along with their position in the company

* retiring_titles.csv created to calculate the number of positions in each category that has to be replenished after the emplyees retirement.

* mentorship_eligibilty.csv created to to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965 and a join is performed on the departments table to get their roles in the company

## Summary:

* As Silver Tsunami approaches about 90398 positions have to be filled by new candidates.

**select sum(count) from retiring_titles;**

**select count(emp_no),title from mentorship_eligibility group by title;**

* There are more than enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees