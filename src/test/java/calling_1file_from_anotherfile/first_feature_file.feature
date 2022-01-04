Feature: Get request practice

  #This is the first scenario file
  #The output from this scenario file...will be an input to another scenario file
  #reusability
  Scenario: we are checking calling functionality in Karate
    Given url 'https://api.openweathermap.org/data/2.5/weather?q=London&appid=24fe1536b9e38d411ab00341728d6347'
    When method get
    Then status 200
    And def desc = response.weather[0].description
  #so here,we have sent a get request API...so it means that we will get a response from API
  #to reuse that response from API...we created a variable called desc....using keyword def...
  #once the response gets stored in desc variable....we will call this feature file in another feature file using
  #call read function....which is used to call another file....and in that we will mention the path of this      feature file
  #Then we can start reusing...
  #usually this process is used during admin bearer token authorised key generator in real time projects...assume that we need to send an url with id and password which will give us admin token key in 1 feature file....which we have to reuse that key generated in another feature file...as they are client specific private API's
