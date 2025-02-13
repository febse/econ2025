source("renv/activate.R")

pkg <- c("tidyverse", "broom", "patchwork", "GGally", "caret", "plotly", "rmarkdown", "car", "MASS")

for (p in pkg) {
  if (!require(p)) {
    install.packages(p)
  }
}
