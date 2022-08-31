library(odbc)
library(DBI)
library(dbplyr)
library(RPostgres)
library(tidyverse)
library(dplyr)
library(tibble)
library(lubridate)
library(lsr)
library(ggplot2)
library(forcats)
library(plotly)
con <- DBI::dbConnect(RPostgres::Postgres(),dbname = "xyz",user = rstudioapi::askForPassword("Database user"),password = rstudioapi::askForPassword("Database password"),port = "5432")
dbListTables(con)
click_through_value <- dbGetQuery(con, 'SELECT
	Content,
	impression.keyword,
	COUNT(*) AS click_through_value
FROM
	target_group
INNER JOIN impression
	ON target_group.keyword = impression.keyword
GROUP BY content,impression.keyword
ORDER BY impression.keyword;')
click_through_value
join_value <- dbGetQuery(con,'SELECT
	target_group_id,
	COUNT (*) AS join_value
FROM target_group_user
INNER JOIN member
	ON user_phone_number = member_phone_number
WHERE target_group_id 
	IN(1,3,5,6)
GROUP BY target_group_id;')
join_value
contribution_value <- dbGetQuery(con,'SELECT 
	target_group_id,
	COUNT(*) AS contribution_value
FROM member_post
INNER JOIN target_group_user
	ON member_post.member_phone_number = target_group_user.user_phone_number
WHERE target_group_id
	IN(1,3,5,6)
GROUP BY target_group_id;')
contribution_value
target_group_user <- dbGetQuery(con,'SELECT
	target_group_id,
	COUNT (*) AS target_number
FROM target_group_user
WHERE target_group_id
	IN(1,3,5,6)
GROUP BY target_group_id
ORDER BY target_group_id;') 
target_group_user
click_through_df <- rbind("Target number" =target_group_user$target_number,"Click value"=click_through_value$click_through_value,"Join value" =join_value$join_value)
colnames(click_through_df) <- c("Variation 1", "Variation 3" , "Variation 5", "Variation 6")
click_through_rate <- mapply('/', click_through_df[2,],click_through_df[1,])*100
click_through_rate
join_rate <- mapply('/', click_through_df[3,],click_through_df[2,])*100
join_rate
click_join_df <- as.data.frame(t(rbind (click_through_rate, join_rate)))
click_join_df <- rownames_to_column(click_join_df, var="Variation") %>% head
click_join_df_long <- gather(click_join_df, key="Measure", value="Value", c("click_through_rate", "join_rate"))
plot1 <- click_join_df_long %>%
  arrange(Value) %>%
  mutate(Variation=factor(Variation, levels=rev(unique(Variation)), ordered=TRUE)) %>%
  ggplot( aes(fill=Measure, x=Variation, y=Value))+
  geom_bar(position = "dodge", stat = "identity", width=0.4) +
  ggtitle("Click Through Rate vs Join Rate")+
  xlab("Test Group")+
  ylab("Rate")
ggplotly(plot1)
print("Variation 5 has a better click through rate than variation 1")
print("Variation 1 has the best join rate")
chisq.test(click_join_df$join_rate,click_join_df$click_through_rate)
print("At 95% confidence level, the p-value for both click rate and join rate is greater than 0.05 (i.e 0.2133 > 0.05). We therefore fail to reject the null hypothesis, the test result is not statistically significant")
