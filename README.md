# Developing Data Products

## Course Project

This project is a simple Shiny application that looks at the USDA
Food Environment Atlas data, located at:

http://www.ers.usda.gov/data-products/food-environment-atlas/data-access-and-documentation-downloads.aspx

Specificall, the current data set at:

http://www.ers.usda.gov/datafiles/Food_Environment_Atlas/Data_Access_and_Documentation_Downloads/Current_Version/DataDownload.xls

Overview:

1.  This app pulls the current data set
2.  Extracts the `STORES` worksheet
3.  Subsets the worksheet to extract the following data points:
    + State
    + County
    + Grocery stores, 2007
    + Grocery stores, 2012
    + Grocery stores (% change), 2007-12
    + Supercenters & club stores, 2007
    + Supercenters & club stores, 2012
    + Supercenters & club stores (% change), 2007-12
    + Convenience stores, 2007
    + Convenience stores, 2012
    + Convenience stores (% change), 2007-12
    + Specialized food stores, 2007
    + Specialized food stores, 2012
    + Specialized food stores (% change), 2007-12
4.  Generates a Shiny page that allows you to explore the data set
