package com.example;

import com.intuit.karate.Runner;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class AppTest {
    
    @Test
    void testParallel() {
        var results = Runner.path("classpath:examples")
                .outputJunitXml(true) 
                .parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
}
}

