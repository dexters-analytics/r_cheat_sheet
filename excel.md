# WORKING WITH EXCEL


#### Writing + Saving files 

```{r}
library(writexl)

# save to clipboard (super helpful)
write.table("clipboard", sep="\t", col.names = F, row.names = F)
```

