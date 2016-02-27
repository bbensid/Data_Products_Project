library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Creating a nice geometrical coloring frame"
        ),
    sidebarPanel(
            h4("Enter your specificaltions"),
            numericInput('circle', 'Number of circle-formed elements', 1, min = 0, max = 6, step = 1),
            numericInput('line', 'Number of line-formed elements', 1, min = 0, max = 6, step = 1),
            strong("PDF file:"),
                br(),
                downloadLink('pdflink')
            ),
    mainPanel(
        h3("Usage"),
        h4("Use this App to create simple-to-very-complicated geometrical 
       frames that you can download as pdf, print for your children 
           or just yourself, and have fun coloring them !"),
        h3("Preview"),
        plotOutput('newPlot')
    )
))
