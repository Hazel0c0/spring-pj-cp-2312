package org.example.springsetting;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

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


    @GetMapping("/1802031300.do")
    public String view1802031300(@RequestParam(required = false) String strRulId) {
        log.debug("/1802031300.do GET : SIM page , strRulId - {}", strRulId);

        return "/str/p03/1802031300";
    }
}
