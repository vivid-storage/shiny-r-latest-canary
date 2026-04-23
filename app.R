library(shiny)                                                                                                                                                                   
  library(Rcpp)                                                                                                                                                                    
  library(ggplot2)                                                                                                                                                                 
  library(dplyr)                                                                                                                                                                   
  library(tidyr)                                            
  library(DT)
  library(plotly)
  library(jsonlite)
  library(fs)
                                                                                                                                                                                   
  PACKAGES <- c("shiny", "Rcpp", "ggplot2", "dplyr", "tidyr", "DT", "plotly", "jsonlite", "fs")                                                                                    
  versions <- setNames(                                                                                                                                                            
    lapply(PACKAGES, function(p) as.character(packageVersion(p))),                                                                                                                 
    PACKAGES                                                
  )

  ui <- fluidPage(
    titlePanel("Connect Cloud Canary"),
    tags$pre(                                                                                                                                                                      
      id = "versions",
      jsonlite::toJSON(versions, auto_unbox = TRUE, pretty = TRUE)                                                                                                                 
    )                                                                                                                                                                              
  )
                                                                                                                                                                                   
  server <- function(input, output, session) {}             

  shinyApp(ui, server)
