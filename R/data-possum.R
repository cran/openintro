#' Possums in Australia and New Guinea
#'
#' Data representing possums in Australia and New Guinea. This is a copy of the
#' dataset by the same name in the `DAAG` package, however, the dataset
#' included here includes fewer variables.
#'
#' @name possum
#' @docType data
#' @format A data frame with 104 observations on the following 8 variables.
#' \describe{
#'   \item{site}{The site number where the possum was trapped.}
#'   \item{pop}{Population, either \code{Vic} (Victoria) or \code{other}
#'   (New South Wales or Queensland).}
#'   \item{sex}{Gender, either \code{m} (male) or \code{f} (female).}
#'   \item{age}{Age.}
#'   \item{head_l}{Head length, in mm.}
#'   \item{skull_w}{Skull width, in mm.}
#'   \item{total_l}{Total length, in cm.}
#'   \item{tail_l}{Tail length, in cm.}
#'   }
#' @source Lindenmayer, D. B., Viggers, K. L., Cunningham, R. B., and Donnelly,
#' C. F. 1995. Morphological variation among columns of the mountain brushtail
#' possum, Trichosurus caninus Ogilby (Phalangeridae: Marsupiala). Australian
#' Journal of Zoology 43: 449-458.
#' @keywords datasets
#' @examples
#' library(ggplot2)
#'
#' # Skull width vs. head length
#' ggplot(possum, aes(x = head_l, y = skull_w)) +
#'   geom_point()
#'
#' # Total length vs. sex
#' ggplot(possum, aes(x = total_l, fill = sex)) +
#'   geom_density(alpha = 0.5)
"possum"
