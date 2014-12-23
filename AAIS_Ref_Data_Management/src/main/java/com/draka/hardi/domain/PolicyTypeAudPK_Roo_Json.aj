// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.draka.hardi.domain;

import com.draka.hardi.domain.PolicyTypeAudPK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect PolicyTypeAudPK_Roo_Json {
    
    public String PolicyTypeAudPK.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String PolicyTypeAudPK.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static PolicyTypeAudPK PolicyTypeAudPK.fromJsonToPolicyTypeAudPK(String json) {
        return new JSONDeserializer<PolicyTypeAudPK>()
        .use(null, PolicyTypeAudPK.class).deserialize(json);
    }
    
    public static String PolicyTypeAudPK.toJsonArray(Collection<PolicyTypeAudPK> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String PolicyTypeAudPK.toJsonArray(Collection<PolicyTypeAudPK> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<PolicyTypeAudPK> PolicyTypeAudPK.fromJsonArrayToPolicyTypeAudPKs(String json) {
        return new JSONDeserializer<List<PolicyTypeAudPK>>()
        .use("values", PolicyTypeAudPK.class).deserialize(json);
    }
    
}
