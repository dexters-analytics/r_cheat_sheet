### MAKING MAPS

### Links to helpful resources related to making maps

* General map making using library(maps): https://socviz.co/maps.html

### Helpful libraries for making maps

```{r}
library(ggthemes) # to access theme_map for clean canvis
library(maps)
```


### Data from Maps with Code/Country Matching

Useful for data where I have country codes but my country names don't match those given in the mapping() libraries i want to use.

To rectify this situation, use the iso dataset to join by code and then add the 'mapname' feature into my data - then, i can make awesome maps using awesome libraries with built in maps e.g., world map. 

When i don't have lat/long say for countries (in my data) but i want to map an attribute in my data, i can use my iso/mapnames data that i've created and join to the ggplot2::map_data("world") dataset (this has lat/long/region/countries/etc.) 

```{r}
# get data for code matching/joining
maps::iso3166 %>% tibble()
```

To do this, i need to add 'mapname' to my data and then join my data to something like map_data('world') - that will give me all the world/borders information needed for mapping (e.g., lat/long) + will have my data joined; this allows us to fill/color the map by attributes in our data that are associated with countries.

```{r}
# example
library(tidyverse)
library(maps)

# get data
malaria_incidents_by_country <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2018/2018-11-13/malaria_inc.csv")

# prep data for mapping
malaria_incidents_by_country %>%
    setNames(c("entity", "code", "year", "incidents")) %>% 
    
    # join iso data to my data
    inner_join(maps::iso3166 %>% 
                   select(a3, mapname), by = c(code = "a3")) %>%
    
    # join now to spatial data (lat/long)
    left_join(map_data("world"), by = c(mapname = "region"))
```

