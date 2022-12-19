--See the whole Datashet
--Select *
--From WorkSheet$

--delete all null Rows
--Delete from Worksheet$ where [Order ID] is NULL

--1)
--What is the total number of sales?
--Select Sum([Total Sales]) as TotalNumberOfAllSales
--from Worksheet$

--2)
--What is the total number of sales in April?
--Select Sum([Total Sales]) as TotalSalesApril
--from Worksheet$
--where [Month] = 'April'

--3)
--What is the total number of sales in May?
--Select Sum([Total Sales]) as TotalSalesApril
--from Worksheet$
--where [Month] = 'May'

--4)
--What is the average sales in total?
--Select AVG([Total Sales]) as AverageSales
--from Worksheet$

--5)
--What is the average sales in April?
--Select AVG([Total Sales]) as AverageSalesApril
--from Worksheet$
--where [Month] = 'April'

--6)
--What is the average sales in May?
--Select AVG([Total Sales]) as AverageSalesApril
--from Worksheet$
--where [Month] = 'May'

--7)
--Number Of Sales In April
--Select Count([Month]) 
--from Worksheet$
--where [Month] = 'April'

--8)
--Number of Sales in May
--Select Count([Month]) 
--from Worksheet$
--where [Month] = 'May'

--9)
--Average Quantity Of Items Bought In April (Rounded)
--Select ROUND(AVG([Quantity Ordered]),2) as AverageQuantityOfApril
--from Worksheet$
--Where [Month] = 'April'

--10)
--Average Quantity Of Items Bought In May (Rounded)
--Select ROUND(AVG([Quantity Ordered]),2) as AverageQuantityOfMay
--from Worksheet$
--Where [Month] = 'May'

--11)
-- Average Quantity of Items Bought Total
--Select ROUND(AVG([Quantity Ordered]),2) as TotaAverageQuantity
--from Worksheet$

--12)
--How many customers/orders are per city/state?

--San-Francisco
--Select [Town Address] as Town , count([Order ID]) as CustomersOrders
--from Worksheet$
--where [Town Address] like '%San Francisco%'
--group by [Town Address]

----Atlanta
--Select [Town Address] as Town , count([Order ID]) as CustomersOrders
--from Worksheet$
--where [Town Address] like '%Atlanta%'
--group by [Town Address]

----Dallas
--Select [Town Address] as Town , count([Order ID]) as CustomersOrders
--from Worksheet$
--where [Town Address] like '%Dallas%'
--group by [Town Address]

----Seattle
--Select [Town Address] as Town , count([Order ID]) as CustomersOrders
--from Worksheet$
--where [Town Address] like '%Seattle%'
--group by [Town Address]

----New York
--Select [Town Address] as Town , count([Order ID]) as CustomersOrders
--from Worksheet$
--where [Town Address] like '%New York%'
--group by [Town Address]

----Austin
--Select [Town Address] as Town , count([Order ID]) as CustomersOrders
--from Worksheet$
--where [Town Address] like '%Austin%'
--group by [Town Address]

----Los Angeles
--Select [Town Address] as Town , count([Order ID]) as CustomersOrders
--from Worksheet$
--where [Town Address] like '%Los Angeles%'
--group by [Town Address]

----Portland
--Select [Town Address] as Town , count([Order ID]) as CustomersOrders
--from Worksheet$
--where [Town Address] like '%Portland%'
--group by [Town Address]

--13) Which country has the most orders
--Select [Town Address] as Town , count([Order ID]) as CustomersOrders
--from Worksheet$
--group by [Town Address]
--order by CustomersOrders Desc

--14)Which county generated the most sales
--Select [Town Address] as Town, SUM([Total Sales]) as SalesPerCountry 
--from Worksheet$
--group by [Town Address]
--order by SalesPerCountry desc

--15)
--What were the profits by segment? (weekly Segments)?

--First Segment
-- 4/1/2019 till 4/7/2019
--Select Sum([Total Sales]) as FirstSegment
--from Worksheet$
--where [Date ] = '4/1/2019' or
--[Date ] = '4/2/2019' or
--[Date ] = '4/3/2019' or
--[Date ] = '4/4/2019' or
--[Date ] = '4/5/2019' or
--[Date ] = '4/6/2019' or
--[Date ] = '4/7/2019' 

----Second Segment
---- 4/8/2019 till 4/14/2019
--Select Sum([Total Sales]) as SecondSegment
--from Worksheet$
--where [Date ] = '4/8/2019' or
--[Date ] = '4/9/2019' or
--[Date ] = '4/10/2019' or
--[Date ] = '4/11/2019' or
--[Date ] = '4/12/2019' or
--[Date ] = '4/13/2019' or
--[Date ] = '4/14/2019' 

----Third Segment
---- 4/15/2019 till 4/21/2019
--Select Sum([Total Sales]) as ThirdSegment
--from Worksheet$
--where [Date ] = '4/15/2019' or
--[Date ] = '4/16/2019' or
--[Date ] = '4/17/2019' or
--[Date ] = '4/18/2019' or
--[Date ] = '4/19/2019' or
--[Date ] = '4/20/2019' or
--[Date ] = '4/21/2019' 

----Fourth Segment
---- 4/22/2019 till 4/28/2019
--Select Sum([Total Sales]) as FourthSegment
--from Worksheet$
--where [Date ] = '4/22/2019' or
--[Date ] = '4/23/2019' or
--[Date ] = '4/24/2019' or
--[Date ] = '4/25/2019' or
--[Date ] = '4/26/2019' or
--[Date ] = '4/27/2019' or
--[Date ] = '4/28/2019' 

----Firth Segment
---- 4/29/2019 till 5/1/2019
--Select Sum([Total Sales]) as FourthSegment
--from Worksheet$
--where [Date ] = '4/29/2019' or
--[Date ] = '4/30/2019' or
--[Date ] = '5/1/2019' 


--17)
--Which Is the best selling product
--Select [Product] as ProductName, Sum([Total Sales]) SalesPerProduct
--from Worksheet$
--group by [Product]
--order By SalesPerProduct desc

--18)
--Which is the least selling product
--Select [Product] as ProductName, Sum([Total Sales]) SalesPerProduct
--from Worksheet$
--group by [Product]
--order By SalesPerProduct asc

--19)which product has the most quantity ordered
Select [Product] as ProductName, Sum([Quantity Ordered]) ProductQuantity
from Worksheet$
group by [Product]
order By ProductQuantity desc

--20)
--Which Product has the least quantity ordered
Select [Product] as ProductName, Sum([Quantity Ordered]) ProductQuantity
from Worksheet$
group by [Product]
order By ProductQuantity asc