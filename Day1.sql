/*Note: please do not use any functions which are not taught in the class. you need to solve the questions only with the concepts that have been discussed so far.
*/
/*1- write a sql to get all the orders where customers name has "a" as second character and "d" as fourth character (58 rows)*/

select * from orders where Customer_Name like '_a_d%';


/*write a sql to get all the orders placed in the month of dec 2020 (352 rows) */

select * from orders where Order_Date between '2020-12-01' and '2020-12-31';


/*write a query to get all the orders where ship_mode is neither in 'Standard Class' nor in 'First Class' and ship_date is after nov 2020 (944 rows)*/


select * from orders where ship_mode not in ('Standard Class','First Class') and Ship_date > '2020-11-30';


/*write a query to get all the orders where customer name neither start with "A" and nor ends with "n" (9815 rows)*/


select * from orders where customer_name not like 'A%n';


/*write a query to get all the orders where profit is negative (1871 rows)*/

select * from orders where profit<0;


/*write a query to get all the orders where either quantity is less than 3 or profit is 0 (3348)*/

select * from orders where profit=0 or quantity<3


/*your manager handles the sales for South region and he wants you to create a report of all the orders in his region where some discount is provided to the customers (815 rows)*/
select * from orders where region='South' and discount>0



/*write a query to find top 5 orders with highest sales in furniture category*/

select top 5 * from orders where Category='Furniture' order by sales desc;



/*write a query to find all the records in technology and furniture category for the orders placed in the year 2020 only (1021 rows)*/

select * from orders where category in ('technology','furniture') and order_date between '2020-01-01' and '2020-12-31'

