package Authtokenpractice;

import com.intuit.karate.junit5.Karate;

class Authtokenn {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("Authtoken").relativeTo(getClass());
    }    

}
