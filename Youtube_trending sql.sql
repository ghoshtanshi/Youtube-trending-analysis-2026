select * from "youtube" limit 10

--Q1. Which channels have the highest number of unique trending videos?
select "channel_title" , count(distinct "video_id") as "unique_trending_videos" from "youtube"
group by "channel_title"
order by "unique_trending_videos" desc;

--Q2. Which videos have the highest engagement (likes + comments)?
select "video_id" , "title" , ("likes"+"comments") as "engagement" from "youtube"
order by "engagement" desc;

--Q3. Which video titles appeared on the trending list multiple times?
select "title" , count("trending_date") as "trending_list" from "youtube"
group by "title"
order by "trending_list" desc;

--Q4. Which video categories have the highest views?
select "category_id" , sum("views") as "Highest_views" from "youtube"
group by "category_id" 
order by "Highest_views" desc;

--Q5. Which publication hour has the highest average views?
select extract(hour from "publish_time") as "publish_hour" , avg("views") as "average_views" from "youtube"
group by "publish_hour"
order by "average_views" desc limit 10;

--Q6. Which channels have uploaded the most trending videos?
select "channel_title" , count("video_id") as "trending_videos" from "youtube"
group by "channel_title"
order by "trending_videos" desc;

--Q7. Which tags appear most frequently?
select "tags" , count("tags") as "frequency" from "youtube"
group by "tags"
order by "frequency" desc;

--Q8. Which videos have the longest descriptions?
select "video_id" , "title" ,  length("description")  as "long_description" from "youtube"
order by "long_description" desc limit 10;



