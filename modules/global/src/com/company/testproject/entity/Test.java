package com.company.testproject.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s|id")
@Table(name = "TP_TEST")
@Entity(name = "tp$Test")
public class Test extends StandardEntity {
    private static final long serialVersionUID = 1515646126513903247L;

}