library(shiny)
library(shinythemes)

# Define UI for application that draws a graph
shinyUI(fluidPage(theme = shinytheme("slate"),
  titlePanel("Shark Attack"),

  # Sidebar with a slider input for the range of years
  sidebarLayout(
    sidebarPanel(
                      br(),
                      br(),
                      br(),
      # Specification of range 
      sliderInput("timerange", "Choose a Year:",
                  min = 2010, max = 2017, value = c(2013,2015)),
                      h4('Created by: Anthony Hungerman'),
                      br(),
                      h4('Disclosure 1: This App uses the GSAF5 file data obtained from from http://www.sharkattackfile.net/incidentlog.htm '),
                      h4('Disclosure 2: The database has been scaled down to contain only the years 2010 -2017'),
                      h4('Interesting Fact: The original file contains reports back to the early 1800s')
                 ),

    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
              )
              )
       )
)
