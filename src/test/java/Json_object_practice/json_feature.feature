Feature: practising Json objects and array

  Scenario: try to perform some print operations on Json
    #we are trying to define an json object
    * def object =
      """
      [
      {
      "name" : "siddu",
      "empid" : 1800211,
      "role" : "QA"
      },
      {
      "name" : "nadeem",
      "empid" : 1809212,
      "role" : "QA"
      }
      ]
      """
    #we are printing entire json object
    * print object
    #we are printing only 1st index object
    * print object[1]
    #we are printing only 0th index empid
    * print object[0].empid
    #now we try concatenation operations
    * print object[0].name + ' ' + object[1].name + ' ' + 'are QA people'

  Scenario: complex json practice
    * def object2 =
      """
      {
      "glossary": {
          "title": "example glossary",
      "GlossDiv": {
              "title": "S",
      "GlossList": {
                  "GlossEntry": {
                      "ID": "SGML",
      	"SortAs": "SGML",
      	"GlossTerm": "Standard Generalized Markup Language",
      	"Acronym": "SGML",
      	"Abbrev": "ISO 8879:1986",
      	"GlossDef": {
                          "para": "A meta-markup language, used to create markup languages such as DocBook.",
      		"GlossSeeAlso": ["GML", "XML"]
                      },
      	"GlossSee": "markup"
                  }
              }
          }
      }
      } 
      """
      * print object2
      * print object2.glossary.title
      * print object2.glossary.GlossDiv.title
