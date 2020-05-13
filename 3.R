#bagaimana cara untuk melakukan pengecekan data yang
#missing values, typo dan Errors

landings_data[!complete.cases(landings_data),] #cek ada data N.A atau kosong
landings_data <- na.omit(landings_data)  #menghilangkan data N.A
landings_data

#typos
unique(landings_data$Gear)  #lihat jenis alat tangkap
landings_data = mutate(landings_data, Gear=tolower(Gear)) #Rubah huruf kecil pertama

unique(landings_data$Gear)
unique(landings_data$Species)

#cek jumlah data berdasarkan spesie
nrow(filter(landings_data, Species == "Caesoi cunning"))
nrow(filter(landings_data, Species == "Caesio cuning"))


#ganti nama spesies
landings_data = mutate(landings_data, Species = replace(Species, Species=="Caesoi cunning", "Caesio cuning"))

unique(landings_data$Species)

#error
summary(landings_data$Length_cm)   #lihat stat data
plot(landings_data$Length_cm)  #cek menggunakan grafik

landings_data = filter(landings_data, Length_cm < 100)


plot(landings_data$Length_cm)


#simpan hasilllll
write_csv(landings_data,"_data/sample_landings_data_clean.csv")
