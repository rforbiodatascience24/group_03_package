test_that("Nuc is generated", {
  set.seed(3)
  expect_equal(sample_nuc(1), 'A')
})
