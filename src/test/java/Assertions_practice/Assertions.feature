Feature: Assertions practice

  Scenario: from a get request
    Given url 'https://gorest.co.in/public/v1/users'
    When method get
    Then status 200
    And match response.data[0].id == 77
    And match response.data[0].name == "Vasundhara Iyengar CPA1"
    #for string checking u can use single quotes or double quotes as well
    Then print response.data[0].gender
