% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ncbi_byid.R
\name{ncbi_byid}
\alias{ncbi_byid}
\title{Retrieve gene sequences from NCBI by accession number.}
\usage{
ncbi_byid(ids, format = NULL, verbose = TRUE)
}
\arguments{
\item{ids}{(character) GenBank ids to search for. One or more. Required.}

\item{format}{(character) Return type, e.g., \code{"fasta"}. NOW IGNORED.}

\item{verbose}{(logical) If \code{TRUE} (default), informative messages printed.}
}
\value{
Data.frame of the form:
\itemize{
 \item taxon - taxonomic name (may include some junk, but hard to parse off)
 \item gene_desc - gene description
 \item gi_no - GI number
 \item acc_no - accession number
 \item length - sequence length
 \item sequence - sequence character string
}
}
\description{
Retrieve gene sequences from NCBI by accession number.
}
\details{
If bad ids are included with good ones, the bad ones are silently dropped.
If all ids are bad you'll get a stop with error message.
}
\examples{
\dontrun{
# A single gene
ncbi_byid(ids="360040093")

# Many genes (with different accession numbers)
ncbi_byid(ids=c("360040093","347448433"))
}
}
\seealso{
\code{\link[taxize]{ncbi_search}}, \code{\link[taxize]{ncbi_getbyname}}
}
\author{
Scott Chamberlain \email{myrmecocystus@gmail.com}
}
