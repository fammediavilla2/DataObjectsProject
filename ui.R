shinyUI(fluidPage(pageWithSidebar( 
        headerPanel("Quantiles for 1993 Car Features"), 
        sidebarPanel(
                sliderInput('x', 'Select a proportion:',
                            value = 0.5, 
                            min = 0, 
                            max = 1, 
                            step = 0.10),
                selectInput(inputId='y',
                            label='Select a variable:',
                            choices=c("Price", 
                                      "Min.Price",
                                      "Max.Price",
                                      "MPG.city",
                                      "MPG.highway",
                                      "Horsepower",
                                      "Fuel.tank.capacity"),
                            selected="Price")
                ),
        mainPanel(
                plotOutput('outHist')
        )
)
))