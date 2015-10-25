library(shiny)
library(ggplot2)
data(ToothGrowth)

# Define server logic for slider examples
shinyServer(function(input, output) {
    fit<-lm(len~.,data=ToothGrowth)    
   
    In <- reactive({
        # Compose data frame
        data.frame(
            supp = c(input$inputSup),
            dose = c(input$inputDose), 
            stringsAsFactors=FALSE)

    }) 
    
   # Show the input values using an HTML table
    output$values <- renderTable({In()})
    
   #predict length and put it in an output variable
   output$z3 <- renderText({round(predict(fit,newdata=In()),digits=1)})
   
   #drow a plot and annotate it with predicted value
    output$tgplot<-renderPlot({
        x1<-input$inputDose
        ggplot(ToothGrowth, aes(y=len,x=dose,colour=factor(supp))) + 
            stat_smooth(method = "lm",aes(fill = factor(supp)),fullrange=TRUE) + geom_point() + 
            xlim(0,3)+
            annotate("text",x=x1,y=predict(fit,newdata=In()),label ="O")
    })
})





