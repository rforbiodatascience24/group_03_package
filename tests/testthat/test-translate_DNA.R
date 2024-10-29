test_that("Translation works", {
  expect_equal(translate_DNA('AGTCTT'), 'AGUCUU')
})
