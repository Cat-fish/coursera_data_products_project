#BMIcalculate <- function(wight,height) weight/(height/100+height/100)
library(png)

shinyServer(
  function(input,output){
    output$inputValue <- renderPrint({input$weight})
    output$inputValue2 <- renderPrint({input$height})
    output$prediction <- renderPrint({input$weight/(input$height/100*input$height/100)})
    output$class <- renderPrint({
      if (input$weight/(input$height/100*input$height/100)<18.5) {
        return("Underweight")}
      else if (input$weight/(input$height/100*input$height/100)<25) {
        return("Normal range")}
      else if (input$weight/(input$height/100*input$height/100)<30) {
        return("Overweight")}
      else  {
        return("Obese")}
  })
    output$image <- renderImage({
          list(
          src = "who.png",
          contentType = "image/png",
          alt = "who")
      }, deleteFile = FALSE)

    })
