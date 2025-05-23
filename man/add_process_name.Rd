% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/code_names.R
\name{add_process_name}
\alias{add_process_name}
\title{Get process names from process codes}
\usage{
add_process_name(
  table,
  code_column = "process_code",
  name_column = "process_name"
)
}
\arguments{
\item{table}{The table that will be modified with a new column.}

\item{code_column}{The name of the column in \code{table} containing the codes.}

\item{name_column}{The name of the output column containing the names.}
}
\value{
A tibble with all the contents of \code{table} and an extra column
named \code{name_column}, which contains the names. If there is no name match,
an \code{NA} is included.
}
\description{
Add a new column to an existing tibble with the corresponding name
for each process code. The codes are assumed to be from those defined by
the FABIO model.
}
\examples{
table <- tibble::tibble(process_code = c("p017", "p076", "dummy"))
add_process_name(table)

table |>
  dplyr::rename(my_process_code = process_code) |>
  add_process_name(code_column = "my_process_code")

add_process_name(table, name_column = "my_custom_name")
}
