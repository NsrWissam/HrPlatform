package com.company.testproject.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s|id")
@Table(name = "TP_SURVEY")
@Entity(name = "tp$Survey")
public class Survey extends StandardEntity {
    private static final long serialVersionUID = -165383480640524428L;

}