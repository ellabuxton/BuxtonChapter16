usethis::use_testthat()
library(testthat)
test_that('FizzBuzz function produces correct output', {
  expect_equal(FizzBuzz(3), 'Fizz') # divisible by 3 only
  expect_equal(FizzBuzz(5), 'Buzz') # divisible by 5 only
  expect_equal(FizzBuzz(15), 'FizzBuzz') # divisible by both 3 and 5
  expect_error(FizzBuzz(0)) # zero returns error
  expect_error(FizzBuzz(-1)) # negative returns error
  expect_error(FizzBuzz(1e309)) # infinite returns error
  expect_equal(FizzBuzz(11), 11) # returns the input val
  expect_equal(FizzBuzz(c(3, 8, 6, 17, 5, 15)), c('Fizz', 8, 'Fizz', 17, 'Buzz', 'FizzBuzz'))
})                      # test vector
test_that('FizzBuzz function returns same number of input as output', {
  input1 <- 3
  output1 <- FizzBuzz(input1)
  expect_equal(length(output1), length(input1))
  input2 <- c(3, 8, 6, 17, 5, 15)
  output2 <- FizzBuzz(input2)
  expect_equal(length(output2), length(input2))
})
