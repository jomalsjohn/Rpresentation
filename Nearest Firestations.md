Nearest Firestations
========================================================
author: Jomals Mathews John
date: 6/19/2015

Nearest Fire Station
========================================================

This is a simple shiny app created for the course project submission on Coursera (Course: Developing Data Products)
Procedure

- Write ui.R 
- Write server.R
- Test run and Publish

ui.R 
========================================================


```r
library(shiny)

shinyUI(fluidPage(titlePanel("Nearest Fire Stations"),sidebarLayout(
    sidebarPanel(
    # use regions as option groups
    selectizeInput('Firestations', 'Select a school or Municipal Boundary', choices = list(
      Schools = c(`DubachHS` = 'DubachstationNo.6', `Hilcrest` = 'Vienna Station', `Glenview` = 'Mt. Olive Station', `Simsboro` = 'Simsboro Station'),
      Municipal = c(`Simsboro` = 'Simsboro Station', `Grambling` = 'Mt. Olive Station', `Ruston` = 'Sisemore Station and Tech Farm Station', `Vienna` = 'Vienna Station',`Choudrant` = 'Tremont Station', `Downsville` = 'Downsville West Station' )
    ), multiple = TRUE),
    helpText("Note: This is a simple Shiny application",
             "By selecting the school or municipal boundary it will display the",
             "nearest Firestation.")
  ),
  mainPanel(
    verbatimTextOutput('values')
  )
), title = 'Options groups for select(ize) input'))
```

<!--html_preserve--><div class="container-fluid">
<h2>Nearest Fire Stations</h2>
<div class="row">
<div class="col-sm-4">
<form class="well">
<div class="form-group shiny-input-container">
<label class="control-label" for="Firestations">Select a school or Municipal Boundary</label>
<div>
<select id="Firestations" class="form-control" multiple="multiple"><optgroup label="Schools">
<option value="DubachstationNo.6">DubachHS</option>
<option value="Vienna Station">Hilcrest</option>
<option value="Mt. Olive Station">Glenview</option>
<option value="Simsboro Station">Simsboro</option>
</optgroup>
<optgroup label="Municipal">
<option value="Simsboro Station">Simsboro</option>
<option value="Mt. Olive Station">Grambling</option>
<option value="Sisemore Station and Tech Farm Station">Ruston</option>
<option value="Vienna Station">Vienna</option>
<option value="Tremont Station">Choudrant</option>
<option value="Downsville West Station">Downsville</option>
</optgroup></select>
<script type="application/json" data-for="Firestations">{}</script>
</div>
</div>
<span class="help-block">
Note: This is a simple Shiny application
By selecting the school or municipal boundary it will display the
nearest Firestation.
</span>
</form>
</div>
<div class="col-sm-8">
<pre id="values" class="shiny-text-output"></pre>
</div>
</div>
</div><!--/html_preserve-->


server.R
========================================================


```r
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
```

Publish
====================================

-  an account has been created on shiny apps.io 
-  Test run was performed and published



Final app link https://jomalsjohn.shinyapps.io/Fire_Stations

