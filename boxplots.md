---
title: "boxplots"
output:
  github_document
---

### Boxplot pro-tips

* Helps answer the question: "how does X (ind. var) affect Y (dep. var)?
    * in other words: does X explain variation within Y?

* Always interesting to do this by groups with in our data; BUT we need to ask:
    1) Are the distributions of Y (dep. var) somewhat normal (bell-shaped) within each group  of X (ind. var).
    2) If the distributions are somewhat far from normal then boxplots really aren't appropriate to use - if is then they are REALLY good for understanding distributions/variability.

```{r, include=F}
library(tidyverse)
library(tidyquant)
theme_set(theme_tq())
```

#### 1) Check for Normalcy

```{r}
mtcars %>% tibble() %>% 
    ggplot(aes(x = mpg, fill = as.factor(cyl))) +
    geom_histogram(binwidth = 3) +
    facet_wrap(~as.factor(cyl), scale = "free_y")
```

#### 2) Visualize distributions using Boxplots

```{r}
mtcars %>% tibble() %>% 
    ggplot(aes(x = as.factor(cyl), y = mpg)) +
    geom_boxplot() + coord_flip()
```

