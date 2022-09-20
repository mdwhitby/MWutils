#' NotifyMe via email (use email version of phone for text)
#'
#' @param sub subject
#' @param mes mesage text
#' @param whofrom message sent by - can use a function of process to help understand what part is done
#' @param to email address of recipient
#' @param username username for login to outgoing mail
#' @param secret password for login to outgoing mail
#' @param host host address for outgoing mail
#'
#' @return
#' @export
#'
#' @examples
notifyMe <- function(sub,
                   mes,
                   whofrom,
                   to = c("Michael <6099230973@vtext.com>"),
                   username="rmail@keepeverycog.com",
                   secret,
                   host = "mail.keepeverycog.com"){

  require(mailR)

  send.mail(from = whofrom,
            to = to,
            subject = sub,
            body = mes,
            smtp = list(host.name = howt,
                        port = 26,
                        user.name = username,
                        passwd=secret),
            authenticate = TRUE,
            send = TRUE)
            }

