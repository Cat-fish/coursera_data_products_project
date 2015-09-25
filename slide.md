Coursera Developing Data Products: Project
========================================================
author: Michiko
date: Sep. 24th 2015

Introduction
========================================================

BMI (Body Mass Index) is an idex developed to give a rough idea of underweight, overweight and obesity.
The index is calculated as below;

BMI = Weight (kg) / (Height (m) * Height (m))


Application
========================================================
<small>I developed an application in which users can simply fill in their weight and height to check their BMI.
For example, once an application user fill in his/her weight as 60kg and height as 160cm, the BMI is altomatically calculated;

```r
BMI <- 60/(160/100)^2
```

Moreover, the applicatio indicate which category you belong to based on the calculated BMI.

```r
Class <- ifelse (BMI<18.5, "Underweight",
                 ifelse(BMI<25, "Normal Range",
                 ifelse(BMI<30, "Overweight","Obese")))
Class
```

```
[1] "Normal Range"
```
</small>

Category table and BMI information
========================================================
There are two more tubs in the application.
Classification tub: a table showing categories with each BMI range
BMI info tub: More detailed information about BMI


Note
========================================================

BMI is developed as a simple underweight/obesity check index. There are critiques that applying one simple formula for everyone might be misleading. If you are interested to know more about pros and cons of BMI, please visit WHO website (http://apps.who.int/bmi/index.jsp)



