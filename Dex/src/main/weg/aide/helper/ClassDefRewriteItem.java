package weg.aide.helper;

import java.util.Map;
import com.google.common.collect.Table;
import java.util.List;
import com.google.common.collect.Maps;
import com.google.common.collect.HashBasedTable;
import com.google.common.base.MoreObjects;
import com.google.common.collect.Lists;
import com.google.common.collect.ImmutableList;

public class ClassDefRewriteItem 
{
    public static final List<? extends CharSequence> EMPTY_LIST = ImmutableList.of();
    
    String newNane;
    
    Map<String, String> fields;
    
    Table<String, List<? extends CharSequence>, String> methods;
    
    public String getMethodType(String old, List<? extends CharSequence> params) {
        if (methods != null) {
            String g = methods.get(old, MoreObjects.firstNonNull(params, EMPTY_LIST));
            if (g != null) {
                return g;
            }
        }
        return old;
    }
    
    public ClassDefRewriteItem addField(String oldName, String newName) {
        if (fields == null) {
            fields = Maps.newHashMap();
        }
        fields.put(oldName, newName);
        return this;
    }
    
    public ClassDefRewriteItem addMethod(String oldName, String newName, String...params) {
        if (methods == null) {
            methods = HashBasedTable.create();
        }
        
        if (params != null) {
            methods.put(oldName, ImmutableList.copyOf(params), newName);
        } else {
            methods.put(oldName, EMPTY_LIST, newName);
        }
        
        return this;
    }
    
    public String getFieldType(String old) {
        if (fields != null) {
            String g = fields.get(old);
            if (g != null) {
                return g;
            }
        }
        return old;
    }
    
    public static ClassDefRewriteItem of(String newNams) {
        ClassDefRewriteItem r = new ClassDefRewriteItem();
        r.newNane = newNams;
        return r;
    }
    
}
