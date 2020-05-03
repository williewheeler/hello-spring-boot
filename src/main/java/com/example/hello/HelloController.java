package com.example.hello;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @Value("${app.motd}")
    private String motd;

    @GetMapping("/")
    public String hello() {
        return motd;
    }
}
