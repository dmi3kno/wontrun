% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{get_examples}
\alias{get_examples}
\title{Downloads Rd from an archived source package}
\usage{
get_examples(sources_df, clean = TRUE, test = FALSE)
}
\arguments{
\item{sources_df}{Data frame. A data frame as returned by `get_sources_for_selected_packages()`}

\item{clean}{Boolean, defaults to TRUE. If TRUE, only keeps man/ folder containing the documentaton. If FALSE, keeps entire package.}

\item{test}{Boolean, defaults to FALSE. TRUE is only useful for running unit tests.}
}
\value{
Side-effect. No returned object, writes a Rd files to disk.
}
\description{
Downloads Rd from an archived source package
}
\examples{
\dontrun{
# First, get list of packages. In this case, the ones in the "Econometrics" view as of "2015-01-01"
ctv_econ <- get_packages_from_view("Econometrics", date = "2015-01-01")

# Now, get the names, versions, and urls for these packages
ctv_econ_sources <- get_sources_for_selected_packages(ctv_econ)

# It is now possible to download the man/ folders of these packages with the following lines
get_examples(ctv_econ_sources)
}
}
