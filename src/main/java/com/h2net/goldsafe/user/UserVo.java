package com.h2net.goldsafe.user;

import lombok.Data;

@Data
public class UserVo {
    private String entryName;
    private int entryNumber;

    public String getEntryName() {
        return entryName;
    }

    public void setEntryName(String entryName) {
        this.entryName = entryName;
    }

    public int getEntryNumber() {
        return entryNumber;
    }

    public void setEntryNumber(int entryNumber) {
        this.entryNumber = entryNumber;
    }
}
