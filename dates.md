### DATES


#### Converting Years to Decades (drob trick)

```{r}
mutate(decade = 10 * (year_start %/% 10))
```