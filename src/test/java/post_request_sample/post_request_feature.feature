Feature: sample post request
  @tag1
  #here we are creating a tag to this particular scenario...we generally create tags to customise our execution
  Scenario: using reqres website
    Given url 'https://reqres.in/api/users'
    And request { "email":"eve.holt@reqres.in","password":"pistol" }
    * method post
    * status 201
    
    @tag2
    Scenario: using reqres website
    Given url 'https://reqres.in/api/users'
    And request { "email":"eve.holt@reqres.in","password":"pistol" }
    * method post
    * status 201
    
   
