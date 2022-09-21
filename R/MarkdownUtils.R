
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
                           output_dir='C:/Users/mwhitby/Documents/render',#paste0(here::here(), '/Reports'),
                           build_dir='C:/Users/mwhitby/Documents/render',
                           ...) {
  rmarkdown::render(
    input,
    output_file = paste0(
      xfun::sans_ext(input), '-', format(Sys.Date(), "%Y%m%d")
    ),
    output_dir =output_dir,
    intermediates_dir = build_dir,
    knit_root_dir = here::here(),
    envir = globalenv()
  )
}
