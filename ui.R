shinyUI(
  pageWithSidebar(
    #Application title
    headerPanel("BMI check"),
    
    sidebarPanel(

      numericInput('weight','weight in kg', 60, min=1, max=200, step=1),
      numericInput('height','height in cm',160, min=1, max=250, step=1),
      submitButton('Submit')
      ),
    mainPanel(
        tabsetPanel(type = "tabs", 
                    tabPanel("Your BMI",    h3('BMI result'),
                             h4('Your weight (kg)'),
                             verbatimTextOutput("inputValue"),
                             h4('Your height (cm)'),
                             verbatimTextOutput("inputValue2"),
                             h4('Calculated BMI'),
                             verbatimTextOutput("prediction"),
                             h4('BMI Classification'),
                             verbatimTextOutput("class")),
                    tabPanel("Classification table",imageOutput("image")),
                    tabPanel("BMI Info",    h3('What is BMI?'),
                             p(' Body Mass Index (BMI) is a simple index of weight-for-height that is 
                                commonly used to classify underweight, overweight and obesity in adults. 
                                It is defined as the weight in kilograms divided by the square of the height 
                                in metres (kg/m2).
                                BMI values are age-independent and the same for both sexes. However, BMI 
                                may not correspond to the same degree of fatness in different populations due, 
                                in part, to different body proportions. The health risks associated with 
                                increasing BMI are continuous and the interpretation of BMI gradings in 
                                relation to risk may differ for different populations.'),

                              p('In recent years, there was a growing debate on whether there are possible 
                                needs for developing different BMI cut-off points for different ethnic groups 
                                due to the increasing evidence that the associations between BMI, percentage 
                                of body fat, and body fat distribution differ across populations and therefore,
                                the health risks increase below the cut-off point of 25 kg/m2 that defines 
                                overweight in the current WHO classification.'),

                              p('Retrieved from WHO website, http://apps.who.int/bmi/'))
        )
      )
    ))