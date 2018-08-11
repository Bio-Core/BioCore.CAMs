\name{import_rsem_gene_results_files}
\alias{import_rsem_gene_results_files}
\title{
Import RSEM gene results files
}
\description{
A function that imports that results files from RSEM processing.
}
\usage{
import_rsem_gene_results_files(path = ".", pattern = ".genes.results", header = NULL)
}
\arguments{
  \item{path}{Full path to the RSEM output files (optional, default: .}
  \item{pattern}{text pattern to search in file names (optional, default: )}
  \item{header}{vector of column names to use as the data frame header (optional, default: NULL)}
}
\value{Returns a dataframe containing the imported RSEM output data}
\author{Richard J. de Borja <richard.deborja@uhnresearch.ca>}
\keyword{ rsem }
\keyword{ import }
