% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/references.R
\name{find_references}
\alias{find_references}
\title{Extract all references}
\usage{
find_references(file_path)
}
\arguments{
\item{file_path}{The path to the \code{.xml}-file from which references should be
extracted.}
}
\value{
A \code{tibble} with three two containing the references:
\itemize{
\item \code{basename_id}: the identifier for the article the references come from.
\item \code{references}: the text of the references.
}
}
\description{
This function extracts the content of \code{ref-list} from the \code{xml}-file.
}
\details{
References are currently not fully supported by DfR, and there is no
comprehensive documentation on the different variants. Currently, \code{jstor}
tries to extract the references as closely to how they appear in the data.

For newer \code{xml}-files, there would be the option to extract single elements
like authors, title or date of the source, but this is not yet implemented.

In general, the implementation is not very fast - articles with many
references slow the process down.
}
\examples{
find_references(jstor_example("sample_with_references.xml"))
}
