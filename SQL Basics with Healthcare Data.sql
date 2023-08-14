------------
--Exploration of the encounter Table and to filter out down to a specific encounter class
--  1. Select all from the Encounters table
--  2. Filter the table down to two classes 
------------------------

select*
from public.encounters
where encounterclass in ('outpatienct','ambulatory')

--------------------------
--Exploration of the conditions tables 
-- 1. Isolate the descripiton Column
-- 2. Create new Column renamed count_of_condition
-- 3. Remove unwanted descriptions 
-- 4. Sort new list  of conditions by conditions that were diagnosed over 5000 time  
-- 5. Sort list in descending order 
---------------------------------


select description,
       count(*) as count_of_cond
from public.conditions
where description != 'Body Mass Index 30.0-30.9, adult'
group by description
having count(*) > 5000
order by count (*) desc


--------
-- Sort Patients table to only include patients from Boston 
-- 1. Select all from Patients table 
-- 2. Use Where Clause to filter  table to the City of Boston
------------


select  * from public.patients
where city = 'Boston'




------------------------
---- Filtering down the Conditions Table
-- 1. Select all from conditions Table 
-- Use Where and in clause to filter the table to show Chronic Kidney Disease
-- Instead of using the term Chronic Kidney Disease I used the medical code 


select *
from public.conditions
where code in ('585.1','585.2','585.3','585.4')





------------------------------------------------------
-- Write a query that does  the following 
-- 1. List out Number of patients per cirt in desc order
-- 2. does not include boston
-- 3. Must have at least 100 patients from that city
------------------------------------------------------

/* 
This query,gives me the count of all patients from their city of residences
and there must have been at lease 100 patients
cities do not include Boston
*/


select city,count(*)
from  public.patients
where city != 'Boston'
group by city
having count(*) >= 100
Order by  count   (*) Desc

--------
-- 1. Have a starting table 
-- 2. Have a joining  table
-- 3. pick the  join type
	-- A. Left Join
	-- B. Inner Join
	-- C. Right Join
	-- D. Full Outer Join
-- 4. Specify what you want to join on 
-- 5. Provide Aliases
------------------------------------

select t1.*,
       t2.first,
	   t2.last,
	   t2.birthdate
from public.immunizations as t1
left join public.patients as t2
 on t1.patient  = t2.id



