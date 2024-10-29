#' Sample nucleotides
#'
#' This function generates a random sequence of nucleotides.
#'
#' @param nr_nuc Integer - the number of nucleotides to sample
#'
#' @return String - A sequence of nucleotides the length of the input parameter
#' @export
#'
#' @examples
#' sample_nuc(1)
#' sample_nuc(10)
sample_nuc <- function(nr_nuc){
  nuc_seq <- sample(c("A", "T", "G", "C"), size = nr_nuc, replace = TRUE)
  collapsed_nuc_seq <- paste0(nuc_seq, collapse = "")
  return(collapsed_nuc_seq)
}
