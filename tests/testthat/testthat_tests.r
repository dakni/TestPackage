library(TestPackage)
x <- add_2(2)
y <- add_3(5)

context("this is my first ever test")

test_that("my function works", {
  expect_equal(x,4)
})

context("this is my second ever test")

test_that("is numeric", {
  expect_true(is.numeric(x))
})


context("this is my third ever test")

test_that("add_3", {
  expect_equal(y,8)
})


