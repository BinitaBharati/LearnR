data <- read.csv("./resources/TB_burden_countries_2018-12-18.csv")
#print(data)
#print(is.data.frame(data))

# Get the maximum e_inc_100k which is "Estimated incidence (all forms) per 100 000 population".
e_inc_100k.max <- max(data$e_inc_100k)
print(paste0("e_inc_100k.max: ", e_inc_100k.max))


# Get the country name(s) which has maximum e_inc_100k, which is 1280.
#There are multiple rows with e_inc_100k set as 1280
retval <- subset(data, e_inc_100k == max(e_inc_100k))
#print(is.data.frame(retval))
print(paste0("Country name listings with maximum estimated incidence per 100 000 population is : ",unique(retval$country)))
