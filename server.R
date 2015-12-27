# initialize
source("init.R")

# Server - Generate the plot based on selection
shinyServer(
    function(input, output) {
        output$the.Plot <- renderPlot({ 
            plot(
                df[["State"]]
                , df[[input$y.axis]]
                , main = paste(input$y.axis, "by State")
                , xlab = "State"
                , ylab = input$y.axis
            )
        })
    }
)
