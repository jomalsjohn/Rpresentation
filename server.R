library(shiny)

shinyServer(function(input, output, session) {
  
  updateSelectizeInput(session, 'x2', choices = list(
    Schools = c(`DubachHS` = 'DubachstationNo.6', `Hilcrest` = 'Vienna Station', `Glenview` = 'Mt. Olive Station', `Simsboro` = 'Simsboro Station'),
    Municipal = c(`Simsboro` = 'Simsboro Station', `Grambling` = 'Mt. Olive Station', `Ruston` = 'Sisemore Station and Tech Farm Station', `Vienna` = 'Vienna Station',`Choudrant` = 'Tremont Station', `Downsville` = 'Downsville West Station' )
  ), selected = 'IA')
  
  output$values <- renderPrint({
    list(x1 = input$Firestations)
  })
})