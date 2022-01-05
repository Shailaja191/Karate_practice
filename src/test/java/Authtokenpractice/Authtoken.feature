Feature: Auth token practice

  Scenario: Static token or token which is already known...kind of hardcoded...
  Given header Authorization = 'Bearer ' + tokenID
  Given url baseUrl+'/public/v1/users'
  And path 30
  Then print tokenID   #here we are getting tokenID from karateconfig.js file...we will be reusing it