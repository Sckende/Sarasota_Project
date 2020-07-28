library(shiny)
library(shinydashboard)

motion <- read.csv2("C:/Users/HP_9470m/Documents/Sarasota_Equisense/Sarasota_28-6-2020_16h43_motion.csv", h = T, sep = ",")
sym <- as.numeric(motion$symmetry[as.numeric(motion$symmetry) > 0])
sym <- as.vector(na.omit(sym))

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$histogram0 <- renderPlot({
    # sym_values <- switch(input$sym_value,
    #                      "Less5" = sym[sym < 5],
    #                      "From5to7" = sym[sym < 7 & sym >= 5],
    #                      "More7" = sym[sym >=7],
    #                      sym)
    barplot(sym,
            col = ifelse(sym >= 7, "green",
                         ifelse(sym < 5, "red", "yellow"))
      
    )
  })
  output$histogram1 <- renderPlot(
    j <- hist(sym,
         col = ifelse(j$breaks >= 7, "green",
                      ifelse(j$breaks < 5, "red", "yellow")),
         breaks = 12,
         main = "",
         xlab = "Symetry per half stride"))
})
