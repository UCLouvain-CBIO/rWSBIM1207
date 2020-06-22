## File downloaded from https://content.citymapper.com/cmi/about on
## the 15 APRIL 2020. 
cmi <- readr::read_csv("../data/Citymapper_Mobility_Index_20200415.csv", skip = 3)
save(cmi, file = "../../data/cmi.rda")
