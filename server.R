##server.R

nextSalary <- function(salary) salary*1.035
        
shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$salary})
                output$prediction <- renderPrint({nextSalary(input$salary)})
        }
)