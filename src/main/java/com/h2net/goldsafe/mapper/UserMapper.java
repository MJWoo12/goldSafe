package com.h2net.goldsafe.mapper;

import com.h2net.goldsafe.user.UserVo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    int insertEntry(UserVo userVo);
}
