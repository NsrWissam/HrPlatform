package com.company.testproject.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.List;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.entity.annotation.OnDeleteInverse;
import com.haulmont.cuba.core.global.DeletePolicy;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.Lob;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s %s|startDate,description")
@Table(name = "TP_TRAINING")
@Entity(name = "tp$Training")
public class Training extends StandardEntity {
    private static final long serialVersionUID = 8862190552748245137L;

    @JoinTable(name = "TP_TRAINING_EMPLOYEE_LINK",
        joinColumns = @JoinColumn(name = "TRAINING_ID"),
        inverseJoinColumns = @JoinColumn(name = "EMPLOYEE_ID"))
    @ManyToMany
    protected List<Employee> attendingList;

    @Lob
    @Column(name = "DESCRIPTION", nullable = false)
    protected String description;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "START_DATE", nullable = false)
    protected Date startDate;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "END_DATE", nullable = false)
    protected Date endDate;

    @JoinTable(name = "TP_TRAINING_LOCATION_LINK",
        joinColumns = @JoinColumn(name = "TRAINING_ID"),
        inverseJoinColumns = @JoinColumn(name = "LOCATION_ID"))
    @OnDeleteInverse(DeletePolicy.UNLINK)
    @OnDelete(DeletePolicy.UNLINK)
    @ManyToMany
    protected List<Location> location;

    @Column(name = "STATUS", nullable = false)
    protected Integer status;

    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "SURVEY_ID")
    protected Survey survey;

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setLocation(List<Location> location) {
        this.location = location;
    }

    public List<Location> getLocation() {
        return location;
    }

    public void setStatus(STATUS status) {
        this.status = status == null ? null : status.getId();
    }

    public STATUS getStatus() {
        return status == null ? null : STATUS.fromId(status);
    }

    public void setSurvey(Survey survey) {
        this.survey = survey;
    }

    public Survey getSurvey() {
        return survey;
    }


    public void setAttendingList(List<Employee> attendingList) {
        this.attendingList = attendingList;
    }

    public List<Employee> getAttendingList() {
        return attendingList;
    }


}