package Json_object_practice;

import com.intuit.karate.junit5.Karate;

class jsonobject_java {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("json_feature").relativeTo(getClass());
    }    

}
