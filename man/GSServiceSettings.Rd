% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GSServiceSettings.R
\docType{class}
\name{GSServiceSettings}
\alias{GSServiceSettings}
\title{A GeoServer service settings resource}
\format{
\code{\link{R6Class}} object.
}
\value{
Object of \code{\link{R6Class}} for modelling a GeoServer OWS service setting
}
\description{
This class models a GeoServer OWS service settings.
}
\details{
Geoserver REST API Service Setting
}
\section{Fields}{

\describe{
\item{\code{verbose}}{}
}}

\section{Methods}{

\describe{
 \item{\code{new(rootName, xml)}}{
   This method is used to instantiate a \code{GSServiceSettings}. This settings 
   object is required to model/manipulate an OGC service configuration, using the method
   \code{GSManager$updateServiceSettings} or derivates.
 }
 \item{\code{decode(xml)}}{
   This method is used to decode a \code{GSServiceSettings} from XML
 }
 \item{\code{encode()}}{
   This method is used to encode a \code{GSServiceSettings} to XML. Inherited from the
   generic \code{GSRESTResource} encoder
 }
 \item{\code{setEnabled(enabled)}}{
   Sets if the service is enabled (TRUE) or not (FALSE)
 }
 \item{\code{setCiteCompliant(citeCompliant)}}{
   Sets if the service is compliant with CITE (TRUE) or not (FALSE)
 }
 \item{\code{setName(name)}}{
   Sets the service name
 }
 \item{\code{setTitle(title)}}{
   Sets the service title
 }
 \item{\code{setAbstract(abstract)}}{
   Sets the service abstract
 }
 \item{\code{setMaintainer(maintainer)}}{
   Sets the service maintainer
 }
 \item{\code{setKeywords(keywords)}}{
   Sets a list of keywords
 }
 \item{\code{addKeyword(keyword)}}{
   Sets a keyword. Returns TRUE if set, FALSE otherwise
 }
 \item{\code{delKeyword(keyword)}}{
   Deletes a keyword. Returns TRUE if deleted, FALSE otherwise
 }
 \item{\code{setOnlineResource(onlineResource)}}{
   Sets the online resource
 }
 \item{\code{setSchemaBaseURL(schemaBaseURL)}}{
   Sets the schema base URL. Default is http://schemas.opengis.net
 }
 \item{\code{setVerbose(verbose)}}{
   Sets verbose
 }
}
}

\examples{
settings <- GSServiceSettings$new(service = "WMS")
settings$setEnabled(TRUE)

}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{OGC}
\keyword{OWS}
\keyword{WCS}
\keyword{WFS}
\keyword{WMS}
\keyword{api}
\keyword{geoserver}
\keyword{rest}
\keyword{service}
