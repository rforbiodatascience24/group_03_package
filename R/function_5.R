

#' A function which takes a data frame of codons and counts them before plotting in a column plot (idk?)
#'
#' @param codon_table a dataframe of codons
#'
#' @return returns a column plot of codon counts
#' @export
#' @import ggplot2
#' @importFrom stringr str_split boundary str_count
#'
function_5 <- function(codon_table){
  codon_vector <- codon_table |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(codon_vector, function(amino_acid) stringr::str_count(string = codon_table, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["codon_table"]] <- rownames(counts)

  codon_count <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = codon_table, y = Counts, fill = codon_table)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(codon_count)
}
