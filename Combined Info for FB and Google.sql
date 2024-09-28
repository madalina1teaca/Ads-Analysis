select ad_date, campaign_id, 
	SUM(spend) as "Total Cost",
	SUM(impressions) as "Number of Impresions",
	SUM (clicks) as "Number of Clicks",
	--CPC--
	ROUND(
		CAST(
			(sum(spend)::float / sum(clicks))
			as numeric)
		,2) as "CPC",
	--CPM--
	ROUND(
		CAST(
			(SUM(spend)::float / SUM(impressions))
			as numeric)
		, 2) as "CPM",
	--CTR--
	ROUND(
		CAST(
			(SUM(clicks)::float / SUM(impressions) * 100)
			as numeric
		)
		, 2) as "CTR",
	--ROMI--	
	ROUND(
		cast(
			((SUM(value) - SUM(spend))::FLOAT / SUM(spend) * 100)
			as NUMERIC)
		,2) as "ROMI"
	--cast ((SUM(spend) / SUM(impressions)) as FLOAT) * 1000 as "CPM",
	--(SUM (clicks) / SUM(impressions) * 100 ) as "CTR",
	--((SUM(value) - SUM(spend)) / SUM(spend) * 100 ) as "ROMI"
from facebook_ads_basic_daily fabd 
group by ad_date, campaign_id 
having SUM(clicks) > 0 
	and  SUM(impressions) > 0;