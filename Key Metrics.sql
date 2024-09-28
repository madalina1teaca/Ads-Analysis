-- Execute the whole script otherwise the CTEs will not work!!!!!!!!!!!!

--Facebook Table
with FB as (
	select *
	from facebook_ads_basic_daily fabd 
	inner join facebook_adset fa  
		using("adset_id")
	inner join facebook_campaign fc 
		using("campaign_id")
), 
--Both Fb and Google ads tables
socials as (
	select "ad_date", "campaign_name", "adset_name", "spend", "impressions", 
		"reach", "clicks", "leads", "value", "url_parameters"
	from FB
	union
	select * from google_ads_basic_daily gabd
), 
--Valorile Agregate 
EachAddCampaignInfo as (
	select "ad_date", "campaign_name", 
		sum("spend") as "Total_Cost",
		count("impressions") as "Number_of_Impressions",
		count("clicks") as "Number_of_Clicks",
		sum("value") as "Total_Conversion_Value"
	from socials
	group by "ad_date","campaign_name"
)




select * from EachAddCampaignInfo;
