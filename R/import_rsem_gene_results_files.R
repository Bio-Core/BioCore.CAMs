import_rsem_gene_results_files <- function(path=".", pattern='.genes.results', header=NULL) {
  files <- list.files(
    path=path,
    recursive = TRUE,
    pattern=pattern,
    full.names=TRUE
  )
  data <- data.frame()
  for(i in 1:length(files)) {
    tmp_data <- read.table(
      file=files[i],
      header=TRUE,
      as.is=TRUE,
      sep="\t",
      quote="\""
    )
    tmp_data$sample <- get_samplename_from_rsem_file(file=files[i])
    if (is.null(header)) {
      colnames(tmp_data) <- rsem_gene_results_header()
    }
    data <- rbind(data, tmp_data)
  }
  return(data)
}
