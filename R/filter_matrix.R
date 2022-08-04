subset_heatmap <- function(x, especies = NULL, genes = NULL) {
  # subset matrix
  x_subset <- x[genes,especies]
  # plot heatmap
  ComplexHeatmap::Heatmap(x_subset,
                          cluster_columns = FALSE,
                          heatmap_legend_param = list(title = "log2"))
}
