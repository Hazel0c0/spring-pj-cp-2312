package org.example.springsetting;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Slf4j
public class EventController {

    @GetMapping("/javascript/event")
    public String jsEvent() {
        log.info("java script event");
        return "/javascript/event";
    }

    @GetMapping("/jQuery/event")
    public String jqEvent() {
        log.info("jQuery event");
        return "/jQuery/event";
    }
}
