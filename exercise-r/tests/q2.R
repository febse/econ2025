test = list(
  name = "q2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(length(x), 4994)
        testthat::expect_equal(x[1], 20)
        testthat::expect_equal(x[2], 21)
        testthat::expect_equal(x[length(x)], 5013)

        testthat::expect_equal(x_sum, 12567401)
      }
    )
  )
)