#' Coercion
#'
#' Double dispatch methods to support [vctrs::vec_ptype2()].
#'
#' @inheritParams vctrs::vec_ptype2
#' @return A prototype if `x` and `y` can be safely coerced to the same
#'   prototype; otherwise it returns an error.
#' @keywords internal
#' @method vec_ptype2 ip_address
#' @export
#' @export vec_ptype2.ip_address
vec_ptype2.ip_address <- function(x, y, ...) UseMethod("vec_ptype2.ip_address", y)

#' @method vec_ptype2.ip_address default
#' @export
vec_ptype2.ip_address.default <- function(x, y, ..., x_arg = "x", y_arg = "y") {
  vec_default_ptype2(x, y, x_arg = x_arg, y_arg = y_arg)
}

#' @method vec_ptype2.ip_address ip_address
#' @export
vec_ptype2.ip_address.ip_address <- function(x, y, ...) new_ip_address()

#' @method vec_ptype2.ip_address character
#' @export
vec_ptype2.ip_address.character <- function(x, y, ...) new_ip_address()

#' @method vec_ptype2.character ip_address
#' @export
vec_ptype2.character.ip_address <- function(x, y, ...) new_ip_address()


#' Coercion
#'
#' Double dispatch methods to support [vctrs::vec_ptype2()].
#'
#' @inheritParams vctrs::vec_ptype2
#' @return A prototype if `x` and `y` can be safely coerced to the same
#'   prototype; otherwise it returns an error.
#' @keywords internal
#' @method vec_ptype2 ip_network
#' @export
#' @export vec_ptype2.ip_network
vec_ptype2.ip_network <- function(x, y, ...) UseMethod("vec_ptype2.ip_network", y)

#' @method vec_ptype2.ip_network default
#' @export
vec_ptype2.ip_network.default <- function(x, y, ..., x_arg = "x", y_arg = "y") {
  vec_default_ptype2(x, y, x_arg = x_arg, y_arg = y_arg)
}

#' @method vec_ptype2.ip_network ip_network
#' @export
vec_ptype2.ip_network.ip_network <- function(x, y, ...) new_ip_network()

#' @method vec_ptype2.ip_network character
#' @export
vec_ptype2.ip_network.character <- function(x, y, ...) new_ip_network()

#' @method vec_ptype2.character ip_network
#' @export
vec_ptype2.character.ip_network <- function(x, y, ...) new_ip_network()
