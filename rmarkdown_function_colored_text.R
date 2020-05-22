# ADDING COLOR TO RMARKDOWN TEXT

# function for adding color to rmarkdown text
# credit: Casper Crause

add_color <- function(string, color) {
    if (knitr::is_latex_output()) {
        sprintf("\\textcolor{%s}{%s}", color, string)
    } else if (knitr::is_html_output()) {
        sprintf("<span style='color: %s;'>%s</span>", color,
                string)
    } else string
}