library(shiny)
library(plotrix)

# read the csv into the program
 sharkattack <- read.csv(file="GSAF510-17.csv",head=TRUE,sep=",")


# logic required to draw a Graph
function(input, output) {

sliderValues <- reactive({

# Create a plot of Country vs. Fatality 
# by Date of attach

attach(sharkattack)

plot(Country, Year,  
  	xlab="Country", ylab="Year", 
   main="Can you tell where more attacks occur???", 
   labels=row.names(sharkattack$Country))

 })

 output$distPlot <- renderPlot({
    sliderValues()
		})
}
