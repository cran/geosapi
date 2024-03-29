% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GSWorkspaceSettings.R
\docType{class}
\name{GSWorkspaceSettings}
\alias{GSWorkspaceSettings}
\title{Geoserver REST API Workspace Setting}
\format{
\code{\link{R6Class}} object.
}
\value{
Object of \code{\link{R6Class}} for modelling a GeoServer workspace settings
}
\description{
Geoserver REST API Workspace Setting

Geoserver REST API Workspace Setting
}
\examples{
  settings <- GSWorkspaceSettings$new()
  settings$setCharset("UTF-8")
  settings$setNumDecimals(5)

}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{api}
\keyword{geoserver}
\keyword{rest}
\keyword{settings}
\keyword{workspace}
\section{Super class}{
\code{\link[geosapi:GSRESTResource]{geosapi::GSRESTResource}} -> \code{GSWorkspaceSettings}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{contact}}{contact}

\item{\code{charset}}{charset}

\item{\code{numDecimals}}{number of decimal}

\item{\code{onlineResource}}{online resource}

\item{\code{verbose}}{verbose}

\item{\code{verboseExceptions}}{verbose exceptions}

\item{\code{localWorkspaceIncludesPrefix}}{local workspace includes prefix}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-GSWorkspaceSettings-new}{\code{GSWorkspaceSettings$new()}}
\item \href{#method-GSWorkspaceSettings-decode}{\code{GSWorkspaceSettings$decode()}}
\item \href{#method-GSWorkspaceSettings-setCharset}{\code{GSWorkspaceSettings$setCharset()}}
\item \href{#method-GSWorkspaceSettings-setNumDecimals}{\code{GSWorkspaceSettings$setNumDecimals()}}
\item \href{#method-GSWorkspaceSettings-setOnlineResource}{\code{GSWorkspaceSettings$setOnlineResource()}}
\item \href{#method-GSWorkspaceSettings-setVerbose}{\code{GSWorkspaceSettings$setVerbose()}}
\item \href{#method-GSWorkspaceSettings-setVerboseExceptions}{\code{GSWorkspaceSettings$setVerboseExceptions()}}
\item \href{#method-GSWorkspaceSettings-setLocalWorkspaceIncludesPrefix}{\code{GSWorkspaceSettings$setLocalWorkspaceIncludesPrefix()}}
\item \href{#method-GSWorkspaceSettings-clone}{\code{GSWorkspaceSettings$clone()}}
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
\if{html}{\out{<a id="method-GSWorkspaceSettings-new"></a>}}
\if{latex}{\out{\hypertarget{method-GSWorkspaceSettings-new}{}}}
\subsection{Method \code{new()}}{
This method is used to instantiate a \code{GSWorkspaceSettings}. This settings 
   object is required to activate a workspace configuration, using the method
   \code{GSManager$createWorkspaceSettings}. Supported from GeoServer 2.12
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GSWorkspaceSettings$new(xml = NULL)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-GSWorkspaceSettings-decode"></a>}}
\if{latex}{\out{\hypertarget{method-GSWorkspaceSettings-decode}{}}}
\subsection{Method \code{decode()}}{
Decodes from XML
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GSWorkspaceSettings$decode(xml)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-GSWorkspaceSettings-setCharset"></a>}}
\if{latex}{\out{\hypertarget{method-GSWorkspaceSettings-setCharset}{}}}
\subsection{Method \code{setCharset()}}{
Set charset
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GSWorkspaceSettings$setCharset(charset)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{charset}}{charset}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GSWorkspaceSettings-setNumDecimals"></a>}}
\if{latex}{\out{\hypertarget{method-GSWorkspaceSettings-setNumDecimals}{}}}
\subsection{Method \code{setNumDecimals()}}{
Set number of decimals
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GSWorkspaceSettings$setNumDecimals(numDecimals)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{numDecimals}}{number of decimals}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GSWorkspaceSettings-setOnlineResource"></a>}}
\if{latex}{\out{\hypertarget{method-GSWorkspaceSettings-setOnlineResource}{}}}
\subsection{Method \code{setOnlineResource()}}{
Set online resource
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GSWorkspaceSettings$setOnlineResource(onlineResource)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{onlineResource}}{online resource}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GSWorkspaceSettings-setVerbose"></a>}}
\if{latex}{\out{\hypertarget{method-GSWorkspaceSettings-setVerbose}{}}}
\subsection{Method \code{setVerbose()}}{
Set verbose
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GSWorkspaceSettings$setVerbose(verbose)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{verbose}}{verbose}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GSWorkspaceSettings-setVerboseExceptions"></a>}}
\if{latex}{\out{\hypertarget{method-GSWorkspaceSettings-setVerboseExceptions}{}}}
\subsection{Method \code{setVerboseExceptions()}}{
Set verbose exceptions
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GSWorkspaceSettings$setVerboseExceptions(verboseExceptions)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{verboseExceptions}}{verbose exceptions}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GSWorkspaceSettings-setLocalWorkspaceIncludesPrefix"></a>}}
\if{latex}{\out{\hypertarget{method-GSWorkspaceSettings-setLocalWorkspaceIncludesPrefix}{}}}
\subsection{Method \code{setLocalWorkspaceIncludesPrefix()}}{
Set local workspace includes prefix
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GSWorkspaceSettings$setLocalWorkspaceIncludesPrefix(includesPrefix)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{includesPrefix}}{includes prefix}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-GSWorkspaceSettings-clone"></a>}}
\if{latex}{\out{\hypertarget{method-GSWorkspaceSettings-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{GSWorkspaceSettings$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
