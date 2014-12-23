package com.draka.hardi.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(identifierType = CustomerAudPK.class, versionField = "", table = "customer_aud")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "rev" })
public class CustomerAud {
}
