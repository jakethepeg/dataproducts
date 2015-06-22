library(png) # For writePNG function

shinyServer(function(input, output, session) {
  
  # each entry calculates a new coin toss

  # image1 creates a new PNG file each time Radius changes
  output$image1 <- renderImage({
    
    outcome <- input$one == "head" && input$two == "head" 
    if (input$one == "head") {
      return(list(
        src = "images/head.png",
        contentType = "image/png",
        alt = "Head"
      ))
    } else if (input$one == "tail") {
      return(list(
        src = "images/tail.png",
        contentType = "image/png",
        alt = "Head"
      ))
    } else if (runif(1, 1.0, 2.5) < 1.75) {
      return(list(
        src = "images/head.png",
        contentType = "image/png",
        alt = "Head"
      ))
    } else {
      return(list(
        src = "images/tail.png",
        filetype = "image/png",
        alt = "Tail"
      ))
    }
    
  }, deleteFile = FALSE)

  # image2 sends pre-rendered images
  output$image2 <- renderImage({

    if (input$two == "head") {
      return(list(
        src = "images/head.png",
        contentType = "image/png",
        alt = "Head"
      ))
    } else if (input$two == "tail") {
      return(list(
        src = "images/tail.png",
        contentType = "image/png",
        alt = "Head"
      ))
    } else if (runif(1, 1.0, 2.5) < 1.75) {
      return(list(
        src = "images/head.png",
        contentType = "image/png",
        alt = "Head"
      ))
    } else {
      return(list(
        src = "images/tail.png",
        filetype = "image/png",
        alt = "Tail"
      ))
    }

  }, deleteFile = FALSE)
  
  output$text1 <- renderText({ 
    "You have selected this"
  })
  
  
})

