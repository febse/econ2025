test = list(
  name = "q4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(ex_rows, 6513)
        testthat::expect_equal(format(ex_first_date, "%Y-%m-%d"), "1999-01-04")

        testthat::expect_equal(ex_unique_years, 26)
        testthat::expect_equal(ex_avg_rate, 1.18761, tolerance=1e-5)

        testthat::expect_true(ex$RATE_GT_1[1])
        testthat::expect_equal(ex_days_gt_1, 5697)
      }
    )
  )
)