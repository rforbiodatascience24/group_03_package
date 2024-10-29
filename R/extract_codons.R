#' Extracts codons from a RNA sequence
#'
#' @param rna_seq RNA sequence
#' @param start Start position of the first codon
#'
#' @return A vector of codons extracted from the RNA sequence starting from the start position provided
#' @export
#'
#' @examples rna_seq <- "AUGGUGAUG" start <- 1 extract_codons(rna_seq, start) # [1] "AUG" "GUG" "AUG"
extract_codons <- function(rna_seq, start = 1){
  seq_length <- nchar(rna_seq)
  codons <- substring(rna_seq,
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}
