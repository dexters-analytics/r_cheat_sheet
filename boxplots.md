---
title: "boxplots"
output:
  github_document
---

### Boxplot pro-tips

* Helps answer the question: "how does X (ind. var) affect Y (dep. var)?

```{r, include=F}
library(tidyverse)
library(tidyquant)
theme_set(theme_tq())
```

```{r}
mtcars %>% tibble() %>% 
    ggplot(aes(x = as.factor(cyl), y = mpg)) +
    geom_boxplot() + coord_flip()
```

