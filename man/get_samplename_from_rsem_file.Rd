\name{get_samplename_from_rsem_file}
\alias{get_samplename_from_rsem_file}
\title{
Get the sample name from the RSEM output file.
}
\description{
A function that extracts the sample name from the RSEM output file.  The format is usually: <samplename>.genes.results
}
\usage{
get_samplename_from_rsem_file(file = NULL, pattern = ".genes.results")
}
\arguments{
  \item{file}{RSEM filename (required)}
  \item{pattern}{pattern in file to extract and remove (optional, default: .genes.results)}
}
\value{Returns a string containing the sample name.}
\author{
Richard J. de Borja <richard.deborja@uhnresearch.ca>
}
\examples{
  samplename <- get_samplename_from_rsem_file(file="S1.genes.results")
}
\keyword{ rsem }
\keyword{ samplename }
