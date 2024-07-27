.class public abstract Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;
.super Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;
.source "CstBaseMethodRef.java"


# instance fields
.field private instancePrototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

.field private final prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V
    .registers 5

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    .line 49
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->isSignaturePolymorphic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->fromDescriptor(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 60
    :goto_0
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Prototype;

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-void

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    goto :goto_0
.end method


# virtual methods
.method protected final compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 99
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 101
    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return v0

    .line 105
    :cond_0
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    .line 106
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->compareTo(Lcom/s1243808733/android/dx/rop/type/Prototype;)I

    move-result v0

    goto :goto_0
.end method

.method public final getParameterWordCount(Z)I
    .registers 3

    .line 135
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getPrototype(Z)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v0

    return v0
.end method

.method public final getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-object v0
.end method

.method public final getPrototype(Z)Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 4

    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 92
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->withFirstParameter(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    goto :goto_0
.end method

.method public final getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public final isClassInit()Z
    .registers 2

    .line 159
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->isClassInit()Z

    move-result v0

    return v0
.end method

.method public final isInstanceInit()Z
    .registers 2

    .line 147
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->isInstanceInit()Z

    move-result v0

    return v0
.end method

.method public final isSignaturePolymorphic()Z
    .registers 4

    const/4 v0, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    .line 172
    sget-object v2, Lcom/s1243808733/android/dx/rop/cst/CstType;->METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invoke"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    const-string v2, "invokeExact"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 214
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :cond_3
    sget-object v2, Lcom/s1243808733/android/dx/rop/cst/CstType;->VAR_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "compareAndExchange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "compareAndExchangeAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "compareAndExchangeRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "compareAndSet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndAdd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndAddAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndAddRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndBitwiseAnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndBitwiseAndAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndBitwiseAndRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndBitwiseOr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndBitwiseOrAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndBitwiseOrRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndBitwiseXor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndBitwiseXorAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndBitwiseXorRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndSet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndSetAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getAndSetRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getOpaque"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "getVolatile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "setOpaque"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "setRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "setVolatile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "weakCompareAndSet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "weakCompareAndSetAcquire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "weakCompareAndSetPlain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "weakCompareAndSetRelease"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    goto/16 :goto_0
.end method
