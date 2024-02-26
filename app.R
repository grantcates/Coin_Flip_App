# Flipping a Coin between Heads and Tails
library(shiny)

ui <- fluidPage(
  actionButton(
    inputId = "button",
    label = "Flip a coin!"
  ),
  textOutput("flip_result")
)

server <- function(input, output, session) {
  output$flip_result <- renderText({
    if(input$button > 0 ) {
    sample(c("Heads","Tails"),size = 1)
    }
  })
}

shinyApp(ui, server)