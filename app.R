library(shiny)
  library(Rcpp)
  library(ggplot2)
  library(dplyr)
  library(tidyr)
  library(DT)
  library(plotly)
  library(jsonlite)
  library(fs)

  ui <- fluidPage(
    titlePanel("Connect Cloud Canary"),
    p("If you can see this, all canary packages loaded successfully.")
  )

  server <- function(input, output, session) {}

  shinyApp(ui, server)
