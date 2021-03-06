package com.company.testproject.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s %s %s|street,number,city")
@Table(name = "TP_ADDRESS")
@Entity(name = "tp$Address")
public class Address extends StandardEntity {
    private static final long serialVersionUID = 4176221040642488540L;

    @Column(name = "CITY", nullable = false, length = 100)
    protected String city;

    @Column(name = "STREET", nullable = false, length = 100)
    protected String street;

    @Column(name = "COUNTRY", nullable = false, length = 100)
    protected String country;

    @Column(name = "NUMBER_", nullable = false)
    protected Integer number;

    @Column(name = "POSTALCODE", nullable = false)
    protected Integer postalcode;

    public void setCity(String city) {
        this.city = city;
    }

    public String getCity() {
        return city;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getStreet() {
        return street;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCountry() {
        return country;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getNumber() {
        return number;
    }

    public void setPostalcode(Integer postalcode) {
        this.postalcode = postalcode;
    }

    public Integer getPostalcode() {
        return postalcode;
    }


}