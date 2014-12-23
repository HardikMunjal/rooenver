// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.draka.hardi.domain;

import com.draka.hardi.domain.PolicyClaim;
import com.draka.hardi.domain.PolicyCustomer;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect PolicyClaim_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "policy_id", referencedColumnName = "p_id")
    private PolicyCustomer PolicyClaim.policyId;
    
    @Column(name = "Claim_Description", length = 255)
    @NotNull
    private String PolicyClaim.claimDescription;
    
    public PolicyCustomer PolicyClaim.getPolicyId() {
        return policyId;
    }
    
    public void PolicyClaim.setPolicyId(PolicyCustomer policyId) {
        this.policyId = policyId;
    }
    
    public String PolicyClaim.getClaimDescription() {
        return claimDescription;
    }
    
    public void PolicyClaim.setClaimDescription(String claimDescription) {
        this.claimDescription = claimDescription;
    }
    
}
