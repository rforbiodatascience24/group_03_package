#' Transscript Amino acid Sequence (Function_4)
#'
#' @param codons <- A string of RNA codons
#'
#' @return A vector of transscripted amino acids in pairs of 3 in their
#'         single letter form
#' @export
#'
#' @examples transscript_aa_sequence("AUGUUGCCGCAACGG")
#' transscript_aa_sequence("AUGUAA")
transscript_aa_sequence <- function(codons){
  codon_sequence_raw <- paste0(codon_table[codons], collapse = "")
  return(codon_sequence_raw)
}
