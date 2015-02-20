############### Understading data.frames in R ####################

# create different types of variables
factor <- as.factor(rep(c("male", "female"), 5)); str(factor) #factor
numeric <- seq(1,10,1); str(numeric) #numeric
string <- "hello"; str(string) #string

# Combine into matrix and check if variable 
# types are preserved
mat <- matrix(cbind(fac,num,str), ncol = 3)
str(mat)

# Combine into data.frame and check if variable 
# types are preserved
df <- data.frame(cbind(fac,num,str))

# As a side note, check the difference between
# cbind and rbind. Why would you use one over
# the other?
cbind(fac,num,str)
rbind(fac,num,str)

################### Using dplyr #############################

# The packages must be loaded in this order. WHY?
library(plyr)
library(dplyr)

# Read gapminder data. Why do I use read.delim()?
gapminder <- read.delim("gapminder.tsv")

# Examine the gapminder data object
head(gapminder)
str(gapminder) #it is a data.frame! why?

# I only want the country and gdpPercap variables
# Let's use the dplyr verbs
select(gapminder, country, gdpPercap)

# I would like values of gdpPercap between the values
# of 1200 and 1300
filter(gapminder, gdpPercap > 1200, gdpPercap < 1300)

# Utilising the piping operator %>% so we don't need
# to keep inputting the object as above.

# I want to group the gapminder data by continent and 
# year, and summarize each group by the total sum of 
# the population by continent for each given year.
gDat <- gapminder %>%
	group_by(continent, year) %>%
	summarize(pop.sum = sum(pop))
print(gDat)

# I want to select only year and gdpPercap, mutate the
# gdpPercap variable into another column called "change" that gives 
# me the rate of change of gdpPercap. I then want all years after 1952,
# as the rate of change in 1952 is NA, then group by year, and
# summarize each group (year) by the mean rate of change of gdpPercap.
gdp.delta <- gapminder %>%
	select(year, gdpPercap) %>%
	mutate(change = 100*((gdpPercap - lag(gdpPercap)))/gdpPercap) %>%
	filter(year > 1952) %>%
	group_by(year) %>%
	summarise(gdp_delta = mean(change))
print(gdp.delta)

# I am only interested in two countries, Canada and Afganistan,
# so I will filter out only these two countries
gdp.delta <- gapminder %>%
	filter(country %in% c("Canada", "Afghanistan"))
print(gdp.delta)


# I am interested in all variables except gdpPercap
gDat <- gapminder %>%
	select(-gdpPercap)
head(gDat)
