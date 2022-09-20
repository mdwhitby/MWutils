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
