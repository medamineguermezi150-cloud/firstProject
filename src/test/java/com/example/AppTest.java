package com.example;

import com.intuit.karate.junit5.Karate;

public class AppTest {
    
    @Karate.Test
    Karate testAll() {
       
        return Karate.run("test").relativeTo(getClass());
    }
}

