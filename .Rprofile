source("renv/activate.R")

pkg <- c("tidyverse", "broom", "patchwork", "GGally", "caret", "plotly", "rmarkdown")

for (p in pkg) {
  if (!require(p)) {
    install.packages(p)
  }
}
