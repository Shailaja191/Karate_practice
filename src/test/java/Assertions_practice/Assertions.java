package Assertions_practice;

import com.intuit.karate.junit5.Karate;

class Assertions {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("Assertions").relativeTo(getClass());
    }    

}
