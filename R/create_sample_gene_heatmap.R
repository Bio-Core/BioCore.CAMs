create_sample_gene_heatmap <- function(x) {
  plot <- lattice::levelplot(
    x=t(as.matrix(x)),
    xlab='',
    ylab='',
    scales=list(x=list(rot=90))
  )
  return(plot)
}
