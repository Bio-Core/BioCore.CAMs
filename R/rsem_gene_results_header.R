rsem_gene_results_header <- function() {
   rsem_header <- c(
     "gene_id",
     "transcript_ids",
     "length",
     "effect_size",
     "expected_count",
     "tpm",
     "fpkm",
     "sample"
   )
   return(rsem_header)
}
