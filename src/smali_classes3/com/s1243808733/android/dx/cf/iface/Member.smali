.class public interface Lcom/s1243808733/android/dx/cf/iface/Member;
.super Ljava/lang/Object;
.source "Member.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/iface/HasAttribute;


# virtual methods
.method public abstract getAccessFlags()I
.end method

.method public abstract getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;
    .annotation runtime Ljava/lang/Override;
    .end annotation
.end method

.method public abstract getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
.end method

.method public abstract getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;
.end method

.method public abstract getName()Lcom/s1243808733/android/dx/rop/cst/CstString;
.end method

.method public abstract getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;
.end method
