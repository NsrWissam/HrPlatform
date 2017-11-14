package com.company.testproject.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.Lob;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s|description")
@Table(name = "TP_CERTIFICATE")
@Entity(name = "tp$Certificate")
public class Certificate extends StandardEntity {
    private static final long serialVersionUID = -4793022699763963939L;

    @Lob
    @Column(name = "DESCRIPTION", nullable = false)
    protected String description;

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }


}