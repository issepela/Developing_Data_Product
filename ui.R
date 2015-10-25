library(shiny)
library(ggplot2)

# Define UI for slider demo application
shinyUI(fluidPage(
    
    #  Applicatiion title
    titlePanel("Prediction of tooth lenght growth in Guinea Pigs after Vitamin C subministration"),

    h4("Enter dose and delivery method"),
    # Sidebar
    sidebarLayout(
        sidebarPanel(
            
            #delivery method:
            radioButtons('inputSup',label = "Delivery Method",
                         choices = list("Orange Juice [OJ]"="OJ",
                                        "Ascorbic Acid [VC]"="VC")),
            
            # dose
            sliderInput("inputDose", label = "Dose [mg]:", 
                        min = 0, max = 3, value = 1.5, step= 0.1),
            
            img(src="https://rogerabrantes.files.wordpress.com/2012/12/guineapigtan1.jpg?w=300&h=200")
                        
        ),
        
        
        mainPanel(
            
            h4("input values:"),
            tableOutput("values"),
            
            h4("predicted tooth lenght [mm]:"),
            verbatimTextOutput("z3"),
            
            plotOutput('tgplot')
       
        )
    )
))