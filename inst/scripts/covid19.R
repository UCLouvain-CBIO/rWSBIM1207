## Source: 2019 Novel Coronavirus COVID-19 (2019-nCoV) Data Repository
## by Johns Hopkins CSSE - https://github.com/CSSEGISandData/COVID-19

f <- tempfile()
unlink("../extdata/time_series_19-covid-Confirmed.csv")
download.file("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Confirmed.csv", f)
             

cv <- readr::read_csv(f)
names(cv)[1:2] <- c("Province_State", "Country_Region")

readr::write_csv(cv, "../extdata/covid19-confirmed-cases.csv")


## library("patchwork")
## library("ggrepel")
## library("gghighlight")
##
## cvl <- cv %>%
##     pivot_longer(names_to = "date",
##                  values_to = "count",
##                  -(1:4)) %>%
##     mutate(date = lubridate::mdy(date))
##
## provs <- c("France", "Netherlands", "Denmark", "United Kingdom")
## countries <- c("Belgium", "Italy", "Germany", "Luxemburg", "Sweden",
##                "Spain", "Portugal", "US", "Finland",
##                "Switzerland", "Norway",
##                "Canada", "Australia",
##                "Japan", "China", "Taiwan*", "Singapore")
##
## cvl %>%
##     group_by(Country_Region, date) %>%
##     summarise(count = sum(count)) %>%
##     mutate(label = ifelse(date == max(date), Country_Region, NA_character_)) %>%
##     filter(Country_Region %in% c(provs, countries)) %>%
##     ggplot(aes(x = date, y = count,
##                group = Country_Region,
##                colour = Country_Region)) +
##     geom_label_repel(aes(label = label),
##                      nudge_x = 2) + 
##     geom_line() +  geom_point() +
##     theme(legend.position = "none") +    
##     scale_y_log10() 
##
## cvl %>%
##     group_by(Country_Region, date) %>%
##     summarise(count = sum(count)) %>%
##     mutate(label = ifelse(date == max(date), Country_Region, NA_character_)) %>%
##     filter(Country_Region %in% c(provs, countries)) %>%
##     ggplot(aes(x = date, y = count,
##                group = Country_Region,
##                colour = Country_Region)) +
##     geom_line() +  geom_point() +
##     scale_y_log10() +    
##     gghighlight(Country_Region == "Belgium")
##
## cvl %>%
##     group_by(Country_Region, date) %>%
##     summarise(count = sum(count)) %>%
##     mutate(label = ifelse(date == max(date), Country_Region, NA_character_)) %>%
##     filter(Country_Region %in% c(provs, countries)) %>%
##     ggplot(aes(x = date, y = count,
##                ## colour = Country_Region,
##                group = Country_Region)) +
##     geom_line() +  geom_point() +
##     scale_y_log10() +    
##     gghighlight(max(count) > 1500)
##
## cvl %>%
##     mutate(label = ifelse(date == max(date), Province_State, NA_character_)) %>%    
##     filter(Country_Region == "US") %>%
##     ggplot(aes(x = date, y = count,
##                group = Province_State)) +
##     geom_line() +  geom_point() +
##     scale_y_log10() +
##     gghighlight(max(count) > 100)
