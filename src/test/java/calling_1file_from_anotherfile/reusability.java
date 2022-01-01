package calling_1file_from_anotherfile;

import com.intuit.karate.junit5.Karate;

class reusability {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("second_calling_feature_file.feature").relativeTo(getClass());
    }    

}
