#tangkapan per tahun per alat tangkap

annual_gear_landings = mutate(landings_data, Weight_kg = Weight_g / 1000)
annual_gear_landings = group_by(annual_gear_landings, Year, Gear)
annual_gear_landings = summarize(annual_gear_landings, Annual_Landings_kg = sum(Weight_kg,na.rm=TRUE))

#annual_gear_landings <- landings_data %>% 
#  mutate(Weight_kg = Weight_g / 1000) %>%
#  group_by(Year,Gear) %>% 
#  summarize(Annual_Landings_kg = sum(Weight_kg,na.rm=TRUE))
