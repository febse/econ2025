test = list(
  name = "q3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(length(bills_bgn), 24)
        testthat::expect_equal(bills_bgn[1], 231.2 * 1.95583, tolerance=1e-6)

        testthat::expect_equal(x_sum, 12567401)

        testthat::expect_equal(bills_months, 24)
        testthat::expect_equal(bills_years, 2)

        testthat::expect_equal(length(bills_high), 11)
        testthat::expect_equal(length(bills_low), 6)

        testthat::expect_equal(bills_high_count, 11)

        testthat::expect_equal(bills_high_avg, 547.4109, tolerance=1e-6)
      }
    )
  )
)