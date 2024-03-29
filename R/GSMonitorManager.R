#' Geoserver REST API Monitor Manager
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords geoserver rest api Layer
#' @return Object of \code{\link{R6Class}} with methods for the GeoServer Monitoring extension.
#' @format \code{\link{R6Class}} object.
#' 
#' @examples
#' \dontrun{
#'    GSMonitorManager$new("http://localhost:8080/geoserver", "admin", "geoserver")
#'  }
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
GSMonitorManager <- R6Class("GSMonitorManager",
  inherit = GSManager,
  
  public = list(
    
    #'@description Get the requests
    #'@param offset offset
    #'@return an object of class \code{data.frame}
    getRequests = function(offset = 0){
      msg = "Fetching requests"
      cli::cli_alert_info(msg)
      self$INFO(msg)
      tmp = tempfile(fileext = ".csv")
      req <- GSUtils$GET(
        self$getUrl(), private$user, 
        private$keyring_backend$get(service = private$keyring_service, username = private$user),
        sprintf("/monitor/requests.csv?order=startTime;DESC&count=100&offset=%s", offset), verbose = self$verbose.debug, filename = tmp)
      out <- NULL
      if(status_code(req) == 200){
        out <- readr::read_csv(tmp)
        unlink(tmp)
        msg = sprintf("Successfully fetched %s requests", nrow(out))
        cli::cli_alert_success(msg)
        self$INFO(msg)
      }else{
        err = "Error while fetching requests"
        cli::cli_alert_danger(err)
        self$ERROR(err)
      }
      return(out)
    }
  )
)