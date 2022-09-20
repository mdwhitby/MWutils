
#' custom knit function
#'
#' @param input
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
knit_with_date <- function(input,
                           output_dir=paste0(here::here(), '/Reports'),
                           ...) {
  rmarkdown::render(
    input,
    output_file = paste0(
      xfun::sans_ext(input), '-', format(Sys.Date(), "%Y%m%d"), '.'
    ),
    output_dir =output_dir,
    envir = globalenv()
  )
}


#' Prepare for parallel processing Quickly
#'
#' @param pcnt percent of cores to use
#'
#' @return
#' @export
#'
#' @examples
initCL <- function(pcnt=0.75){
  library(parallel)
  library(pbapply)

  cl <<- makeCluster(pcnt*detectCores())

}
