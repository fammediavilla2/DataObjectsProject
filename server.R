library(shiny)
library(MASS)
data(Cars93)


x<<-0


shinyServer( 
        function(input, output) {
        output$outHist <- renderPlot({
                
                hist(Cars93[,input$y], xlab=input$y, col='lightblue',
                     main= paste('Histogram for ',input$y ))
                l<-max(hist(Cars93[,input$y], plot=F)$counts)*0.80
                a<-max(Cars93[,input$y])-0.15*max(Cars93[,input$y])
                x <- input$x
                q <- quantile(Cars93[,input$y],x)
                abline(v=q,col="red",lwd=5)
                text(a, l, paste("Proportion = ", x))
                text(a, l-(0.1*l), paste("Quantile = ", round(q, 2)))
        })
} 
)