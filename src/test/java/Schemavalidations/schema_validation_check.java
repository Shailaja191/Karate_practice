package Schemavalidations;

import com.intuit.karate.junit5.Karate;

class schema_validation_check {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("schema_validations.feature").relativeTo(getClass());
    }    

}
