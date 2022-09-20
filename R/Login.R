
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
