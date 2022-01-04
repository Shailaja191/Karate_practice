Feature: GET API headers feature

  Scenario: pass the user request with one_by_one
    #here we are passing multiple headers using and and and;..which is making code look lengthy
    #instead we can send all headers in single shot using key value pair concept
    Given header Accept-Encoding = 'gzip,deflate'
    And header Connection = 'Keep-Alive'
    And header User-Agent = 'PostmanRuntime/7.28.4'
    When url baseUrl+'/public/v1/users'
    And path '30'
    When method GET
    * print response

  Scenario: passing headers using key value pairing concept
    #now pass all the headers using key value pairing separated by ,
    #store all the headers in a variable
    * def request_headers = {Connection: 'Keep-Alive',User-Agent: 'PostmanRuntime/7.28.4'}
    Given headers request_headers
    #now we are passing it as parameter
    When url baseUrl+'/public/v1/users'
    And path '30'
    When method GET
    * print response
    
   Scenario: passing headers using configure keyword
   #in scenario 2, we have created a variable...stored all the headers in that variable and that variable we have passed as parameter/input to the url
   #but in this scenario,we will use configure keyword...so it will automatically take the headers
   * configure headers = {Connection: 'Keep-Alive',User-Agent: 'PostmanRuntime/7.28.4'}
    #Given headers request_headers...no need of this statement again as we are using configure
    #now we are passing it as parameter
    When url baseUrl+'/public/v1/users'
    And path '30'
    When method GET
    * print response
