.class public abstract Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;
.super Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;
.source "CstBaseMethodRef.java"


# instance fields
.field private instancePrototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

.field private final prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V
    .locals 2

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
    .locals 2

    .line 99
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

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
    .locals 1

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
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-object v0
.end method

.method public final getPrototype(Z)Lcom/s1243808733/android/dx/rop/type/Prototype;
    .locals 2

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
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public final isClassInit()Z
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->isClassInit()Z

    move-result v0

    return v0
.end method

.method public final isInstanceInit()Z
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->isInstanceInit()Z

    move-result v0

    return v0
.end method

.method public final isSignaturePolymorphic()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    .line 172
    sget-object v3, Lcom/s1243808733/android/dx/rop/cst/CstType;->METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "invoke"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "invokeExact"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    move v0, v1

    .line 179
    :cond_1
    :pswitch_0
    return v0

    .line 178
    :cond_2
    sget-object v3, Lcom/s1243808733/android/dx/rop/cst/CstType;->VAR_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "weakCompareAndSetRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1e

    goto :goto_1

    :sswitch_1
    const-string v3, "getAndSetAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1d

    goto :goto_1

    :sswitch_2
    const-string v3, "compareAndExchange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1c

    goto :goto_1

    :sswitch_3
    const-string v3, "getAndBitwiseOr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1b

    goto :goto_1

    :sswitch_4
    const-string v3, "getAndBitwiseXorAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :sswitch_5
    const-string v3, "getAndAddAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x19

    goto :goto_1

    :sswitch_6
    const-string v3, "compareAndExchangeAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x18

    goto :goto_1

    :sswitch_7
    const-string v3, "getOpaque"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x17

    goto :goto_1

    :sswitch_8
    const-string v3, "setOpaque"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x16

    goto :goto_1

    :sswitch_9
    const-string v3, "getAndBitwiseAndAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x15

    goto :goto_1

    :sswitch_a
    const-string v3, "getAndSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x14

    goto :goto_1

    :sswitch_b
    const-string v3, "getAndAdd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "getVolatile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "setVolatile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "getAndBitwiseOrAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "getAndSetRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "getAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "setRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "weakCompareAndSetAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "weakCompareAndSetPlain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "getAndBitwiseXorRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "getAndBitwiseXor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "getAndBitwiseAnd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "getAndAddRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "weakCompareAndSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "compareAndExchangeRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "compareAndSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "getAndBitwiseAndRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "getAndBitwiseOrRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74054ecc -> :sswitch_1e
        -0x64896c60 -> :sswitch_1d
        -0x639aefb0 -> :sswitch_1c
        -0x4d038cae -> :sswitch_1b
        -0x42a27c48 -> :sswitch_1a
        -0x41bf8e59 -> :sswitch_19
        -0x3d910599 -> :sswitch_18
        -0x3d90af15 -> :sswitch_17
        -0x2f5b5f64 -> :sswitch_16
        -0x21ce070e -> :sswitch_15
        -0xe5aaa02 -> :sswitch_14
        -0xdc04ebb -> :sswitch_13
        -0x7976360 -> :sswitch_12
        -0x23e5d3a -> :sswitch_11
        0x18f56 -> :sswitch_10
        0x1bc62 -> :sswitch_f
        0x594ea03 -> :sswitch_e
        0x6099c1e -> :sswitch_d
        0xb513b12 -> :sswitch_c
        0x10d9c640 -> :sswitch_b
        0x10da0a01 -> :sswitch_a
        0x1510cc6f -> :sswitch_9
        0x1c0e5b23 -> :sswitch_8
        0x28d92717 -> :sswitch_7
        0x2c96ac21 -> :sswitch_6
        0x37daaa76 -> :sswitch_5
        0x4a3ed96b -> :sswitch_4
        0x50983b53 -> :sswitch_3
        0x58737ef5 -> :sswitch_2
        0x775bdb95 -> :sswitch_1
        0x780b1d2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
