#' Geoserver REST API Manager Utils
#'
#' @docType class
#' @export
#' @keywords geoserver rest api
#' @return Object of \code{\link{R6Class}} with static util methods for communication
#' with the REST API of a GeoServer instance.
#' @format \code{\link{R6Class}} object.
#'
#' @section Static methods:
#' \describe{
#'  \item{\code{getUserAgent()}}{
#'    This method is used to get the user agent for performing GeoServer API requests.
#'    Here the user agent will be compound by geosapi package name and version.
#'  }
#'  \item{\code{getUserToken(user, pwd)}}{
#'    This method is used to get the user authentication token for performing GeoServer
#'    API requests. Token is given a Base64 encoded string.
#'  }
#'  \item{\code{GET(url, user, pwd, path, verbose)}}{
#'    This method performs a GET request for a given \code{path} to GeoServer REST API
#'  }
#'  \item{\code{PUT(url, user, pwd, path, filename, contentType, verbose)}}{
#'    This method performs a PUT request for a given \code{path} to GeoServer REST API,
#'    to upload a file of name \code{filename} with given \code{contentType}
#'  }
#'  \item{\code{POST(url, user, pwd, path, content, contentType, verbose)}}{
#'    This method performs a POST request for a given \code{path} to GeoServer REST API,
#'    to post content of given \code{contentType}
#'  }
#'  \item{\code{DELETE(url, user, pwd, path, verbose)}}{
#'    This method performs a DELETE request for a given GeoServer resource identified
#'    by a \code{path} in GeoServer REST API
#'  }
#'  \item{\code{parseResponseXML(req)}}{
#'    Convenience method to parse XML response from GeoServer REST API. Although package \pkg{httr}
#'    suggests the use of \pkg{xml2} package for handling XML, \pkg{geosapi} still relies
#'    on the package \pkg{XML}. Response from \pkg{httr} is retrieved as text, and then parsed as
#'    XML using \code{xmlParse} function.
#'  }
#'  \item{\code{getPayloadXML(obj)}}{
#'    Convenience method to create payload XML to send to GeoServer.
#'  }
#'  \item{\code{setBbox(minx, miny, maxx, maxy, bbox, crs)}}{
#'    Creates an list object representing a bbox. Either from coordinates or from
#'    a \code{bbox} object (matrix).
#'  }
#' }
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
GSUtils <- R6Class("GSUtils")

GSUtils$getUserAgent <- function(){
  return(paste("geosapi", packageVersion("geosapi"), sep="-"))
}

GSUtils$getUserToken <- function(user, pwd){
  token <- openssl::base64_encode(charToRaw(paste(user, pwd, sep=":")))
  return(token)
}

GSUtils$GET <- function(url, user, pwd, path, verbose = FALSE){
  if(verbose){
    req <- with_verbose(GSUtils$GET(url, user, pwd, path))
  }else{
    if(!grepl("^/", path)) path = paste0("/", path)
    url <- paste0(url, path) 
    req <- httr::GET(
      url = url,
      add_headers(
        "User-Agent" = GSUtils$getUserAgent(),
        "Authorization" = paste("Basic", GSUtils$getUserToken(user, pwd))
      )
    )
  }
  return(req)
}

GSUtils$PUT <- function(url, user, pwd, path,
                        content = NULL, filename = NULL,
                        contentType, verbose = FALSE){
  if(verbose){
    req <- with_verbose(GSUtils$PUT(url, user, pwd, path, content, filename, contentType))
  }else{
    body <- NULL
    if(missing(content) | is.null(content)){
      if(missing(filename) | is.null(filename)){
        stop("The filename must be provided")
      }
      body <- httr::upload_file(filename)
    }else{
      body <- content
    }
    
    if(!grepl("^/", path)) path = paste0("/", path)
    url <- paste0(url, path)
    req <- httr::PUT(
      url = url,
      add_headers(
        "User-Agent" = GSUtils$getUserAgent(),
        "Authorization" = paste("Basic", GSUtils$getUserToken(user, pwd)),
        "Content-type" = contentType
      ),    
      body = body
    )
  }
  return(req)
}

GSUtils$POST <- function(url, user, pwd, path, content, contentType, verbose = FALSE){
  if(verbose){
     req <- with_verbose(GSUtils$POST(url, user, pwd, path, content, contentType))
  }else{
    if(!grepl("^/", path)) path = paste0("/", path)
    url <- paste0(url, path)
    req <- httr::POST(
      url = url,
      add_headers(
        "User-Agent" = GSUtils$getUserAgent(),
        "Authorization" = paste("Basic", GSUtils$getUserToken(user, pwd)),
        "Content-type" = contentType
      ),    
      body = content
    )
  }
  return(req)
}

GSUtils$DELETE <- function(url, user, pwd, path, verbose = FALSE){
  if(verbose){
    req <- with_verbose(GSUtils$DELETE(url, user, pwd, path))
  }else{
    if(!grepl("^/", path)) path = paste0("/", path)
    url <- paste0(url, path)
    req <- httr::DELETE(
      url = url,
      add_headers(
        "User-Agent" = GSUtils$getUserAgent(),
        "Authorization" = paste("Basic", GSUtils$getUserToken(user, pwd))
      )
    )
  }
  return(req)
}

GSUtils$parseResponseXML <- function(req){
  return(xmlParse(content(req, as = "text", encoding = "UTF-8")))
}

GSUtils$getPayloadXML <- function(obj){
  if(!("encode" %in% names(obj))){
    stop("R6 class with no XML encoder method!")
  }
  xml <- obj$encode()
  xmltext <- as(xml, "character")
  payload <- gsub("[\r\n ] ", "", xmltext)
  return(payload)
}

GSUtils$setBbox = function(minx, miny, maxx, maxy, bbox = NULL, crs){
  
  if(!missing(bbox) & !is.null(bbox)){
    if(class(bbox) != "matrix") stop("Bbox is not a valid bounding box matrix")
    if(all(dim(bbox) != c(2,2))) stop("Bbox is not a valid bounding box matrix")
    minx = bbox[1L,1L]
    miny = bbox[2L,1L]
    maxx = bbox[1L,2L]
    maxy = bbox[2L,2L]
  }
  
  out <- list()
  out[["minx"]] = minx
  out[["miny"]] = miny
  out[["maxx"]] = maxx
  out[["maxy"]] = maxy
  out[["crs"]] = crs
  return(out)
}