## Source: 2019 Novel Coronavirus COVID-19 (2019-nCoV) Data Repository
## by Johns Hopkins CSSE - https://github.com/CSSEGISandData/COVID-19

f <- tempfile()

## Confirmed global
download.file("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv", f)
cv <- readr::read_csv(f)
names(cv)[1:2] <- c("Province_State", "Country_Region")
unlink("../extdata/covid19-cases.csv")
readr::write_csv(cv, "../extdata/covid19-cases.csv")

## Death global
download.file("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv", f)
cv <- readr::read_csv(f)
names(cv)[1:2] <- c("Province_State", "Country_Region")
unlink("../extdata/covid19-deaths.csv")
readr::write_csv(cv, "../extdata/covid19-deaths.csv")

## Recovered global
download.file("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv", f)
cv <- readr::read_csv(f)
names(cv)[1:2] <- c("Province_State", "Country_Region")
unlink("../extdata/covid19-recovered.csv")
readr::write_csv(cv, "../extdata/covid19-recovered.csv")

unlink(f)

