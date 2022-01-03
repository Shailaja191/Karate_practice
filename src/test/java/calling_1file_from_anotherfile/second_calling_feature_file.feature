Feature: reusability checking

  Scenario: Here we will be calling the other file in this package
    And def callingvariable = call read('classpath:calling_1file_from_anotherfile/first_feature_file.feature')
    Then print callingvariable.desc
#this is a cmnt
