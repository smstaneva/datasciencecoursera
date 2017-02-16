con = url("http://scholar.google.com/citations?user=HI-I6COAAAAJ&hl=en")
htmlCode = readLines(con)
close(con)
htmlCode

library(XML)
url <- "http://scholar.google.com/citations?user=HI-I6COAAAAJ&hl=en"
html <- htmlTreeParse(url, useInternalNodes = T)
xpathSApply(html, "//title", xmlValue)

xpathSApply(html, "//td[@id='col-citedby']", xmlValue)

library(httr); html2 = GET(url)
content2 = content(html2, as = "text")
parseHtml = htmlParse(content2, asText = TRUE)
xpathSApply(parseHtml, "//title", xmlValue)

pg1 = GET("http://httpbin.org/basic-auth/user/passwd")
pg1

pg2 = GET("http://httpbin.org/basic-auth/user/passwd",
          authenticate("user", "passwd"))
pg2

names(pg2)

