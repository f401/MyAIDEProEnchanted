.class public final Lcom/s1243808733/android/dx/cf/iface/StdField;
.super Lcom/s1243808733/android/dx/cf/iface/StdMember;
.source "StdField.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/iface/Field;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;ILcom/s1243808733/android/dx/rop/cst/CstNat;Lcom/s1243808733/android/dx/cf/iface/AttributeList;)V
    .registers 5

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/iface/StdMember;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;ILcom/s1243808733/android/dx/rop/cst/CstNat;Lcom/s1243808733/android/dx/cf/iface/AttributeList;)V

    return-void
.end method


# virtual methods
.method public getConstantValue()Lcom/s1243808733/android/dx/rop/cst/TypedConstant;
    .registers 3

    .line 45
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/iface/StdField;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v0

    .line 46
    nop

    .line 47
    const-string v1, "ConstantValue"

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttConstantValue;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_11
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttConstantValue;->getConstantValue()Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    move-result-object v0

    return-object v0
.end method
