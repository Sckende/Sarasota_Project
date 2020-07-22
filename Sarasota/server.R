library(shiny)
library(shinydashboard)

motion <- read.csv2("C:/Users/HP_9470m/Documents/Sarasota_Equisense/Sarasota_28-6-2020_16h43_motion.csv", h = T, sep = ",")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$histogram <- renderPlot(
    hist(as.numeric(motion$symmetry[as.numeric(motion$symmetry) > 0]),
         breaks = input$bins,
         main = "",
         xlab = "Symetry per half stride")
  )
})
