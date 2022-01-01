package post_request_sample;
import com.intuit.karate.junit5.Karate;

class post_request_java {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("post_request_feature").tags("@tag1,@tag2").relativeTo(getClass());
    }    
    
   
 
   
    
}
