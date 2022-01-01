package get_request_sample;

import com.intuit.karate.junit5.Karate;

class getjava {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("get").relativeTo(getClass());
    }    

}
