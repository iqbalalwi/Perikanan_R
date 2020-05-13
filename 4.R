# Jumlah tangkapan per tahun
# Start with the landings data frame
annual_landings = mutate(landings_data, Weight_kg = Weight_g/1000)
annual_landings = group_by(annual_landings, Year)
annual_landings = summarize(annual_landings, Annual_Landings_kg = sum(Weight_kg, na.rm=TRUE))



#landings_data = mutate(landings_data, bulan=substr(landings_data$Date,6,7))


#annual_landings <- landings_data %>% 
#  mutate(Weight_kg = Weight_g / 1000) %>%
#  group_by(Year) %>% 
#  summarize(Annual_Landings_kg = sum(Weight_kg,na.rm=TRUE))

## Display a table of the annual landings data
annual_landings
