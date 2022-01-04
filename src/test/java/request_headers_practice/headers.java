package request_headers_practice;

import com.intuit.karate.junit5.Karate;

class headers {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("headers").relativeTo(getClass());
    }    

}
