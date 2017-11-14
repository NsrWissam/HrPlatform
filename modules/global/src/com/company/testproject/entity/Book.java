package com.company.testproject.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigDecimal;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s %s|title,author")
@Table(name = "TP_BOOK")
@Entity(name = "tp$Book")
public class Book extends StandardEntity {
    private static final long serialVersionUID = 262722718080123753L;

    @Column(name = "AUTHOR", nullable = false, length = 50)
    protected String author;

    @Column(name = "TITLE", nullable = false, length = 50)
    protected String title;

    @Column(name = "YEAR_", nullable = false)
    protected Integer year;

    @Column(name = "COST", nullable = false)
    protected BigDecimal cost;

    @Column(name = "ISBN", nullable = false, length = 50)
    protected String isbn;

    @Column(name = "PUBLISHER", nullable = false, length = 50)
    protected String publisher;

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getAuthor() {
        return author;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Integer getYear() {
        return year;
    }

    public void setCost(BigDecimal cost) {
        this.cost = cost;
    }

    public BigDecimal getCost() {
        return cost;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getPublisher() {
        return publisher;
    }


}