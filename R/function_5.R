#' A function which takes a data frame of codons and counts them before plotting in a column plot (idk?)
#'
#' @param amino_acids a string of amino acids in single letter format
#'
#' @return returns a column plot of codon counts
#' @export
#' @import ggplot2
#' @importFrom stringr str_split boundary str_count
#'
plot_aas <- function(amino_acids){
  aa_string <- amino_acids |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(aa_string, function(amino_acid) stringr::str_count(string = amino_acids, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["amino_acids"]] <- rownames(counts)

  aa_count <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = amino_acids, y = Counts, fill = amino_acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aa_count)
}
