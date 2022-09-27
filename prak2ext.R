# 4. Latihan 4: Koneksi ke DB
library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'ps2farhanharahap', host = 'localhost')
dbListTables(con)
myQuery <- "select * from datamhs;"
df <- dbGetQuery(con, myQuery)

#5. Latihan 5: Teknik Filter Data
library(dplyr)
df <- filter(df,Jenis_Kelamin == "L")
print(df)
