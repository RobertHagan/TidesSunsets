#http://rstudio.github.io/leaflet/basemaps.html
# update to check github
# xtide -l Mayaguez 
# latitude 18.2200 Longitude -67.1600
# Actual is setView(lng = -67.1770, lat = 18.2520, zoom = 18)
long <- -67.1770
lat <- 18.2520
library(maps)
library(leaflet)
library(magrittr)
# crude map from OpenStreeMap of Chris's place
m <- leaflet() %>% setView(lng = -67.1770, lat = 18.2520, zoom = 18)
m %>% addTiles() 
#

#
#
m <- leaflet() %>% setView(lng = -67.1770, lat = 18.2520, zoom = 18)
m %>% addProviderTiles("OpenStreetMap.DE") # Best so fars
#
# popup  change web address
content <- paste(sep = "<br/>",
                 "<b><a href='http://www.samurainoodle.com'>Christopher Hagan</a></b>",
                 "PR-341",
                 "Mayaguez, PR")
m <- leaflet() %>% setView(lng = -67.1770, lat = 18.2520, zoom = 16)
m %>% addProviderTiles("OpenStreetMap.DE") %>% addTiles() %>%
  addPopups(-67.1780, 18.2530, content,
            options = popupOptions(closeButton = TRUE)  # this works well .was false
  )
#

#

mapStates = map("state", fill = TRUE, plot = FALSE)
leaflet(data = mapStates) %>% addTiles() %>%
  addPolygons(fillColor = topo.colors(10, alpha = NULL), stroke = FALSE)


###################### old not super code

m <- leaflet() %>% setView(lng = -67.1770, lat = 18.2520, zoom = 16)
m %>% addProviderTiles("Acetate.terrain") # this works but crude titles
#
#
m <- leaflet() %>% setView(lng = -67.1770, lat = 18.2520, zoom = 18)
m %>% addProviderTiles("CartoDB.Positron") # shows flood plain as well
#
#
m <- leaflet() %>% setView(lng = -67.1770, lat = 18.2520, zoom = 18)
m %>% addProviderTiles("Esri.WorldStreetMap") # this is good but does not show all roads


