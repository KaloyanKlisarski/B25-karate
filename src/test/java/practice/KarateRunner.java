package practice;

import com.intuit.karate.junit5.Karate;

public class KarateRunner {

    @Karate.Test
    public Karate runSpartanTeg(){

        return Karate.run("get_spartans").tags("spartan").relativeTo(getClass());

    }

}
