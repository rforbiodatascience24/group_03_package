#' Find start and stop codons
#'
#' @param dna_seq A string DNA sequence
#'
#' @return Index positions for start and stop codons in the sequence
#' @export
#'
#' @examples
#' dna_sequence <- "ATGCGTAAATGCGTAGATGCCTGA"
#' codon_positions <- find_stop_start(dna_sequence)
#' print(codon_positions)
find_stop_start <- function(dna_seq) {
  dna_seq <- toupper(dna_seq)

  starts <- gregexpr("ATG", dna_seq)[[1]]

  stops <- unlist(gregexpr("TAA|TAG|TGA", dna_seq))

  results <- list(
    start_codons = starts[starts > 0],
    stop_codons = stops[stops > 0]
  )

  return(results)
}
