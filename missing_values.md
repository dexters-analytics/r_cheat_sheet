### MISSING VALUES

This cheat has a variety of ways for exploring missing values within datasets.

* it's nice when columns have > 80% of data - in general.
* measure of missingness...lol


#### Missing values (drob method)

Calculate the mean of those not missing.
* not missing: gets 1's
* missing: gets 0's

The average of the 1's and 0's is the mean 'not missing'

# get as table

```{r}
coffee_ratings %>% 
    summarize(dplyr::across(everything(), ~ mean(!is.na(.)))) %>% 
    gather() %>% 
    arrange(desc(value))
```

# get as visualization

```{r}
coffee_ratings %>% 
    summarize(dplyr::across(everything(), ~ mean(!is.na(.)))) %>% 
    gather() %>% 
    arrange(desc(value)) %>% 
    mutate(key = fct_reorder(key, value)) %>% 
    
    ggplot(aes(value, key)) +
    geom_col()
```

