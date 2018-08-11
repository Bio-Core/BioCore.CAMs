\name{create_sample_gene_matrix}
\alias{create_sample_gene_matrix}
\title{Create a sample by gene matrix of normalized count values}
\description{A function for creating a gene by sample matrix containing normalized counts.  The expected input is a dataframe with gene_id, sample and fpkm counts.}
\usage{
create_sample_gene_matrix(data = NULL, genes = NULL, samples = NULL)
}
\arguments{
  \item{data}{Dataframe containing gene_id, sample and fpkm. (required)}
  \item{genes}{A vector of gene names to filter (optional, default: NULL)}
  \item{samples}{A vector of sample names to subset (optional, default: NULL)}
}
\value{
Returns a dataframe containing samples as columns and gene names as rows.
}
\author{Richard J. de Borja <richard.deborja@uhnresearch.ca}
\examples{
  data <- data.frame(
    gene_id=c("TP53", "ATK1", "NF2", "TP53", "ATK1", "NF2","TP53", "ATK1", "NF2"),
    sample=c("S1", "S1", "S1", "S2", "S2", "S2", "S3", "S3", "S3"),
    fpkm=c(1.06, 2.4, 2.3, 1.52, 1.33, 1.4, 2.7, 2.1, 8.2))
  data$gene_id <- as.character(data$gene_id)
  data$sample <- as.character(data$sample)
  out_matrix <- create_sample_gene_matrix(
    data=data
  )
}
\keyword{ gene }
\keyword{ sample }
\keyword{ fpkm }
