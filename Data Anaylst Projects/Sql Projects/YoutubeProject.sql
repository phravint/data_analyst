
create schema YoutubeProject;
use YoutubeProject;

SELECT *
FROM 
`global youtube statistics`;
-- As We global is inbuilt keyword and we using the table name also global so it consider as inbuilt keyword ,So we mention it in ''.

-- Changing the YouTuber to YoutubeChannel_Name
alter table `global youtube statistics` change column `Youtuber`   `YoutubeChannel_Name` varchar(200);

-- Performing Data Transformation 



UPDATE `global youtube statistics`
SET YoutubeChannel_Name = REPLACE(YoutubeChannel_Name, 'ï¿½', '');
UPDATE `global youtube statistics`
SET YoutubeChannel_Name = REGEXP_REPLACE(YoutubeChannel_Name, '[^ -~]+', '', 'g');
UPDATE `global youtube statistics`
SET YoutubeChannel_Name = 
  REPLACE(
  REPLACE(
  REPLACE(YoutubeChannel_Name, 'ï', ''),
                          '¿', ''), 
                          '½', '');
SELECT YoutubeChannel_Name FROM `global youtube statistics`;

update `global youtube statistics`
set YoutubeChannel_Name= trim(upper(YoutubeChannel_Name)) ;


SELECT * 
FROM `global youtube statistics`;

Select *
from `global youtube statistics`
where `video views` =0;

update `global youtube statistics` 
set category = upper(category);

alter table `global youtube statistics`  change  column category ChannelType varchar(100);

Select *
from `global youtube statistics`
where ChannelType ='nan';

DELETE FROM `global youtube statistics` WHERE ChannelType ='nan';

alter table `global youtube statistics`  drop  column Title;

Select *
from `global youtube statistics`
where country=" " or country="nan";


-- Select G1.ChannelType,G2.channel_type
-- from `global youtube statistics` as G1
-- join `global youtube statistics` as G2
-- on G1.ChannelType!=G2.channel_type

alter table `global youtube statistics`  drop  column channel_type;

Select *
from `global youtube statistics`;

alter table `global youtube statistics`  add column Rural_popoulation int;

Update `global youtube statistics` set Rural_popoulation = Population-Urban_population;

alter table `global youtube statistics`  drop  column `Gross tertiary education enrollment (%)`;

select YoutubeChannel_Name
From `global youtube statistics`
where subscribers_for_last_30_days = 'nan';

Update `global youtube statistics` set subscribers_for_last_30_days = 0
where subscribers_for_last_30_days = 'nan';


DELETE FROM `global youtube statistics` WHERE YoutubeChannel_Name='' ;

select *
from `global youtube statistics`

