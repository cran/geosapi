# test_GSVirtualTableGeometry.R
# Author: Emmanuel Blondel <emmanuel.blondel1@gmail.com>
#
# Description: Unit tests for GSVirtualTableGeometry.R
#=======================
require(geosapi, quietly = TRUE)
require(testthat)

context("GSVirtualTableGeometry")

test_that("virtual table geometry encoding/decoding",{
  vtg <- GSVirtualTableGeometry$new(name = "the_geom", type = "MultiPolygon", srid = "4326")
  expect_is(vtg, "GSVirtualTableGeometry")
  expect_equal(vtg$name, "the_geom")
  expect_equal(vtg$type, "MultiPolygon")
  expect_equal(vtg$srid, "4326")
  
  vtgXML <- vtg$encode()
  expect_is(vtgXML, c("xml_document", "xml_node"))
  
  #decoding from XML
  vtg2 <- GSVirtualTableGeometry$new(xml = vtgXML)
  vtg2XML <- vtg2$encode()
  
  #check encoded XML is equal to decoded XML
  testthat::expect_true(length(waldo::compare(vtgXML, vtg2XML))==0)
  
})
