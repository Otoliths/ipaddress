% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/within_network.R
\name{network_in_network}
\alias{network_in_network}
\alias{is_subnet}
\alias{is_supernet}
\title{Network membership of other IP networks}
\usage{
is_subnet(network1, network2)

is_supernet(network1, network2)
}
\arguments{
\item{network1}{An \code{\link{ip_network}} vector}

\item{network2}{An \code{\link{ip_network}} vector}
}
\value{
A logical vector
}
\description{
These functions check if an IP network is a subnet or supernet
of another network.
}
\examples{
net1 <- ip_network("192.168.1.0/24")
net2 <- ip_network("192.168.1.128/30")

is_subnet(net2, net1)

is_supernet(net1, net2)
}
