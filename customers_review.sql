use PortfolioProject_MarketingAnalytics;

select * from dbo.customer_reviews


select
     ReviewID,
     CustomerID,
     ProductID,
     ReviewDate,
     Rating,
     replace(ReviewText, '  ', ' ') as ReviewText
from dbo.customer_reviews 