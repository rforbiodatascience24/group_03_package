# File: test-extract_codons.R

test_that("extract_codons extracts codons correctly", {
  rna_seq <- "AUGGUGAUG"
  start <- 1
  result <- extract_codons(rna_seq, start)

  # Expected output as a vector of codons
  expected <- c("AUG", "GUG", "AUG")

  # Test if the result matches the expected codons
  expect_equal(result, expected)
})
