package URL_from_karateconfig;

import com.intuit.karate.junit5.Karate;

class URL_usage {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("URL_usage").relativeTo(getClass());
    }    

}
