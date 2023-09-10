#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
function(input, output, session) {
  
  observeEvent(input$change_text_btn, {
    
    jsCode <- "
    console.log('hi');
    var newContent = 'We changed this using JavaScript';
    document.getElementById('dynamic_h').innerText = newContent;

    "
    
    session$sendCustomMessage(message = jsCode)
    
  })

}
