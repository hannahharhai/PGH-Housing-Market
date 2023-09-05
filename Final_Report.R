# housing data
housing_data = read.csv("/Users/hannahharhai/Projects/INFSCI 0310/Final Report/housing_data.csv")

housing_plot = ggplot(housing_data, aes(x = Date, y = AVG_Housing_Price)) + geom_point(size=3) + theme(axis.text.x = element_text(size=15)) + theme(axis.text.y = element_text(size=15)) + theme(axis.title.x = element_text(size=15)) + theme(axis.title.y = element_text(size=15))  + theme(plot.title = element_text(size=15))
print(housing_plot + ggtitle("Date vs. AVG Housing Price"))




# poverty data
poverty_data = read.csv("/Users/hannahharhai/Projects/INFSCI 0310/Final Report/poverty_data.csv")

poverty_plot = ggplot(poverty_data, aes(x = Date, y = People_in_Poverty)) + geom_point(size=3) + theme(axis.text.x = element_text(size=15)) + theme(axis.text.y = element_text(size=15)) + theme(axis.title.x = element_text(size=15)) + theme(axis.title.y = element_text(size=15))  + theme(plot.title = element_text(size=15)) + ylab("People in Poverty (thousands)")
print(poverty_plot + ggtitle("Date vs. People in Poverty"))




# poverty vs housing correlation 
pvh_data = merge(poverty_data, housing_data, by.x = "Date")
pvh_data

pvh_plot = ggplot(pvh_data, aes(x = People_in_Poverty, y = AVG_Housing_Price)) + geom_point(size=3) + theme(axis.text.x = element_text(size=15)) + theme(axis.text.y = element_text(size=15)) + theme(axis.title.x = element_text(size=15)) + theme(axis.title.y = element_text(size=15))  + theme(plot.title = element_text(size=15)) + geom_smooth(method='lm') + xlab("People in Poverty (thousands)") + ylab("AVG Housing Price (thousands)")
print(pvh_plot + ggtitle("People in Poverty vs. AVG Housing Price"))

cor(pvh_data$People_in_Poverty, pvh_data$AVG_Housing_Price)




# income data
income_data = read.csv("/Users/hannahharhai/Projects/INFSCI 0310/Final Report/income_data.csv")

income_plot = ggplot(income_data, aes(x = Date, y = Income)) + geom_point(size=3) + theme(axis.text.x = element_text(size=15)) + theme(axis.text.y = element_text(size=15)) + theme(axis.title.x = element_text(size=15)) + theme(axis.title.y = element_text(size=15))  + theme(plot.title = element_text(size=15))
print(income_plot + ggtitle("Date vs. Per Capita Income"))



# income vs housing correlation
ivh_data = merge(income_data, housing_data, by.x = "Date")
ivh_data

ivh_plot = ggplot(ivh_data, aes(x = Income, y = AVG_Housing_Price)) + geom_point(size=3) + theme(axis.text.x = element_text(size=15)) + theme(axis.text.y = element_text(size=15)) + theme(axis.title.x = element_text(size=15)) + theme(axis.title.y = element_text(size=15))  + theme(plot.title = element_text(size=15)) + geom_smooth(method='lm') + xlab("Per Capita Income (dollars)") + ylab("AVG Housing Price (thousands)")
print(ivh_plot + ggtitle("Per Capita Income vs. AVG Housing Price"))

cor(ivh_data$Income, ivh_data$AVG_Housing_Price)



# unemployment data
unemployment_data = read.csv("/Users/hannahharhai/Projects/INFSCI 0310/Final Report/unemployment_data.csv")
unemployment_data
uvh_data = merge(unemployment_data, housing_data, by.x = "Date")
uvh_data
