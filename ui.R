shinyUI(fluidPage(
  titlePanel("Modified two up simulation"),
  
  fluidRow (
    column(2, wellPanel(
      radioButtons("one", "Pick coin A",
                   c("Heads" = "head", "Tails" = "tail", "Odds" = "O"), "head"),
      radioButtons("two", "Pick Coin B",
                   c("Heads" = "head", "Tails" = "tail", "Odds" = "O"), "tail"),
      submitButton("Come in, spinner")
    )),
    column(4,  imageOutput("image1")),
    column(4,  imageOutput("image2"))
  )
))
