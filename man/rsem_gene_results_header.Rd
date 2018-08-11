\name{rsem_gene_results_header}
\alias{rsem_gene_results_header}
\title{Get the RSEM gene results column header}
\description{A function that returns the column headers for the RSEM gene results output file.}
\usage{
rsem_gene_results_header()
}
\value{
Returns a vector of the standard column headers with the addition of a sample column.
}
\author{
Richard J. de Borja <richard.deborja@uhnresearch.ca>
}
\examples{
  data_ex <- data.frame(matrix(nrow=1, ncol=8))
  data_ex[1,] <- c("AKT1", "NM_001243027", 2112.00, 1915.84, 4.00, 0.92, 0.43, "S1")
  colnames(data_ex) <- rsem_gene_results_header()
}
\keyword{ rsem }
\keyword{ column }
\keyword{ header }
