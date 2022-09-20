
#' custom knit function
#'
#' @param input
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
knit_with_date <- function(input, ...) {
  rmarkdown::render(
    input,
    output_file = paste0(
      xfun::sans_ext(input), '-', Sys.Date(), '.'
    ),
    envir = globalenv()
  )
}
