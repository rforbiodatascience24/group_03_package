#' Translate DNA to RNA
#'
#' @param DNA_string DNA string
#'
#' @return A RNA string - the DNA string but with U's in stead of T's
#' @export
#'
#' @examples
#' translate_DNA('AG')
#' translate_DNA('AGTCTT')
translate_DNA <- function(DNA_string){
  RNA_string <- gsub("T", "U", DNA_string)
  return(RNA_string)
}
