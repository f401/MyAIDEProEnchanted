.class public final Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;
.super Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;
.source "CstFieldRef.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    return-void
.end method

.method public static forPrimitiveType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;
    .registers 3

    .line 36
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->forBoxedPrimitiveType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p0

    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstNat;->PRIMITIVE_TYPE_NAT:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    return-object v0
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 3

    .line 69
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 75
    :cond_7
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    .line 76
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result p1

    return p1
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 63
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getFieldType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 53
    const-string v0, "field"

    return-object v0
.end method
