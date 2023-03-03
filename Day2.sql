/* write a update statement to update city as null for order ids :  CA-2020-161389 , US-2021-156909 */

update orders set City=null where order_id in ('CA-2020-161389','US-2021-156909')

/* write a query to find orders where city is null (2 rows) */

select * from orders where city is null

/* write a query to get total profit, first order date and latest order date for each category */

select category, sum(profit) as total_profit, min(order_date) as First_order, max(order_date) as Latest_order from orders group by category; 

select * from orders where state in ('O%');



/* write a query to find sub-categories where average profit is more than the half of the max profit in that sub-category */




/* - create the exams table with below script;
create table exams (student_id int, subject varchar(20), marks int);

insert into exams values (1,'Chemistry',91),(1,'Physics',91),(1,'Maths',92)
,(2,'Chemistry',80),(2,'Physics',90)
,(3,'Chemistry',80),(3,'Maths',80)
,(4,'Chemistry',71),(4,'Physics',54)
,(5,'Chemistry',79);

write a query to find students who have got same marks in Physics and Chemistry.

select student_id , marks
from exams
where subject in ('Physics','Chemistry')
group by student_id , marks
having count(1)=2 */




/* write a query to find total number of products in each category. */





/* write a query to find top 5 sub categories in west region by total quantity sold */




/*write a query to find total sales for each region and ship mode combination for orders in year 2020 */