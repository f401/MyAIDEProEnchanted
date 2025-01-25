.class public final Lcom/s1243808733/android/dx/rop/cst/CstCallSite;
.super Lcom/s1243808733/android/dx/rop/cst/CstArray;
.source "CstCallSite.java"


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)V

    return-void
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;Lcom/s1243808733/android/dx/rop/cst/CstNat;Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;)Lcom/s1243808733/android/dx/rop/cst/CstCallSite;
    .registers 6

    if-eqz p0, :cond_55

    if-eqz p1, :cond_4d

    .line 43
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;-><init>(I)V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 45
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 46
    new-instance p0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->fromDescriptor(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;-><init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p0}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    if-eqz p2, :cond_44

    .line 48
    :goto_32
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->size()I

    move-result p0

    if-ge v1, p0, :cond_44

    .line 49
    add-int/lit8 p0, v1, 0x3

    invoke-virtual {p2, v1}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 52
    :cond_44
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->setImmutable()V

    .line 53
    new-instance p0, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)V

    return-object p0

    .line 40
    :cond_4d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "nat == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_55
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bootstrapMethodHandle == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_5e

    :goto_5d
    throw p0

    :goto_5e
    goto :goto_5d
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 3

    .line 84
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->compareTo(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 68
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    if-eqz v0, :cond_13

    .line 69
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 78
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 5

    .line 108
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    invoke-virtual {v0, v3, v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 90
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "call site{"

    invoke-virtual {v0, v3, v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 96
    const-string v0, "call site"

    return-object v0
.end method
