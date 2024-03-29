% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GSArcGridCoverageStore.R
\docType{class}
\name{GSArcGridCoverageStore}
\alias{GSArcGridCoverageStore}
\title{Geoserver REST API ArcGridCoverageStore}
\format{
\code{\link{R6Class}} object.
}
\value{
Object of \code{\link{R6Class}} for modelling a GeoServer ArcGrid CoverageStore
}
\description{
Geoserver REST API ArcGridCoverageStore

Geoserver REST API ArcGridCoverageStore
}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{ArcGrid}
\keyword{CoverageStore}
\keyword{api}
\keyword{geoserver}
\keyword{rest}
\section{Super classes}{
\code{\link[geosapi:GSRESTResource]{geosapi::GSRESTResource}} -> \code{\link[geosapi:GSAbstractStore]{geosapi::GSAbstractStore}} -> \code{\link[geosapi:GSAbstractCoverageStore]{geosapi::GSAbstractCoverageStore}} -> \code{GSArcGridCoverageStore}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{url}}{url}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-GSArcGridCoverageStore-new}{\code{GSArcGridCoverageStore$new()}}
\item \href{#method-GSArcGridCoverageStore-clone}{\code{GSArcGridCoverageStore$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="geosapi" data-topic="GSRESTResource" data-id="encode"><a href='../../geosapi/html/GSRESTResource.html#method-GSRESTResource-encode'><code>geosapi::GSRESTResource$encode()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geosapi" data-topic="GSRESTResource" data-id="getClassName"><a href='../../geosapi/html/GSRESTResource.html#method-GSRESTResource-getClassName'><code>geosapi::GSRESTResource$getClassName()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geosapi" data-topic="GSRESTResource" data-id="print"><a href='../../geosapi/html/GSRESTResource.html#method-GSRESTResource-print'><code>geosapi::GSRESTResource$print()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geosapi" data-topic="GSAbstractStore" data-id="setDescription"><a href='../../geosapi/html/GSAbstractStore.html#method-GSAbstractStore-setDescription'><code>geosapi::GSAbstractStore$setDescription()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geosapi" data-topic="GSAbstractStore" data-id="setEnabled"><a href='../../geosapi/html/GSAbstractStore.html#method-GSAbstractStore-setEnabled'><code>geosapi::GSAbstractStore$setEnabled()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geosapi" data-topic="GSAbstractStore" data-id="setType"><a href='../../geosapi/html/GSAbstractStore.html#method-GSAbstractStore-setType'><code>geosapi::GSAbstractStore$setType()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geosapi" data-topic="GSAbstractCoverageStore" data-id="decode"><a href='../../geosapi/html/GSAbstractCoverageStore.html#method-GSAbstractCoverageStore-decode'><code>geosapi::GSAbstractCoverageStore$decode()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geosapi" data-topic="GSAbstractCoverageStore" data-id="setUrl"><a href='../../geosapi/html/GSAbstractCoverageStore.html#method-GSAbstractCoverageStore-setUrl'><code>geosapi::GSAbstractCoverageStore$setUrl()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GSArcGridCoverageStore-new"></a>}}
\if{latex}{\out{\hypertarget{method-GSArcGridCoverageStore-new}{}}}
\subsection{Method \code{new()}}{
initializes an abstract ArcGrid coverage store
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GSArcGridCoverageStore$new(
  xml = NULL,
  name = NULL,
  description = "",
  enabled = TRUE,
  url = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{xml}}{an object of class \link{xml_node-class} to create object from XML}

\item{\code{name}}{coverage store name}

\item{\code{description}}{coverage store description}

\item{\code{enabled}}{whether the store should be enabled or not. Default is \code{TRUE}}

\item{\code{url}}{url}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GSArcGridCoverageStore-clone"></a>}}
\if{latex}{\out{\hypertarget{method-GSArcGridCoverageStore-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GSArcGridCoverageStore$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
