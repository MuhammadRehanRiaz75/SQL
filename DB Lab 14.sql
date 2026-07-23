Select * from employees
/*Task 1*/
/* Muhammad Rehan Riaz 23-CS-76 */
Select employee_id,last_name,salary,
   salary+salary*0.155 as New_Salary
   from employees
/*Task 2*/
/* Muhammad Rehan Riaz 23-CS-76 */
Select last_name,
concat(upper(substring(last_name,1,1)),substring(last_name,2,len(last_name)-1)) 
as UpperCase, 
len(last_name) as Length from employees
where last_name like 'J%' or last_name like 'A%' or last_name like 'M%';
/*Task 3*/
/* Muhammad Rehan Riaz 23-CS-76 */
Select 
last_name,hire_date,
datediff(mm,hire_date,getdate()) as Months_Worked from 
employees
/*Task 4*/
/* Muhammad Rehan Riaz 23-CS-76 */
Select last_name,isNull(job_id,'No Comission') as COMM from employees
/*Task 5*/
/* Muhammad Rehan Riaz 23-CS-76 */
Select last_name,job_id,
case
  when (job_id=5) then 'Grade A'
  when (job_id=19) then 'Grade B'
  when (job_id=12) then 'Grade C'
  when (job_id=16) then 'Grade D'
else 'Grade E'
end as Grade
from employees
Select * from jobs
/*Task 6*/
/* Muhammad Rehan Riaz 23-CS-76 */
Select last_name,hire_date,
datename(weekday,hire_date) as Day
from employees





