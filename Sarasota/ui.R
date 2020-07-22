library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "Sarasota"),
    dashboardSidebar(
      menuItem("Metrics"),
        menuSubItem("Symetry"),
        menuSubItem("Regularity"),
        menuSubItem("Cadence")),
    dashboardBody(title = "This is the body",
                  fluidPage(
                    box(plotOutput("histogram")),
                    box(sliderInput("bins", "Number of breaks", 10, 30, 1)),
                    box(tags$img(height = 100,
                                 width = 100,
                                 src = "Images/fox.jpg")),
                    box(tags$a(href = "https://vimeo.com/rstudioinc/review/131218530/212d8a5a7a/#t=1h36m54s", "Shiny for beginners"))
                  ))))
