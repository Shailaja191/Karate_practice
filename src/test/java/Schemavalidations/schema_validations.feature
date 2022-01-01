Feature: Schema validations

  Scenario: Here we will be checking the datatypes
    Given url 'https://reqres.in/api/users/2'
    When method get
    Then status 200
    Then match response ==
      """
      {
      "data": {
        "id": '#number',
        "email": '#string',
        "first_name": '#string',
        "last_name": '#string',
        "avatar": '#string'
      },
      "support": {
        "url": '#string',
        "text": '#string'
      }
      }
      """
  #schema validations means checking the datatype of the response recieved from API send and expected data type of the response received from API
  #If we need to validate the datatypes of the responses recieved,,,we need to check for each and every response receieved from API...if we forget to check the datatype for any of the response recieved from API also...our code gets failed
  #if we give single #...it means that field has to be mandatorily present in each response of the API recieved...it will stop execution if it is marked as mandatory and if it is empty in the responses recieved
        #if we give double # i.e ##...it means that field is optional...in the response received from API..that particular field can be present...or may not be present...it will skip if that value is optional..
        #here we can give "then match each response"....each keyword is used when there are multiple datasets being retrived from API response....generally in an nested array output...we have multiple sets of data....so we will be using each keyword in such case
