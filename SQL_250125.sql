use cybrom;

-- Here we import dataet employees
--
--  Que.01  Find the second highest salary of IT programmeer
SELECT DISTINCT salary 
FROM employees 
WHERE job_id = 'IT PROG' 
ORDER BY salary DESC 
LIMIT 1 OFFSET 1;
select *from employees;

-- Que.02 Find the highest salary of each job id
SELECT job_id, MAX(salary) AS highest_salary
FROM employees
GROUP BY job_id;

-- Find the second highest salary of IT programmer
select distinct salary from employees where job_id="IT_PROG" order by salary desc limit 1 offset 1;

