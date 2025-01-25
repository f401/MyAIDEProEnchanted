.class public interface abstract Lcom/s1243808733/android/dx/cf/iface/ClassFile;
.super Ljava/lang/Object;
.source "ClassFile.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/iface/HasAttribute;


# virtual methods
.method public abstract getAccessFlags()I
.end method

.method public abstract getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;
.end method

.method public abstract getBootstrapMethods()Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;
.end method

.method public abstract getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;
.end method

.method public abstract getFields()Lcom/s1243808733/android/dx/cf/iface/FieldList;
.end method

.method public abstract getInterfaces()Lcom/s1243808733/android/dx/rop/type/TypeList;
.end method

.method public abstract getMagic()I
.end method

.method public abstract getMajorVersion()I
.end method

.method public abstract getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;
.end method

.method public abstract getMinorVersion()I
.end method

.method public abstract getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;
.end method

.method public abstract getSuperclass()Lcom/s1243808733/android/dx/rop/cst/CstType;
.end method

.method public abstract getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
.end method
