# WORKING WITH EXCEL


#### save to clipboard (super helpful)

This a great way to quickly summarize a bit of data then copy from R and paste into Excel.

```{r}
utils::write.table("clipboard", sep="\t", col.names = F, row.names = F)
```

