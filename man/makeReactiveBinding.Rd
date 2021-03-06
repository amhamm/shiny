% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reactives.R
\name{makeReactiveBinding}
\alias{makeReactiveBinding}
\title{Make a reactive variable}
\usage{
makeReactiveBinding(symbol, env = parent.frame())
}
\arguments{
\item{symbol}{Name of variable to make reactive, as a string.}

\item{env}{Environment in which to create binding. Expert use only.}
}
\value{
None.
}
\description{
Turns a normal variable into a reactive variable, that is, one that has
reactive semantics when assigned or read in the usual ways. The variable may
already exist; if so, its value will be used as the initial value of the
reactive variable (or \code{NULL} if the variable did not exist).
}
\examples{
reactiveConsole(TRUE)

a <- 10
makeReactiveBinding("a")

b <- reactive(a * -1)
observe(print(b()))

a <- 20
a <- 30

reactiveConsole(FALSE)
}
\keyword{internal}
