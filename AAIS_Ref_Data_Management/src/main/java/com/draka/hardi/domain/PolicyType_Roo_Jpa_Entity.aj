// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.draka.hardi.domain;

import com.draka.hardi.domain.PolicyType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect PolicyType_Roo_Jpa_Entity {
    
    declare @type: PolicyType: @Entity;
    
    declare @type: PolicyType: @Table(name = "policy_type");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ptc_id")
    private Integer PolicyType.ptcId;
    
    public Integer PolicyType.getPtcId() {
        return this.ptcId;
    }
    
    public void PolicyType.setPtcId(Integer id) {
        this.ptcId = id;
    }
    
}