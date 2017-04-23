
ui <- fluidPage(
        tabsetPanel(
          tabPanel ("3-D Plot",plotlyOutput("plot"),
                    verbatimTextOutput("event")), 
          tabPanel ("Getting Started",includeMarkdown("GettinStarted.md"))
        )
        )
