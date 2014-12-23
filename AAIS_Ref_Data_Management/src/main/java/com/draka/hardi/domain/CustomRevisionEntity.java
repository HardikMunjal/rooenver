package com.draka.hardi.domain;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.hibernate.envers.RevisionNumber;
import org.hibernate.envers.RevisionTimestamp;
import org.hibernate.envers.RevisionEntity;

import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.envers.Audited;
@Entity
@Table(name="REVISIONS")
@RevisionEntity(CustomRevisionListener.class)
public class CustomRevisionEntity implements Serializable {
private static final long serialVersionUID = -1255842407304508513L;

@Id
@GeneratedValue
@RevisionNumber
private int id;

@RevisionTimestamp
private long timestamp;

private String username;

public int getId() {
    return id;
}

public void setId(int id) {
    this.id = id;
}

@Transient
public Date getRevisionDate() {
    return new Date(timestamp);
}

public long getTimestamp() {
    return timestamp;
}

public void setTimestamp(long timestamp) {
    this.timestamp = timestamp;
}

public String getUsername() {
    return username;
}

public void setUsername(String username) {
    this.username = username;
}

private static final DateFormat DATE_FORMAT =
new SimpleDateFormat("dd/MM/yy HH:mm");

private String printStandardDate(Date date) {
return DATE_FORMAT.format(date);
}

public boolean equals(Object o) {
    if(this == o) return true;
    if(!(o instanceof CustomRevisionEntity)) return false;

    CustomRevisionEntity that = (CustomRevisionEntity) o;

    if(id != that.id) return false;
    if(timestamp != that.timestamp) return false;
    if(timestamp != that.timestamp) return false;
    if(username != that.username) return false;

    return true;
}

public int hashCode() {
    int result;
    result = id;
    result = 31 * result + (int) (timestamp ^ (timestamp >>> 32));
    return result;
}

public String toString() {
    return "DefaultRevisionEntity(user = " + username + "id = " + id + ", revisionDate = " + DATE_FORMAT.format(getRevisionDate()) + ")";
}
}