use PortfolioProject_MarketingAnalytics;

select * from dbo.engagement_data


-- query to clean and normalize this table

select
    EngagementID,
    ContentID,
    CampaignID,
    ProductID,
    replace(ContentType, 'Socialmedia', 'Social Media') as ContentType,
    left(ViewsClicksCombined,charindex('-', ViewsClicksCombined) - 1) as Views,
    right(ViewsClicksCombined, len(ViewsClicksCombined) - charindex('-', ViewsClicksCombined)) as Clicks,
    Likes, 
    format(convert(date, EngagementDate), 'MM.dd.yy') as EngagementDate

from dbo.engagement_data
where ContentType != 'Newsletter'; 
