# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
        
        # Application title
        titlePanel("Fahrenheit to Celsius Calculator"),
        h6("Choose the temperature"),
        
        
        # Sidebar with slider inputs
       # sidebarLayout(
                sidebarPanel(
                        
                        sliderInput("fahrenheit","Fahrenheit (F)", min=-60, max=125, value=0),
                        sliderInput("celsius","Celsius (C):", min=-50, max=50, value=0)
                ),
                
                # Show the computed BMI and a message
                mainPanel(
                        tabsetPanel(
                                
                                tabPanel("DOCUMENTATION",
                                         h3('Instruction:'),
                                         p('Just drag and adjust the temeperature slider'),
                                         p('the corespoding temeperature will show with tips')
                                ),
                                tabPanel("RESULT",
                                        h3("Fahrenheit to Celsius:"),
                                        textOutput("cel1"),
                                        h3("Tips to Celsius:"),
                                        textOutput("celmessage1"),
                                        h3("Celsius to Fahrenheit:"),
                                        textOutput("cel2"),
                                        h3("Tips to Fahrenheit:"),
                                        textOutput("celmessage2")
                                )
                        )
                )
        
        
))
