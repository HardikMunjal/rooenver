package com.draka.hardi.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "policy_customer")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "policyClaims", "customerName", "policyTypeCode" })
public class PolicyCustomer {
}
