Feature: checking URL usage

  Scenario: we are calling url from karate congfig.js file
    Given url baseUrl+'/public/v1/users'
    #here we are taking url from karateconfig.js file and remaining url part we are passing as path parameter
    * def query = {status:'active',gender:'male'}
    #this is the query parameter which we generally pass after ? in postman
    And params query
    When method get
    Then status 200
    Then print response
