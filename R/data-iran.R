#' iran
#'
#' A data frame containing information about the 2009 Presidential Election in Iran. There were widespread claims of election fraud in this election both internationally and within Iran.
#'
#' @name iran
#' @docType data
#' @format A data frame with 366 observations on the following 9 variables.
#' \describe{
#'   \item{province}{Iranian province where votes were cast.}
#'   \item{city}{City within province where votes were cast.}
#'   \item{ahmadinejad}{Number of votes received by Ahmadinejad.}
#'   \item{rezai}{Number of votes received by Rezai.}
#'   \item{karrubi}{Number of votes received by Karrubi.}
#'   \item{mousavi}{Number of votes received by Mousavi.}
#'   \item{total_votes_cast}{Total number of votes cast.}
#'   \item{voided_votes}{Number of votes that were not counted.}
#'   \item{legitimate_votes}{Number of votes that were counted.}
#'   }
#' @keywords datasets
#' @examples
#'
#' library(dplyr)
#' library(ggplot2)
#' library(tidyr)
#' library(stringr)
#'
#' plot_data <- iran |>
#'   summarize(
#'     ahmadinejad = sum(ahmadinejad) / 1000,
#'     rezai = sum(rezai) / 1000,
#'     karrubi = sum(karrubi) / 1000,
#'     mousavi = sum(mousavi) / 1000
#'   ) |>
#'   pivot_longer(
#'     cols = c(ahmadinejad, rezai, karrubi, mousavi),
#'     names_to = "candidate",
#'     values_to = "votes"
#'   ) |>
#'   mutate(candidate = str_to_title(candidate))
#'
#' ggplot(plot_data, aes(votes, candidate)) +
#'   geom_col() +
#'   theme_minimal() +
#'   labs(
#'     title = "2009 Iranian Presidential Election",
#'     x = "Number of votes (in thousands)",
#'     y = ""
#'   )
"iran"
