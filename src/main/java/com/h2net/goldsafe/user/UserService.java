package com.h2net.goldsafe.user;

import com.h2net.goldsafe.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public void insertEntryNumber(UserVo userVo) {
        int result = userMapper.insertEntry(userVo);
        if(result != 1){
            throw new RuntimeException("<UNK>");
        }
    }
}
