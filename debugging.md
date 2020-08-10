### DEBUGGING


### Search last error on stackoverflow - programattically from R

Thomas Neitmann (shared on Linkedin): 

> My secret debugging technique for #R: automatically search for the error on stackoverflow. Hacker level over 9000 😎

> Seriously, "googling the error message" is an *essential* skill for anyone who programs. Why do the extra mileage and copy-paste an error you encounter into Google when you can search for it with one click directly from within you programming environment?

```{r}
# the function:
search_last_err_on_so <- function() {
    last_err_msg <- geterrmessage()
    if (grepl("rlang::last_error", last_err_msg)) {
        last_err_msg <- rlang::last_error()$message
    }
    browseURL(paste0(
        "https://stackoverflow.com/search?q=",
        URLencode(last_err_msg)
    ))
}

options(error = search_last_err_on_so)
```
