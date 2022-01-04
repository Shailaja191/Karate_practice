package queryParameter_configJS;

import com.intuit.karate.junit5.Karate;

class queryParameter_config {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("queryParameter_configJS").relativeTo(getClass());
    }    

}
