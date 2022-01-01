package scenario_outline_practice;

import com.intuit.karate.junit5.Karate;

class scenario_outline_java {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("scenario_outline_feature").relativeTo(getClass());
    }    
    
    

}
