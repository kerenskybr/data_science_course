
hoje <- Sys.Date()
hoje

Sys.time()
Sys.timezone()


as.Date("2024-06-09")
as.Date("Jun-09-24", format = "%b-%d-%y")

format(Sys.Date(), format = "%d %B, %Y")


my_time <- as.POSIXct("2024-06-09 11:24:134")
my_time

my_time + 1
