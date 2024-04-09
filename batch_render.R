qmds <- list.files(pattern = "^[1-3].[1-5].*qmd$",
                   path = ".",
                   full.names = TRUE)

for (qq in qmds) {
  message("Processing ", qq)
  syscall <- paste0("quarto render ", qq, " --to revealjs")
  system(syscall)
}
