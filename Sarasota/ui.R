library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "Sarasota"),
    dashboardSidebar(
      box(tags$img(height = 100,
                   width = 100,
                   src = "Images/fox.jpg")),
      menuItem("Metrics"),
        menuSubItem("Symetry"),
        menuSubItem("Regularity"),
        menuSubItem("Cadence")),
    dashboardBody(fluidPage(
                    box(radioButtons(inputId = "sym_values",
                                     label = "Symetry values",
                                     choices = c("Less than 5" = "Less5",
                              "From 5 to 7" = "From5to7",
                              "More than 7" = "More7")),
                        plotOutput("histogram0"),
                    box(plotOutput("histogram1")),
                    box(tags$a(href = "https://vimeo.com/rstudioinc/review/131218530/212d8a5a7a/#t=1h36m54s", "Shiny for beginners"))
                  ))))
