# Start with the landings data frame


cpue_data = mutate(landings_data, Weight_kg = Weight_g / 1000)

cpue_data = group_by(cpue_data, Year, Trip_ID)
cpue_data = summarize(cpue_data, Trip_CPUE = sum(Weight_kg) / mean(Effort_Hours))
cpue_data = group_by(cpue_data, Year)
cpue_data = summarize(cpue_data, Median_CPUE_kg_hour = median(Trip_CPUE))

# cpue_data <- landings_data %>% 
#  mutate(Weight_kg = Weight_g / 1000) %>%
#  group_by(Year,Trip_ID) %>% 
#  summarize(Trip_CPUE = sum(Weight_kg) / mean(Effort_Hours)) %>% 
#  group_by(Year) %>% 
#  summarize(Median_CPUE_kg_hour = median(Trip_CPUE))


# Display a table of the CPUE data
cpue_data
