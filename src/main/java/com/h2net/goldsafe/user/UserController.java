package com.h2net.goldsafe.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/insertEntryNumber")
    public ResponseEntity<Void> insertEntryNumber(@RequestBody UserVo userVo) {
        userService.insertEntryNumber(userVo);
        return ResponseEntity.ok().build();
    }
}
