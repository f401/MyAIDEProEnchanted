.class public abstract Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;
.super Lcom/s1243808733/android/dx/rop/cst/TypedConstant;
.source "CstMemberRef.java"


# instance fields
.field private final definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private final nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V
    .registers 5

    .line 35
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "definingClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    if-nez p2, :cond_1

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nat == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 45
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 75
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    .line 76
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    .line 83
    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    .line 56
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
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
    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public final toHuman()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->nat:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->typeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
