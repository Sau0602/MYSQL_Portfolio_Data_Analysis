use employee_attrition;
#  write an sql querry find the detail of employee under attrition having 5+ year of experience in between the age group of 27-35
select * from 
employee_attrition
where ï»¿Age between 27 and 35 
and TotalWorkingYears >= 5;

#fetch the details of employee having maximum and minimum salary working in deifferent department who recieved less than 13% salary hike
select department, max(monthlyincome), min(monthlyincome) 
from employee_attrition where percentsalaryhike < 13 
group by department
order by max(monthlyincome) desc;

# calculate average monthly income of all the employees who worked more than 3 years whos education background is medical
select avg(monthlyincome) as average_monthly_income from employee_attrition where yearsatcompany >= 3 and educationfield = 'medical' group by educationfield;
select * from employee_attrition;

# identify total number of male and female empployee under attrition whose marital status is married 
#and havent received promotion in the last 2 years
select count(gender)from employee_attrition where maritalstatus = 'married' and yearssincelastpromotion = 2
and attrition =  'yes' group by gender;

# employees with max performance rating but no promotion for 4 years and above;
select *  from employee_attrition 
where performancerating = (select max(performancerating) 
from employee_attrition) and yearssincelastpromotion >= 4;

# write an sql query to find the details of employees under attrition having 5+ years experience in between the
# age group of 27-35.
select * from employee_attrition where attrition = 'yes'  and ï»¿Age between 27 and 35 and  totalworkingyears >= 5;

# who has max and min percentage of salary hike;
select yearsatcompany, PerformanceRating, YearsSinceLastPromotion,
  max(percentsalaryhike), min(percentsalaryhike) from employee_attrition
group by yearsatcompany,PerformanceRating, YearsSinceLastPromotion
order by max(percentsalaryhike) desc, min(percentsalaryhike) asc;



# employee working overtime but given min salary hike and are more than 5 year with company.
select * from employee_attrition where overtime = 'yes'
and totalworkingyears >5 and percentsalaryhike = (select min(percentsalaryhike) from employee_attrition);













