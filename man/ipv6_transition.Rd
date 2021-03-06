% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ipv6_transition.R
\name{ipv6_transition}
\alias{ipv6_transition}
\alias{is_ipv4_mapped}
\alias{extract_ipv4_mapped}
\title{IPv6 transition mechanisms}
\usage{
is_ipv4_mapped(x)

extract_ipv4_mapped(x, keep_ipv6 = FALSE)
}
\arguments{
\item{x}{An \code{\link{ip_address}} vector}

\item{keep_ipv6}{A logical indicating whether IPv6 addresses that are
not IPv4-mapped should be kept or converted to \code{NA}. If \code{FALSE}
(the default), the returned vector will only contain IPv4 addresses.}
}
\value{
An \code{\link{ip_address}} vector
}
\description{
There are multiple mechanisms designed to help with the transition
from IPv4 to IPv6, which usually involve embedding an IPv4 address
within an IPv6 address. These functions make it possible to extract
the embedded IPv4 addresses.
}
\details{
Addresses already in the target address space are unaffected by
these functions.
}
\examples{
is_ipv4_mapped(ip_network("::ffff:0.0.0.0/96"))

extract_ipv4_mapped(ip_address("::ffff:192.0.2.128"))
}
