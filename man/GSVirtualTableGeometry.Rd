% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GSVirtualTableGeometry.R
\docType{class}
\name{GSVirtualTableGeometry}
\alias{GSVirtualTableGeometry}
\title{Geoserver REST API GSVirtualTableGeometry}
\format{
\code{\link{R6Class}} object.
}
\value{
Object of \code{\link{R6Class}} for modelling a GeoServer virtual table geometry
}
\description{
Geoserver REST API GSVirtualTableGeometry

Geoserver REST API GSVirtualTableGeometry
}
\examples{
GSVirtualTableGeometry$new(name = "work", type = "MultiPolygon", srid = 4326)

}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{api}
\keyword{geoserver}
\keyword{rest}
\keyword{virtualTable}
\section{Super class}{
\code{\link[geosapi:GSRESTResource]{geosapi::GSRESTResource}} -> \code{GSVirtualTableGeometry}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{name}}{geometry name}

\item{\code{type}}{geometry type}

\item{\code{srid}}{geometry SRID}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-GSVirtualTableGeometry-new}{\code{GSVirtualTableGeometry$new()}}
\item \href{#method-GSVirtualTableGeometry-decode}{\code{GSVirtualTableGeometry$decode()}}
\item \href{#method-GSVirtualTableGeometry-clone}{\code{GSVirtualTableGeometry$clone()}}
}
}
\if{html}{\out{
<details open><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="geosapi" data-topic="GSRESTResource" data-id="encode"><a href='../../geosapi/html/GSRESTResource.html#method-GSRESTResource-encode'><code>geosapi::GSRESTResource$encode()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geosapi" data-topic="GSRESTResource" data-id="getClassName"><a href='../../geosapi/html/GSRESTResource.html#method-GSRESTResource-getClassName'><code>geosapi::GSRESTResource$getClassName()</code></a></span></li>
<li><span class="pkg-link" data-pkg="geosapi" data-topic="GSRESTResource" data-id="print"><a href='../../geosapi/html/GSRESTResource.html#method-GSRESTResource-print'><code>geosapi::GSRESTResource$print()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GSVirtualTableGeometry-new"></a>}}
\if{latex}{\out{\hypertarget{method-GSVirtualTableGeometry-new}{}}}
\subsection{Method \code{new()}}{
Initializes an object of class \link{GSVirtualTableGeometry}
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GSVirtualTableGeometry$new(xml = NULL, name, type, srid)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{xml}}{object of class \link{xml_node-class}}

\item{\code{name}}{name}

\item{\code{type}}{type}

\item{\code{srid}}{srid}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GSVirtualTableGeometry-decode"></a>}}
\if{latex}{\out{\hypertarget{method-GSVirtualTableGeometry-decode}{}}}
\subsection{Method \code{decode()}}{
Decodes from XML
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GSVirtualTableGeometry$decode(xml)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{xml}}{object of class \link{xml_node-class}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GSVirtualTableGeometry-clone"></a>}}
\if{latex}{\out{\hypertarget{method-GSVirtualTableGeometry-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GSVirtualTableGeometry$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
