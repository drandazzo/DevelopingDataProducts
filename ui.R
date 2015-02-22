
library(shiny)

shinyUI(
        pageWithSidebar(
                #Next Years Salary
                headerPanel("Salary Predictor for Next Year"),
                
                sidebarPanel(
                        numericInput('salary', 'Salary this year in US $', 0,
                                     min = 0, max = 1000000000,
                                     step = 5000),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3('Results of Prediction'),
                        h4('You entered $'),
                        verbatimTextOutput("inputValue"),
                        h4('Which resulted in a prediction of $'),
                        verbatimTextOutput("prediction"),
                        h3('This app estimates the salary you will receive next
                           year based on the salary you receive this year. Enter
                           your current salary to see a rough estimate of your 
                           salary for next year.')
                )
        )
)
