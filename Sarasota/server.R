library(shiny)
library(shinydashboard)

motion <- read.csv2("C:/Users/HP_9470m/Documents/Sarasota_Equisense/Sarasota_28-6-2020_16h43_motion.csv", h = T, sep = ",")

symTrot <- as.data.frame(motion[motion$gait == 2,])
symTrot$symmetry <- as.numeric(symTrot$symmetry)
symTrot$elevation <- as.numeric(symTrot$elevation)
symTrot <- symTrot[symTrot$symmetry > 0,]
symTrot <- symTrot[!is.na(symTrot$symmetry),]
names(symTrot)[7] <- "color"
symTrot$color[symTrot$symmetry >= 7] <- 1
symTrot$color[symTrot$symmetry < 5] <- 3
symTrot$color[symTrot$symmetry >= 5 & symTrot$symmetry < 7] <- 2



# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$histogram0 <- renderPlot({
    # sym_values <- switch(input$sym_value,
    #                      "Less5" = symTrot$symmetry[symTrot$color == 3],
    #                      "From5to7" = symTrot$symmetry[symTrot$color == 2],
    #                      "More7" = symTrot$symmetry[symTrot$color == 1],
    #                      symTrot$symmetry[symTrot$color == 1])
    barplot(symTrot$symmetry,
            col = c("green", "yellow", "red")[as.integer(symTrot$color)],
            border = "white")
  })
  
  output$histogram1 <- renderPlot({
    breaks <- seq(0, 10, 0.5)
    hist(symTrot$symmetry,
         col = ifelse(breaks < 5, "red", ifelse(breaks >= 7, "green", "yellow" )),
         border = "white",
         breaks = breaks,
         main = "", 
       xlab = "Symetry per half stride")})
})

