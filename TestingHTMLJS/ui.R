#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  checkboxInput("show_html", "Show Raw HTML"),
  conditionalPanel(
    condition = "input.show_html ==true",
    HTML("<h1 id = 'dynamic_h'>This is conditional raw HTML<h1>"),
    actionButton("change_text_btn", "Change Text")
  )
)
