// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.draka.hardi.domain;

import com.draka.hardi.domain.CustomerAudPK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect CustomerAudPK_Roo_Json {
    
    public String CustomerAudPK.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String CustomerAudPK.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static CustomerAudPK CustomerAudPK.fromJsonToCustomerAudPK(String json) {
        return new JSONDeserializer<CustomerAudPK>()
        .use(null, CustomerAudPK.class).deserialize(json);
    }
    
    public static String CustomerAudPK.toJsonArray(Collection<CustomerAudPK> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String CustomerAudPK.toJsonArray(Collection<CustomerAudPK> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<CustomerAudPK> CustomerAudPK.fromJsonArrayToCustomerAudPKs(String json) {
        return new JSONDeserializer<List<CustomerAudPK>>()
        .use("values", CustomerAudPK.class).deserialize(json);
    }
    
}
