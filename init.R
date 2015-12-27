if(!file.exists("DataDownload.csv")) {
    library(xlsx)
    
    if (!file.exists("DataDownload.xls")) {
        download.file(
            url = "http://www.ers.usda.gov/datafiles/Food_Environment_Atlas/Data_Access_and_Documentation_Downloads/Current_Version/DataDownload.xls"
            , destfile = "DataDownload.xls"
            , method = "curl"
        )    
    }
    
    t <- read.xlsx(
        file = "DataDownload.xls"
        , sheetIndex = 12
        , stringsAsFactors = FALSE
        , header = TRUE
        )
    
    write.csv(t, "DataDownload.csv")
}

t_df <- read.csv(
    file = "DataDownload.csv"
    , header = TRUE
    , stringsAsFactors = FALSE
)

# define the subset of working columns
working.columns <- c(
    "State"
    , "County"
    , "GROC07"
    , "GROC12"
    , "PCH_GROC_07_12"
    , "SUPERC07"
    , "SUPERC12"
    , "PCH_SUPERC_07_12"
    , "CONVS07"
    , "CONVS12"
    , "PCH_CONVS_07_12"
    , "SPECS07"
    , "SPECS12"
    , "PCH_SPECS_07_12"
)

# subset the data frame to just the working columns
df <- t_df[, working.columns]

# subset further to eliminate territories (i.e. keep 2-character
# 'state' designations)
df <- df[which(nchar(df$State) == 2),]

# convert the State column to a factor
df$State <- as.factor(df$State)

# Give the working columns readable names
colnames(df) <- c(
    "State"
    , "County"
    , "Grocery stores, 2007"
    , "Grocery stores, 2012"
    , "Grocery stores (% change), 2007-12"
    , "Supercenters & club stores, 2007"
    , "Supercenters & club stores, 2012"
    , "Supercenters & club stores (% change), 2007-12"
    , "Convenience stores, 2007"
    , "Convenience stores, 2012"
    , "Convenience stores (% change), 2007-12"
    , "Specialized food stores, 2007"
    , "Specialized food stores, 2012"
    , "Specialized food stores (% change), 2007-12"
)

# clean up
rm(t_df)
