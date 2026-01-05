use PortfolioProject_MarketingAnalytics;



with DuplicateRecords as (
   select 
       JourneyID,
       CustomerID,
       ProductID,
       VisitDate,
       Stage, 
       Action,
       Duration,
       row_number() over (
       partition by CustomerID, ProductID, VisitDate, Stage, Action
       order by JourneyID
       ) as row_num
   from dbo.customer_journey
)

select * from DuplicateRecords where row_num > 1 order by JourneyID

select 
       JourneyID,
       CustomerID,
       ProductID,
       VisitDate,
       Stage, 
       Action,
       coalesce(Duration, avg_duration) as Duration
from 
    (
        select 
              JourneyID,
              CustomerID,
              ProductID,
              VisitDate,
              upper(Stage) as Stage,
              Action, 
              Duration,
              avg(Duration) over (partition by VisitDate) as avg_duration,
              row_number() over (
                  partition by CustomerID, ProductID, VisitDate, upper(Stage), Action
                  order by JourneyID
                  ) as row_num
              from dbo.customer_journey
              ) as subquery
        where row_num = 1;