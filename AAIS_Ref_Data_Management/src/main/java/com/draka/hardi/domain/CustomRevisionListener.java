package com.draka.hardi.domain;

import org.hibernate.envers.RevisionListener;

public class CustomRevisionListener implements RevisionListener {

public void newRevision(Object revisionEntity) {
    CustomRevisionEntity revision = (CustomRevisionEntity) revisionEntity;
    revision.setUsername("Hardik"); //for testing
}

}