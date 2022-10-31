# DELIVERABLE 1
mechacar_data <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight+ spoiler_angle+ ground_clearance + AWD , data = mechacar_data)
summary(lm(mpg ~ vehicle_length + vehicle_weight+ spoiler_angle+ ground_clearance + AWD , data = mechacar_data))

# DELIVERABLE 2
suspension_data <- read.csv(file='Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
total_summary <-  suspension_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI))
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI))


