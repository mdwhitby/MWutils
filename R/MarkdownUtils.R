
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
      xfun::sans_ext(input), '-', format(Sys.Date(), "%Y%m%d")
    ),
    output_dir =output_dir,
    intermediates_dir = output_dir,
    envir = globalenv()
  )
}
