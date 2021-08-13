-- Use Dictinct with Orderby to remove duplicate rows



select emp_no,first_name,last_name from employees;

select title,from_date,to_date from titles;
select employees.emp_no,employees.first_name,employees.last_name,
titles.title,titles.from_date,titles.to_date into retirement_titles
from employees inner join titles on
employees.emp_no=titles.emp_no
where employees.birth_date between '1952-01-01' and '1955-12-31' order by emp_no

select * from retirement_titles

select emp_no,first_name,last_name,title from retirement_titles

SELECT DISTINCT ON (emp_no) emp_no,first_name,last_name,title
into unique_titles
FROM retirement_titles
ORDER BY emp_no,to_date  DESC;

select count(title)as count,title into retiring_titles
from unique_titles group by title order by count desc
