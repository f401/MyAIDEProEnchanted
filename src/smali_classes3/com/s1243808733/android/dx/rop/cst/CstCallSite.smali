.class public final Lcom/s1243808733/android/dx/rop/cst/CstCallSite;
.super Lcom/s1243808733/android/dx/rop/cst/CstArray;
.source "CstCallSite.java"


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)V

    return-void
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;Lcom/s1243808733/android/dx/rop/cst/CstNat;Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;)Lcom/s1243808733/android/dx/rop/cst/CstCallSite;
    .registers 8

    const/4 v0, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bootstrapMethodHandle == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    if-nez p1, :cond_1

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nat == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;-><init>(I)V

    .line 44
    invoke-virtual {v1, v0, p0}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 45
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 46
    const/4 v2, 0x2

    new-instance v3, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/rop/type/Prototype;->fromDescriptor(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;-><init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 47
    if-eqz p2, :cond_2

    .line 48
    :goto_0
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 52
    :cond_2
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->setImmutable()V

    .line 53
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)V

    return-object v0

    .line 49
    :cond_3
    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->compareTo(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 68
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    const-string v1, "{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    const-string v1, "call site{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 96
    const-string v0, "call site"

    return-object v0
.end method
