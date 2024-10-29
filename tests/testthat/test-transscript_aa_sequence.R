test_that("transscript_aa_sequence transscripts RNA sequence correctly", {
  rna_vector <- c("AUG", "UUU", "GGC")
  result <- transscript_aa_sequence(rna_vector)

  # The expected result
  expected <- "MFG"
  expect_equal(result, expected)
})
