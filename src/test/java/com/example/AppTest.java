package com.example;

import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class AppTest {
    
    @Test
    void testParallel() {
        var results = Runner.path("classpath:com/example")
                .outputJunitXml(true)            
                .reportDir("target/karate-reports") 
                .parallel(2);

        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
