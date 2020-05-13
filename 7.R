# menghitung percen mature 
# Define m95, the length at which 95% of fish are mature
m95 = 15.9

percent_mature = mutate(landings_data, Mature = Length_cm > m95)
percent_mature = group_by(percent_mature, Year)
percent_mature = summarize(percent_mature, Percent_Mature = sum(Mature)/ n()* 100)

#landings_data %>% 
#  mutate(Mature = Length_cm > m95) %>% 
#  group_by(Year) %>% 
#  summarize(Percent_Mature = sum(Mature) / n() * 100) 


percent_mature