############################# Web Scrabing in R ################################


# burma
url <- "https://en.wikipedia.org/wiki/Myanmar"
h <- read_html(url)
class(h)
h


tab <- h %>% html_nodes("table")
tab
tab <- tab[[3]]


tab <- tab %>% html_table
class(tab)

tab <- tab %>% setNames(c("Team","Payroll","Average"))
head(tab)
tab


