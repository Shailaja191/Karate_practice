Feature: Scenario outline practice
Scenario Outline: verify current data
#scenario outline means we are working on different data sets..
* url '<url>'
#here we are not mentioning the url...we want to use the same code for different API's.so we are writing like this.
#here we are using * in place of given,when,then...cucumber will understand itself based on the code we write.
* method get
* status 200

Examples:
|url|
|https://api.openweathermap.org/data/2.5/weather?q=London&appid=24fe1536b9e38d411ab00341728d6347|  #url1
|https://api.openweathermap.org/data/2.5/weather?q=London&appid=24fe1536b9e38d411ab00341728d6347|  #url2
#so here based on execution...i.e  |url| will consider url1 for executing 1st time...nd will consider url2 while executing next time

#it will be considered as 2 scenarios...one is while executing url1 ...and other scenario is considered during scenario2 execution