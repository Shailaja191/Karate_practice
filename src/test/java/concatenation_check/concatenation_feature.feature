Feature: Concatenation check

  Scenario: Define a variable
    * def a = 10
    * def b = 20
    * def c = 30
    * print 'total sum = ' + a + b + c 
    #it works like a string concatenation
    * print 'total sum = ' + (a + b + c)
    #it prints summation
    #similarly we can perform other mathematical operations
