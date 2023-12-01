#milestone 10

# 40.7 < latitude > 40.5
# -74.2 < longitude > -74.0

LongIsland <- subset(NYPD_Arrest2, 40.7 < Latitude)
LongIsland <- subset(NYPD_Arrest2, Latitude > 40.5)
LongIsland <- subset(NYPD_Arrest2, -74.2 < Longitude)
LongIsland <- subset(NYPD_Arrest2, Longitude > -74.0)

mean (LongIsland$Latitude)
# 40.74864
 mean(LongIsland$Longitude)
 -73.90713
sd(LongIsland$Longitude)
0.06248311
 sd(LongIsland$Latitude)
 0.07804576
  nrow (LongIsland)
 96973
 mean(NYPD_Arrest2$Latitude)
  40.73871
  mean(NYPD_Arrest2$Longitude)
  -73.92214
  
#It was difficult to find the means of the area since i minimized it to a small area like long island. the values and variables were too large to compute. 

LongIsland_aov = aov(Latitude ~ Longitude, data = LongIsland)
 summary(LongIsland_aov)
#               Df Sum Sq Mean Sq F value Pr(>F)    
#Longitude       1    0.6  0.6407   105.3 <2e-16 ***
#  Residuals   96971  590.0  0.0061                   

 
   

