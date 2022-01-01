package conditional_loops;

import com.intuit.karate.junit5.Karate;

class conditional_loops_java {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("conditional_feature").relativeTo(getClass());
    }    

}
