library(shiny)
authentication <- data.frame(user = "valak", password = "valak2016")
sucessStatus <- "Authentication is Successful"
errorStatus <- "Authentication is NOT Successful"

shinyServer(
  function(input, output) {
    output$userIdValue <- renderPrint({input$userid})
    output$passwordValue <- renderPrint({input$passwordid} )
    
    observeEvent(input$loginButton,{
      if ((authentication$user == input$userid) && (authentication$password ==input$passwordid)) {
        output$statusValue <- renderPrint({sucessStatus})
      } else {
        output$statusValue <- renderPrint({errorStatus})
      }
    })
    
  }
)