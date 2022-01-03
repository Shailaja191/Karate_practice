package concatenation_check;

import com.intuit.karate.junit5.Karate;

class concatenation_java {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("concatenation_feature").relativeTo(getClass());
    }    

}
