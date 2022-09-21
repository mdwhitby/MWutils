

#' Send an email (use phone number email to receieve a text)
#'
#' @param message
#' @param mail_from
#' @param mail_rcpt
#' @param smtp_server
#' @param use_ssl
#' @param Username
#' @param Password
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
#'
notifyMe <- function(message = 'msg from R',
                     mail_from = "rmail@keepeverycog.com",
                     mail_rcpt = '6099230973@vtext.com',
                     smtp_server = "mail.keepeverycog.com:465",
                     use_ssl = "force",
                     Username = "rmail@keepeverycog.com",
                     Password = keyring::key_get('RMail_KEC', username = 'rmail@keepeverycog.com'),
                     ...
) {

  curl::send_mail(
    mail_from = mail_from,
    mail_rcpt = mail_rcpt,
    message = message,
    smtp_server=smtp_server,
    use_ssl=use_ssl,
    Username = Username,
    Password = Password,
    ...
  )

}


#' get ESRI arcgis online REST token
#'
#' @param username string of username
#' @param secret string of password
#'
#' @return
#' @export
#'
#' @examples
getESRItoken <- function(username, secret) {

  token <-
    httr::POST(
      url = "https://www.arcgis.com/sharing/rest/generateToken",
      encode = "form",
      body = list(
        username = username,
        password = secret,
        f = "json",
        client= "referer",
        referer="batcon.maps.arcgis.com",
        expiration = 60
      )
    )

  return(httr::content(token)$token)

}

#' Prepare for parallel processing Quickly
#'
#' @param pcnt percent of cores to use
#'
#' @return
#' @export
#'
#' @examples
#'
initCL <- function(pcnt=0.75){
  library(parallel)
  library(pbapply)

  cl <<- makeCluster(pcnt*detectCores())

}
