package com.company.testproject.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum STATUS implements EnumClass<Integer> {

    EXPIRED(10),
    ONGOING(20),
    PLANNED(30);

    private Integer id;

    STATUS(Integer value) {
        this.id = value;
    }

    public Integer getId() {
        return id;
    }

    @Nullable
    public static STATUS fromId(Integer id) {
        for (STATUS at : STATUS.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}