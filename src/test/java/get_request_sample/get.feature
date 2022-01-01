Feature: practice get request
Scenario: Validating weather API
#sample get request	
Given url 'https://api.openweathermap.org/data/2.5/weather?q=London&appid=24fe1536b9e38d411ab00341728d6347'
When method get
Then status 200  
And match response.weather[0].description == 'light rain'
#here we are checking for the exact response...it should match exactly...response ==
And match $.weather[0].description contains 'light'
#here we are checking whether this is a subset of response...need not match exactly...subset is enough to pass the assertion.
#we can use $ symbol in place of response keyword 
#we can use * symbol in place of given,when,then,and,..cucumber will understand automatically based on its understanding
And match $.weather[0].description == '#string'
#Here we are checking whether the response recieved is a string or not...similarly we can check number and other data types as well for the responses recieved.
#whenever we run an api, we get an output response..so it will be shared in response variable..
And def descriptionvariable = response.weather[0].description
#here to define a variable...we are using def as keyword to define a new variable..in that we are storing the response required and printing it. 
Then print descriptionvariable



