source("renv/activate.R")

pkg <- c("tidyverse", "broom", "patchwork", "GGally", "caret", "plotly", "rmarkdown", "car", "MASS", "skimr")

for (p in pkg) {
  if (!requireNamespace(p, quietly = TRUE)) {
    install.packages(p)
  }
}
