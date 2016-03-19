library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Shape of normal distribution"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("Mean",
                  "Mean:",
                  min = -4,
                  max = 4,
                  value = 0),
      sliderInput("SD",
                  "Standard deviation:",
                  min = 1,
                  max = 5,
                  value = 1)
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))