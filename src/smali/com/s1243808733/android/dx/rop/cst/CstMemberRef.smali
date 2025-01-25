.class public abstract Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;
.super Lcom/s1243808733/android/dx/rop/cst/TypedConstant;
.source "CstMemberRef.java"


# instance fields
.field private final definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private final nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    .line 44
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 45
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    return-void

    .line 41
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nat == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "definingClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 4

    .line 75
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    .line 76
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 82
    :cond_d
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    .line 83
    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_25

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_25

    .line 55
    :cond_d
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    .line 56
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    .line 57
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p1, 0x0

    :goto_26
    return p1
.end method

.method public final getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public final getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final isCategory2()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final toHuman()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
