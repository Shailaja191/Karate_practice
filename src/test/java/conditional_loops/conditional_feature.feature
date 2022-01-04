Feature: checking conditional loops

  Scenario: using online rest api we are checking rest api
    #Here we would like to check that...out of the total responses recieved from API if this conditional statement written gets satisfied...then do this....this kind of conditional operations can be performed using conditional loops in karate framework....its kind of conditional assertions...
    #for doing that we will be using eval....eval is used to evaluate the responses we recieve...
    Given url 'https://gorest.co.in/public/v1/users/30'
    When method get
    Then status 200
    #Then print response
    * def output_value = response
    #Then print output_value
    #here we have created an empty variable....to store the responses...as outpu
    #now we need to evaluate using if loop....
    #we are checking like if name ends with that mentioned name,,,,then capture the email id of that person and append it to the output variable created....
    And eval for (var i=0;i<response.data.length;i++) if(response.data[i].name.endsWith("Nayar ")) output_value.add(response.data[i].email)
		Then print output_value.email