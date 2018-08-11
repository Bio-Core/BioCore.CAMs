get_samplename_from_rsem_file <- function(file=NULL, pattern='.genes.results') {
  if(is.null(file)) stop("Mandatory argument file is missing")

  samplename <- basename(file)
  samplename <- gsub(
    x = samplename,
    pattern = pattern,
    replacement = ''
  )
  return(samplename)
}
