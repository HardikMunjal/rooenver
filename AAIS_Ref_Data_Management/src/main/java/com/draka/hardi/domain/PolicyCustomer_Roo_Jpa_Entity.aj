// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.draka.hardi.domain;

import com.draka.hardi.domain.PolicyCustomer;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect PolicyCustomer_Roo_Jpa_Entity {
    
    declare @type: PolicyCustomer: @Entity;
    
    declare @type: PolicyCustomer: @Table(name = "policy_customer");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "p_id")
    private Integer PolicyCustomer.pId;
    
    public Integer PolicyCustomer.getPId() {
        return this.pId;
    }
    
    public void PolicyCustomer.setPId(Integer id) {
        this.pId = id;
    }
    
}
