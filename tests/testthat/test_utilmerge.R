# nolint start
context("util_merge")

set.seed(5)
pL <- nlmr::nlm_percolation(50, 50)
sL <- nlmr::nlm_random(50, 50)
mL <- util_merge(pL, sL)

test_that("basic functionality", {
  expect_error(util_merge(nlmr::nlm_percolation(50, 50),
                          nlmr::nlm_random(50, 50)),
               NA)
})

test_that("mL behaves like it should", {
  expect_that(mL, is_a("RasterLayer"))
})

test_that("mL behaves like it should", {
  mL_test <-  util_rescale(pL + sL)
  expect_equal(mL[], mL_test[])
})


# nolint end
