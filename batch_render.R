# Lecture slides

qmds <- list.files(pattern = "^[1-5].[1-5].*qmd$",
                   path = ".",
                   full.names = TRUE)

for (qq in qmds) {
  message("Processing ", qq)
  syscall <- paste0("quarto render ", qq, " --to revealjs")
  system(syscall)
}


## Problem sets

qmds <- list.files(pattern = "^PS_[1-4][_Key]*.qmd$",
                   path = "Problem_Sets",
                   full.names = TRUE)

for (qq in qmds) {
  message("Processing ", qq)
  syscall <- paste0("quarto render ", qq, " --to html")
  system(syscall)
}
