### EXPLORATORY DATA ANALYSIS (PRO-TIPS)


#### Exploring Trends over Time

When exploring a new dataset with continuous data over time, try this:

1. randomly sample ~6 unique values from your categorical attribute.
2. plot random samples using geom_line()
3. watch for trends that pop out.
4. if trends are evident, ask these questions:
    a. which group has the most/highest Y?
    b. which group has been changing the fastest?

```{r}
data_processed %>% 
    filter(country %in% sample(unique(country), 6)) %>% 
    ggplot(aes(year, y-var, color = country)) +
    geom_line()
    scale_y_continuous(labels = scales::percent_format)
```