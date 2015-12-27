# initialize
source("init.R")

# UI - Display selection and plot area
shinyUI(
    fluidPage(
        headerPanel("Food Stores by State"),
        selectInput(
            inputId = "y.axis"
            , label = "Data to Visualize:"
            , choices = colnames(df)[3:length(colnames(df))]
        ),
        plotOutput( outputId = "the.Plot")
    )
) 
