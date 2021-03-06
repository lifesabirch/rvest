% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/html.R
\name{html_text}
\alias{html_text}
\alias{html_name}
\alias{html_children}
\alias{html_attrs}
\alias{html_attr}
\title{Extract attributes, text and tag name from html.}
\usage{
html_text(x, trim = FALSE)

html_name(x)

html_children(x)

html_attrs(x)

html_attr(x, name, default = NA_character_)
}
\arguments{
\item{x}{A document, node, or node set.}

\item{trim}{If \code{TRUE} will trim leading and trailing spaces.}

\item{name}{Name of attribute to retrieve.}

\item{default}{A string used as a default value when the attribute does
not exist in every node.}
}
\value{
\code{html_attr}, \code{html_tag} and \code{html_text}, a character
vector; \code{html_attrs}, a list.
}
\description{
Extract attributes, text and tag name from html.
}
\examples{
movie <- read_html("https://en.wikipedia.org/wiki/The_Lego_Movie")
cast <- html_nodes(movie, "tr:nth-child(8) .plainlist a")
html_text(cast)
html_name(cast)
html_attrs(cast)
html_attr(cast, "href")
}
