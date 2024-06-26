#' Environmental Sustainability Index 2005
#'
#' This dataset comes from the 2005 Environmental Sustainability Index:
#' Benchmarking National Environmental Stewardship.  Countries are given an
#' overall sustainability score as well as scores in each of several different
#' environmental areas.
#'
#' ESI and Component scores are presented as standard normal percentiles.
#' Indicator scores are in the form of z-scores. See Appendix A of the report
#' for information on the methodology and Appendix C for more detail on
#' original data sources.
#'
#' For more information on how each of the indices were calculated, see the
#' documentation linked below.
#'
#' @name esi
#' @docType data
#' @format A data frame with 146 observations on the following 29 variables.
#' \describe{
#' \item{code}{ISO3 country code.}
#' \item{country}{Country.}
#' \item{esi}{Environmental Sustainability Index.}
#' \item{system}{ESI core component: systems}
#' \item{stress}{ESI core component: stresses}
#' \item{vulner}{ESI core component: vulnerability}
#' \item{cap}{ESI core component: capacity}
#' \item{global}{ESI core component: global stewardship}
#' \item{sys_air}{Air quality.}
#' \item{sys_bio}{Biodiversity.}
#' \item{sys_lan}{Land.}
#' \item{sys_wql}{Water quality.}
#' \item{sys_wqn}{Water quantity.}
#' \item{str_air}{Reducing air pollution.}
#' \item{str_eco}{Reducing ecosystem stress.}
#' \item{str_pop}{Reducing population pressure.}
#' \item{str_was}{Reducing waste and consumption pressures.}
#' \item{str_wat}{Reducing water stress.}
#' \item{str_nrm}{Natural resource management.}
#' \item{vul_hea}{Environmental health.}
#' \item{vul_sus}{Basic human sustenance.}
#' \item{vul_dis}{Exposure to natural disasters.}
#' \item{cap_gov}{Environmental governance.}
#' \item{cap_eff}{Eco-efficiency.}
#' \item{cap_pri}{Private sector responsiveness.}
#' \item{cap_st}{Science and technology.}
#' \item{glo_col}{Participation in international collaboration efforts.}
#' \item{glo_ghg}{Greenhouse gas emissions.}
#' \item{glo_tbp}{Reducing transboundary environmental pressures.}
#' }
#' @references Esty, Daniel C., Marc Levy, Tanja Srebotnjak, and Alexander de
#' Sherbinin (2005). \emph{2005 Environmental Sustainability Index:
#' Benchmarking National Environmental Stewardship.} New Haven: Yale Center for
#' Environmental Law and Policy
#' @source ESI Component Indicators. \emph{2005 Environmental Sustainability
#' Index: Benchmarking National Environmental Stewardship}, Yale Center for
#' Environmental Law and Policy, Yale University & Center for International
#' Earth Science Information Network (CIESIN), Columbia University
#'
#' In collaboration with: World Economic Forum, Geneva, Switzerland Joint
#' Research Centre of the European Commission, Ispra, Italy.
#'
#' Available at \url{https://www.earth.columbia.edu/news/2005/images/ESI2005_policysummary.pdf}.
#' @keywords environment sustainability country energy efficiency datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(esi, aes(x = cap_st, y = glo_col)) +
#'   geom_point(color = ifelse(esi$code == "USA", "red", "black")) +
#'   geom_text(
#'     aes(label = ifelse(code == "USA", as.character(code), "")),
#'     hjust = 1.2, color = "red"
#'   ) +
#'   labs(x = "Science and technology", y = "Participation in international collaboration efforts")
#'
#' ggplot(esi, aes(x = vulner, y = cap)) +
#'   geom_point(color = ifelse(esi$code == "USA", "red", "black")) +
#'   geom_text(
#'     aes(label = ifelse(code == "USA", as.character(code), "")),
#'     hjust = 1.2, color = "red"
#'   ) +
#'   labs(x = "Vulnerability", y = "Capacity")
"esi"
