#' A function for filter matrix a generate a heatmap
#'
#' @param x una matriz de genes y especies
#' @param cutoff corte para evaluar matrix
#'
#' @return a complexheatmap object
#' @export
#'
#' @examples
#' expresion_genes <- matrix(rnorm(100), nrow = 10)
#' rownames(expresion_genes) <- paste0("gene_",letters[1:10])
#' colnames(expresion_genes) <- paste0("especie_",letters[1:10])
#'
#' filter_matrix(x = expresion_genes, cutoff = 0)
#'
filter_matrix <- function(x, cutoff = 0){
  filter_x <- x
  filter_x[filter_x <= cutoff]  = NA

  ComplexHeatmap::Heatmap(filter_x,
                          cluster_columns = FALSE,
                          cluster_rows = FALSE,
                          heatmap_legend_param = list(title = "log2"))
}
