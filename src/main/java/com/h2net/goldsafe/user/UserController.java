package com.h2net.goldsafe.user;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class UserController {
    @PostMapping("/insertEntryNumber")
    public String insertEntryNumber(@RequestParam String name,
                                    @RequestParam int entryNumber) {
        return "insert entry number";
    }
}
