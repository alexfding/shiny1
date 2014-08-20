# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#Celsius = (Fahrenheit -32)*(5/9)
#Fahrenheit  = Celsius*9/5 + 32

library(shiny)

shinyServer(function(input, output) {
        
        # Function that computes the BMI
        Celsius <- function(Fahrenheit) {
                round((Fahrenheit -32)* 5/9)
        }
        
        Fahrenheit <- function(Celsius) {
                round(Celsius*9/5 + 32)
        }
        
        output$cel1 <- renderText({ 
                # Compute BMI
                cel1 <- Celsius(input$fahrenheit)
                cel1
               
        })
        output$cel2 <- renderText({ 
                # Compute BMI
                cel2 <- Fahrenheit(input$celsius)
                cel2
                
        })
        
        output$celmessage1 <- renderText({
                
                cel1 <- Celsius(as.numeric(input$fahrenheit))
                cel2 <- Fahrenheit(as.numeric(input$celsius))
                # Set message based on tem  
                if(cel1 < 5) {
                        "Very cold outside, keep warm!"
                } else if(cel1< 20) {
                        "Not hot nor too cold, enjoy!" 
                } else if(cel1 < 30) {
                        "A little hot outside"
                } else {
                        "Too hot, better stay home!"
                }
        })
        output$celmessage2 <- renderText({
                cel2 <- Fahrenheit(as.numeric(input$celsius))
                if(cel2 < 32) {
                        "Very cold outside, keep warm!"
                } else if(cel2< 70) {
                        "Not hot nor too cold, enjoy!" 
                } else if(cel2 < 90) {
                        "A little hot outside"
                } else {
                        "Too hot, better stay home!"
                }
        })
        
})