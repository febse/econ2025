test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(ex$RATE_EUR_USD[1], 1 / ex$RATE[1], tolerance=1e-6)

        testthat::expect_equal(ex_avg_rate_tibble$RATE_AVG, 1.19, tolerance=1e-2)

        testthat::expect_equal(nrow(ex_avg_rate_by_year), 26)
        testthat::expect_equal(ex_avg_rate_by_year$RATE_AVG[1], 1.07, tolerance=1e-2)

        testthat::expect_equal(nrow(ex_avg_rate_by_year_month), 303)
        testthat::expect_equal(ex_avg_rate_by_year_month$RATE_AVG[1], 1.16, tolerance=1e-2)
        testthat::expect_equal(ex_avg_rate_by_year_month$RATE_STD[1], 0.0107, tolerance=1e-2)
      }
    )
  )
)