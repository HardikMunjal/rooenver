// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.draka.hardi.domain;

import com.draka.hardi.domain.PolicyTypeAud;
import com.draka.hardi.domain.PolicyTypeAudPK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PolicyTypeAud_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PolicyTypeAud.entityManager;
    
    public static final List<String> PolicyTypeAud.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager PolicyTypeAud.entityManager() {
        EntityManager em = new PolicyTypeAud().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PolicyTypeAud.countPolicyTypeAuds() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PolicyTypeAud o", Long.class).getSingleResult();
    }
    
    public static List<PolicyTypeAud> PolicyTypeAud.findAllPolicyTypeAuds() {
        return entityManager().createQuery("SELECT o FROM PolicyTypeAud o", PolicyTypeAud.class).getResultList();
    }
    
    public static List<PolicyTypeAud> PolicyTypeAud.findAllPolicyTypeAuds(String sortFieldName, String sortOrder,int ptcId) {
        String jpaQuery = "SELECT o FROM PolicyTypeAud o where ptc_id='"+ptcId+"'";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PolicyTypeAud.class).getResultList();
    }
    
    public static PolicyTypeAud PolicyTypeAud.findPolicyTypeAud(PolicyTypeAudPK id) {
        if (id == null) return null;
        return entityManager().find(PolicyTypeAud.class, id);
    }
    
    public static List<PolicyTypeAud> PolicyTypeAud.findPolicyTypeAudEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PolicyTypeAud o", PolicyTypeAud.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<PolicyTypeAud> PolicyTypeAud.findPolicyTypeAudEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder,int ptcId) {
        String jpaQuery = "SELECT o FROM PolicyTypeAud o where ptc_id='"+ptcId+"'";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PolicyTypeAud.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PolicyTypeAud.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PolicyTypeAud.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PolicyTypeAud attached = PolicyTypeAud.findPolicyTypeAud(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PolicyTypeAud.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PolicyTypeAud.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PolicyTypeAud PolicyTypeAud.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PolicyTypeAud merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
