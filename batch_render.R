# Lecture slides
library(quarto)

qmds <- list.files(pattern = "^[1-5].[1-5].*qmd$",
                   path = ".",
                   full.names = TRUE)

for (qq in qmds) {
  quarto_render(input = qq,
                metadata = list("self-contained" = "true"))
}


## Problem sets

qmds <- list.files(pattern = "^PS_[1-4][_Key]*.qmd$",
                   path = "Problem_Sets",
                   full.names = TRUE)

for (qq in qmds) {
  quarto_render(input = qq,
                metadata = list("self-contained" = "true"))
}
