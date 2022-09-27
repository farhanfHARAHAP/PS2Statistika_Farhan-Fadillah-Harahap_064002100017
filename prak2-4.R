# 4. Latihan 4: Koneksi ke DB
library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'houseprices', host = 'localhost')
dbListTables(con)
myQuery <- "select * from farhanharahap"
df <- dbGetQuery(con, myQuery)

#5. Latihan 5: Teknik Filter Data
library(dplyr)
df <- filter(df,Brick=="No")
print(df)

library(dplyr)
df <- filter(df,Brick=="No"|Neighborhood=="East")
print(df)