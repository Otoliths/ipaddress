#' Classify version of IP address space
#'
#' @param x An \code{\link{ip_address}} or \code{\link{ip_network}} vector
#'
#' @examples
#' ip <- ip_address(c("0.0.0.1", "192.168.0.1", "2001:db8::7334"))
#'
#' is_ipv4(ip)
#'
#' is_ipv6(ip)
#'
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