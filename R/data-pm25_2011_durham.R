#' Air quality for Durham, NC
#'
#' Daily air quality is measured by the air quality index (AQI) reported by the
#' Environmental Protection Agency.
#'
#'
#' @name pm25_2011_durham
#' @aliases pm25.2011.durham pm25_2011_durham
#' @docType data
#' @format A data frame with 449 observations on the following 20 variables.
#' \describe{
#'   \item{date}{Date}
#'   \item{aqs_site_id}{a factor with levels \code{37-063-0015}}
#'   \item{poc}{a numeric vector}
#'   \item{daily_mean_pm2_5_concentration}{a numeric vector}
#'   \item{units}{a factor with levels \code{ug/m3 LC}}
#'   \item{daily_aqi_value}{a numeric vector}
#'   \item{daily_obs_count}{a numeric vector}
#'   \item{percent_complete}{a numeric vector}
#'   \item{aqs_parameter_code}{a numeric vector}
#'   \item{aqs_parameter_desc}{a factor with levels \code{Acceptable PM2.5 AQI & Speciation Mass} \code{PM2.5 - Local Conditions}}
#'   \item{csa_code}{a numeric vector}
#'   \item{csa_name}{a factor with levels \code{Raleigh-Durham-Cary, NC}}
#'   \item{cbsa_code}{a numeric vector}
#'   \item{cbsa_name}{a factor with levels \code{Durham, NC}}
#'   \item{state_code}{a numeric vector}
#'   \item{state}{a factor with levels \code{North Carolina}}
#'   \item{county_code}{a numeric vector}
#'   \item{county}{a factor with levels \code{Durham}}
#'   \item{site_latitude}{a numeric vector}
#'   \item{site_longitude}{a numeric vector}
#'   }
#' @source US Environmental Protection Agency, AirData, 2011.
#' \url{http://www3.epa.gov/airdata/ad_data_daily.html}
#' @keywords datasets
#' @examples
#'
#' pm25_2011_durham
#'
"pm25_2011_durham"