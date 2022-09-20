

# textme Function ---------------------------------------------------------


textMe <- function(sub,
                   mes,
                   whofrom,
                   username="rmail@keepeverycog.com",
                   secret,
                   host = "mail.keepeverycog.com"){
  
  require(mailR)
  
  send.mail(from = whofrom,
            to = c("Michael <6099230973@vtext.com>"),
            subject = sub,
            body = mes,
            smtp = list(host.name = howt, 
                        port = 26,
                        user.name = username,
                        passwd=secret),
            authenticate = TRUE,
            send = TRUE)
            }
  
