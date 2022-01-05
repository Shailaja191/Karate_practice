package post_request2;

import com.intuit.karate.junit5.Karate;

class post_request2 {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("post_request2").relativeTo(getClass());
    }    

}
