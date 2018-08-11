create_sample_gene_matrix <- function(data=NULL, genes=NULL, samples=NULL) {
  if (is.null(data)) stop("Mandatory argument data is missing")

  if (!is.null(samples)) {
    data_filtered <- data %>%
      dplyr::filter(sample %in% samples)
  } else {
    data_filtered <- data
  }
  unique_samples <- unique(data_filtered$sample)

  if (!is.null(genes)) {
    data_filtered <- data_filtered %>%
      dplyr::filter(gene_id %in% genes)
  }
  unique_genes <- unique(data_filtered$gene_id)

  sample_gene_matrix <- data.frame(
    matrix(
      nrow=length(unique_genes),
      ncol=length(unique_samples)
    )
  )
  colnames(sample_gene_matrix) <- unique_samples
  rownames(sample_gene_matrix) <- unique_genes

  for (i in 1:nrow(data_filtered)) {
    sample_gene_matrix[data_filtered[i,]$gene_id, data_filtered[i,]$sample] <- data_filtered[i,"fpkm"]
  }

  return(sample_gene_matrix)
}
