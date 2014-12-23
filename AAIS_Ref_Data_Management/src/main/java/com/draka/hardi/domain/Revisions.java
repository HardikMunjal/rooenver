package com.draka.hardi.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "revisions")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "customerAuds", "policyCustomerAuds", "policyTypeAuds" })
public class Revisions {
}
