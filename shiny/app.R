
library(shiny); library(ggplot2); library(readr)
df <- readr::read_csv(file.path("data","iris_sample.csv"), show_col_types = FALSE)
ui <- fluidPage(
  titlePanel("statistical-kit Explorer by @Fbrianzy"),
  sidebarLayout(
    sidebarPanel(
      selectInput("x","X:",choices=names(df),selected="sepal_length"),
      selectInput("y","Y:",choices=names(df),selected="petal_length"),
      selectInput("color","Color:",choices=c("none", names(df)),selected="species")
    ),
    mainPanel(plotOutput("scatter"))
  )
)
server <- function(input, output) {
  output$scatter <- renderPlot({
    p <- ggplot(df, aes_string(x=input$x, y=input$y))
    if (input$color != "none") p <- p + aes_string(color=input$color)
    p + geom_point() + theme_minimal()
  })
}
shinyApp(ui, server)
