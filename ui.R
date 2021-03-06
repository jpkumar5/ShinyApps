#
#' This is the user-interface definition of a Shiny web application. You can
#' run the application by clicking 'Run App' above.
#
#' Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Old Faithful Geyser Data"),

  # Sidebar with a slider input for number of bins

  sidebarLayout(
    sidebarPanel(
       h2('Enter Number of Bins'),
       sliderInput("bins",
                   "Bins:",
                   min = 1,
                   max = 50,
                   value = 30)
    ),

    # Show a plot of the generated distribution
    mainPanel(
       h2('Plot of Generate Distribution'),
       plotOutput("distPlot")
    )
  )
))
