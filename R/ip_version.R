#' Version of the address space
#'
#' @param x An \code{\link{ip_address}} or \code{\link{ip_network}} vector
#' @return A logical vector
#'
#' @examples
#' ip <- ip_address(c("0.0.0.1", "192.168.0.1", "2001:db8::7334"))
#'
#' is_ipv4(ip)
#'
#' is_ipv6(ip)
#' @name is_ipv6
NULL

#' @rdname is_ipv6
#' @export
is_ipv4 <- function(x) {
  assertthat::assert_that(is_ip_address(x) || is_ip_network(x))

  !field(x, "is_ipv6")
}

#' @rdname is_ipv6
#' @export
is_ipv6 <- function(x) {
  assertthat::assert_that(is_ip_address(x) || is_ip_network(x))

  field(x, "is_ipv6")
}

#' Size of the address space
#'
#' The total number of bits available in the address space. IPv4 uses
#' 32-bit addresses and IPv6 uses 128-bit addresses.
#'
#' @param x An \code{\link{ip_address}} or \code{\link{ip_network}} vector
#' @return An integer vector
#'
#' @examples
#' x <- ip_address(c("192.168.0.1", "2001:db8::7334"))
#'
#' max_prefix_length(x)
#' @seealso [is_ipv6()], [prefix_length()]
#' @export
max_prefix_length <- function(x) {
  assertthat::assert_that(is_ip_address(x) || is_ip_network(x))

  ifelse(field(x, "is_ipv6"), 128L, 32L)
}
