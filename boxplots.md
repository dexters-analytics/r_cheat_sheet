boxplots
================

### Boxplot pro-tips

  - Helps answer the question: "how does X (ind. var) affect Y (dep.
    var)?

<!-- end list -->

``` r
mtcars %>% tibble() %>% 
    ggplot(aes(x = as.factor(cyl), y = mpg)) +
    geom_boxplot() + coord_flip()
```

![](boxplots_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->
