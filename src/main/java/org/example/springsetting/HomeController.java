package org.example.springsetting;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Slf4j
public class HomeController {

    @GetMapping("/")
    public String home() {
        log.info("homehome");
        return "index";
    }
    @GetMapping("/test")
    public String tset() {
        log.info("test");
        return "test";
    }
}
