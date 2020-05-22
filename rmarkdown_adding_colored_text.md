Adding Colored Text to RMarkdown
================

### Credit to: Casper Crause

I snagged this awesome example from a LinkedIn post by Casper in May,
2020. Post here:
[link](https://www.linkedin.com/posts/casper-crause_2ce350-rstats-r-activity-6667045694903345152-RSav)

rmarkdown tip:

Want your reports to stand out? Why not add 🅲🅾🅻🅾🆁 to your font? Whether
you knit your reports into a pdf or html format, both are possible\!
Here is how to do it: ①. Create a custom function that tests whether
your output is latex( PDF) or HTML and let it write the necessary syntax
for you\! ②. Use your function inline to render the text in color

``` r
add_color <- function(string, color) {
if (knitr::is_latex_output()) {
sprintf("\\textcolor{%s}{%s}", color, string)
} else if (knitr::is_html_output()) {
sprintf("<span style='color: %s;'>%s</span>", color,
string)
} else string
}
```

In my demonstration, I will knit to an HTML document 𝐅𝐚𝐢𝐫 𝐰𝐚𝐫𝐧𝐢𝐧𝐠 When
you render to html you can also use hexcodes to specify color like this
\#2ce350 When knitting to pdf it is best to state the color by name like
this “blue”

This is an R Markdown document. Markdown is a simple formatting syntax
for authoring ***<span style="color: blue;">HTML</span>***,
**<span style="color: red;">PDF</span>**, and
<span style="color: green;">MSWord</span> documents.

Casper likes <span style="color: orange;">cheese</span>

Additional reading: <https://lnkd.in/g3yN3ys>
