// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.draka.hardi.domain;

import com.draka.hardi.domain.Revisions;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Revisions_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Revisions.entityManager;
    
    public static final List<String> Revisions.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Revisions.entityManager() {
        EntityManager em = new Revisions().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Revisions.countRevisionses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Revisions o", Long.class).getSingleResult();
    }
    
    public static List<Revisions> Revisions.findAllRevisionses() {
        return entityManager().createQuery("SELECT o FROM Revisions o", Revisions.class).getResultList();
    }
    
    public static List<Revisions> Revisions.findAllRevisionses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Revisions o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Revisions.class).getResultList();
    }
    
    public static Revisions Revisions.findRevisions(Integer id) {
        if (id == null) return null;
        return entityManager().find(Revisions.class, id);
    }
    
    public static List<Revisions> Revisions.findRevisionsEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Revisions o", Revisions.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Revisions> Revisions.findRevisionsEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Revisions o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Revisions.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Revisions.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Revisions.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Revisions attached = Revisions.findRevisions(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Revisions.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Revisions.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Revisions Revisions.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Revisions merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
