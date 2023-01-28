--Electronic Gadgets Project
select *
from [dbo].[Worksheet]

--Remove Duplicates(698 dublicates)

Select [Order ID],count(*) as cntDuplicates
from [dbo].[Worksheet] 
group by [Order ID]
having count(*)>1

With RowNum as (
	Select *,
		ROW_NUMBER() Over ( 
		Partition By [Order ID]
		Order By [Order ID]) row_num
	from [dbo].[Worksheet]
)
DELETE 
from RowNum
where row_num >1

--How many orders do we got after removing dublicates
Select count(*) as NumberOfOrders
from [dbo].[Worksheet]

--How many Distinct Products do we sell
Select distinct([Product]) as DistrinctProducts
from [dbo].[Worksheet]

--What is the total Amount of sales
Select Sum([Total Sales]) as TotalSales
from [dbo].[Worksheet]

--How many months is the data we Got 
Select Min([Date])
from [dbo].[Worksheet]

Select Max([Date])
from [dbo].[Worksheet]

Select Min([Order Date])
from [dbo].[Worksheet]

Select Max([Order Date])
from [dbo].[Worksheet]

--We See that the perid we got is for one month 4/1/2019 - 5/1/2019
--So we need a metric to see how the shop is performing by not by month but per week

Alter Table [dbo].[Worksheet]
Add WeekDate Nvarchar(255);

select [Date],
	Case When [Date] = '4/1/2019' or [Date]= '4/2/2019'  or
			[Date]= '4/3/2019' or
			[Date]= '4/4/2019' or
			[Date]= '4/5/2019' or
			[Date]= '4/6/2019' or
			[Date]= '4/7/2019' Then 'Week1' 
	    When [Date]= '4/8/2019' or
			[Date]='4/9/2019' or
			[Date]='4/10/2019' or
			[Date]='4/11/2019' or
			[Date]='4/12/2019' or
			[Date]='4/13/2019' or
			[Date]='4/14/2019' Then 'Week2'
		 When [Date]= '4/15/2019' or 
			[Date]='4/16/2019' or
			[Date]='4/17/2019' or
			[Date]='4/18/2019' or
			[Date]='4/19/2019' or
			[Date]='4/20/2019' or
			[Date]='4/21/2019' Then 'Week3'
		 When [Date]= '4/22/2019' or
			[Date]='4/23/2019' or
			[Date]='4/24/2019' or
			[Date]='4/25/2019' or
			[Date]='4/26/2019' or
			[Date]='4/27/2019' or
			[Date]='4/28/2019' Then 'Week4'
		 When [Date]='4/29/2019' or 
			[Date]='4/30/2019' or
			[Date]='4/31/2019' or
			[Date]='5/1/2019' Then 'Week5'
	    End
from [dbo].[Worksheet]
order By 1 desc

Update [dbo].[Worksheet]
Set[WeekDate] =  Case When [Date] = '4/1/2019' or [Date]= '4/2/2019'  or
			[Date]= '4/3/2019' or
			[Date]= '4/4/2019' or
			[Date]= '4/5/2019' or
			[Date]= '4/6/2019' or
			[Date]= '4/7/2019' Then 'Week1' 
	    When [Date]= '4/8/2019' or
			[Date]='4/9/2019' or
			[Date]='4/10/2019' or
			[Date]='4/11/2019' or
			[Date]='4/12/2019' or
			[Date]='4/13/2019' or
			[Date]='4/14/2019' Then 'Week2'
		 When [Date]= '4/15/2019' or 
			[Date]='4/16/2019' or
			[Date]='4/17/2019' or
			[Date]='4/18/2019' or
			[Date]='4/19/2019' or
			[Date]='4/20/2019' or
			[Date]='4/21/2019' Then 'Week3'
		 When [Date]= '4/22/2019' or
			[Date]='4/23/2019' or
			[Date]='4/24/2019' or
			[Date]='4/25/2019' or
			[Date]='4/26/2019' or
			[Date]='4/27/2019' or
			[Date]='4/28/2019' Then 'Week4'
		 When [Date]='4/29/2019' or 
			[Date]='4/30/2019' or
			[Date]='4/31/2019' or
			[Date]='5/1/2019' Then 'Week5'
	    End
--How many Weeks do we have
Select Distinct([WeekDate])
from [dbo].[Worksheet]

--Splitting the Town Address only to take the town
Select [Town Address],
	SUBSTRING([Town Address],0,CHARINDEX(',' , [Town Address])) as Town
from [dbo].[Worksheet]

Alter Table [dbo].[Worksheet]
Add Town Nvarchar(255); 

Update [dbo].[Worksheet]
set [Town] = SUBSTRING([Town Address],0,CHARINDEX(',' , [Town Address]))
from [dbo].[Worksheet]

--How many Distinct Towns Do we Got
Select Distinct([Town])
from [dbo].[Worksheet]