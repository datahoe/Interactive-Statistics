library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({

    xseq<-seq(-6,6,.01)
    densities<-dnorm(xseq, input$Mean, input$SD)
    plot(xseq + input$Mean, densities, col="darkgreen",xlab="", ylab="", type="l",lwd=2)
  })
})