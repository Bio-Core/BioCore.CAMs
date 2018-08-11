\name{create_sample_gene_heatmap}
\alias{create_sample_gene_heatmap}
\title{Create a heatmap of samples and genes}
\description{
A function that takes a sample versus gene matrix and plots a heatmap
to compare expressed genes among a cohort of samples.
}
\usage{
create_sample_gene_heatmap(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{a gene (row) by sample (columns) matrix containing normalized counts (required)}
}
\value{
Returns a Lattice plot object.
}
\references{
To be completed.
}
\author{
Richard J. de Borja <richard.deborja@uhnresearch.ca>
}
\examples{
  gene_sample <- data.frame(S1 = c(38.97, 5.24), S2=c(0.27, 2.17))
  rownames(gene_sample) <- c('AKT1', 'NF2')
  create_sample_gene_heatmap(x=gene_sample)
}
\keyword{ heatmap }
\keyword{ gene }
\keyword{ sample }
