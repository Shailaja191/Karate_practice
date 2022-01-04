Feature: checking URL usage 
Scenario: we are calling url from karate congfig.js file
Given url baseUrl+'/public/v1/users'
#here baseUrl...its taking from karate config.js file
#we are not hardcoding or fixing the url bcos in a project if url/api gets updated then we need to update in all feature files
#similarly we can change environment dev or qa based on karate config file
When method get
Then status 200