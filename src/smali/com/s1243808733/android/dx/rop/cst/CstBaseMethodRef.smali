.class public abstract Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;
.super Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;
.source "CstBaseMethodRef.java"


# instance fields
.field private instancePrototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

.field private final prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    .line 49
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->isSignaturePolymorphic()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 56
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->fromDescriptor(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    goto :goto_22

    .line 58
    :cond_1c
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 60
    :goto_22
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-void
.end method


# virtual methods
.method protected final compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 3

    .line 99
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 105
    :cond_7
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    .line 106
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->compareTo(Lcom/s1243808733/android/dx/rop/type/Prototype;)I

    move-result p1

    return p1
.end method

.method public final getParameterWordCount(Z)I
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getPrototype(Z)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result p1

    return p1
.end method

.method public final getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-object v0
.end method

.method public final getPrototype(Z)Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 3

    if-eqz p1, :cond_5

    .line 86
    iget-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-object p1

    .line 88
    :cond_5
    iget-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    if-nez p1, :cond_19

    .line 89
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->withFirstParameter(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 92
    :cond_19
    iget-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-object p1
.end method

.method public final getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

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
    .registers 5

    .line 171
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstType;->METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_30

    .line 173
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "invoke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "invokeExact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_1ee

    :cond_2f
    return v3

    .line 178
    :cond_30
    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstType;->VAR_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    .line 179
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1f0

    :goto_4e
    goto/16 :goto_1e8

    :sswitch_50
    const-string v1, "weakCompareAndSetRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_4e

    :cond_59
    const/16 v0, 0x1e

    goto/16 :goto_1e9

    :sswitch_5d
    const-string v1, "getAndSetAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto :goto_4e

    :cond_66
    const/16 v0, 0x1d

    goto/16 :goto_1e9

    :sswitch_6a
    const-string v1, "compareAndExchange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto :goto_4e

    :cond_73
    const/16 v0, 0x1c

    goto/16 :goto_1e9

    :sswitch_77
    const-string v1, "getAndBitwiseOr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto :goto_4e

    :cond_80
    const/16 v0, 0x1b

    goto/16 :goto_1e9

    :sswitch_84
    const-string v1, "getAndBitwiseXorAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto :goto_4e

    :cond_8d
    const/16 v0, 0x1a

    goto/16 :goto_1e9

    :sswitch_91
    const-string v1, "getAndAddAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto :goto_4e

    :cond_9a
    const/16 v0, 0x19

    goto/16 :goto_1e9

    :sswitch_9e
    const-string v1, "compareAndExchangeAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    goto :goto_4e

    :cond_a7
    const/16 v0, 0x18

    goto/16 :goto_1e9

    :sswitch_ab
    const-string v1, "getOpaque"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    goto :goto_4e

    :cond_b4
    const/16 v0, 0x17

    goto/16 :goto_1e9

    :sswitch_b8
    const-string v1, "setOpaque"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    goto :goto_4e

    :cond_c1
    const/16 v0, 0x16

    goto/16 :goto_1e9

    :sswitch_c5
    const-string v1, "getAndBitwiseAndAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    goto :goto_4e

    :cond_ce
    const/16 v0, 0x15

    goto/16 :goto_1e9

    :sswitch_d2
    const-string v1, "getAndSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    goto/16 :goto_4e

    :cond_dc
    const/16 v0, 0x14

    goto/16 :goto_1e9

    :sswitch_e0
    const-string v1, "getAndAdd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    goto/16 :goto_4e

    :cond_ea
    const/16 v0, 0x13

    goto/16 :goto_1e9

    :sswitch_ee
    const-string v1, "getVolatile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f8

    goto/16 :goto_4e

    :cond_f8
    const/16 v0, 0x12

    goto/16 :goto_1e9

    :sswitch_fc
    const-string v1, "setVolatile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    goto/16 :goto_4e

    :cond_106
    const/16 v0, 0x11

    goto/16 :goto_1e9

    :sswitch_10a
    const-string v1, "getAndBitwiseOrAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_114

    goto/16 :goto_4e

    :cond_114
    const/16 v0, 0x10

    goto/16 :goto_1e9

    :sswitch_118
    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_122

    goto/16 :goto_4e

    :cond_122
    const/16 v0, 0xf

    goto/16 :goto_1e9

    :sswitch_126
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_130

    goto/16 :goto_4e

    :cond_130
    const/16 v0, 0xe

    goto/16 :goto_1e9

    :sswitch_134
    const-string v1, "getAndSetRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13e

    goto/16 :goto_4e

    :cond_13e
    const/16 v0, 0xd

    goto/16 :goto_1e9

    :sswitch_142
    const-string v1, "getAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14c

    goto/16 :goto_4e

    :cond_14c
    const/16 v0, 0xc

    goto/16 :goto_1e9

    :sswitch_150
    const-string v1, "setRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15a

    goto/16 :goto_4e

    :cond_15a
    const/16 v0, 0xb

    goto/16 :goto_1e9

    :sswitch_15e
    const-string v1, "weakCompareAndSetAcquire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_168

    goto/16 :goto_4e

    :cond_168
    const/16 v0, 0xa

    goto/16 :goto_1e9

    :sswitch_16c
    const-string v1, "weakCompareAndSetPlain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_176

    goto/16 :goto_4e

    :cond_176
    const/16 v0, 0x9

    goto/16 :goto_1e9

    :sswitch_17a
    const-string v1, "getAndBitwiseXorRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_184

    goto/16 :goto_4e

    :cond_184
    const/16 v0, 0x8

    goto/16 :goto_1e9

    :sswitch_188
    const-string v1, "getAndBitwiseXor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_192

    goto/16 :goto_4e

    :cond_192
    const/4 v0, 0x7

    goto :goto_1e9

    :sswitch_194
    const-string v1, "getAndBitwiseAnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19e

    goto/16 :goto_4e

    :cond_19e
    const/4 v0, 0x6

    goto :goto_1e9

    :sswitch_1a0
    const-string v1, "getAndAddRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1aa

    goto/16 :goto_4e

    :cond_1aa
    const/4 v0, 0x5

    goto :goto_1e9

    :sswitch_1ac
    const-string v1, "weakCompareAndSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b6

    goto/16 :goto_4e

    :cond_1b6
    const/4 v0, 0x4

    goto :goto_1e9

    :sswitch_1b8
    const-string v1, "compareAndExchangeRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c2

    goto/16 :goto_4e

    :cond_1c2
    const/4 v0, 0x3

    goto :goto_1e9

    :sswitch_1c4
    const-string v1, "compareAndSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ce

    goto/16 :goto_4e

    :cond_1ce
    const/4 v0, 0x2

    goto :goto_1e9

    :sswitch_1d0
    const-string v1, "getAndBitwiseAndRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1da

    goto/16 :goto_4e

    :cond_1da
    const/4 v0, 0x1

    goto :goto_1e9

    :sswitch_1dc
    const-string v1, "getAndBitwiseOrRelease"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e6

    goto/16 :goto_4e

    :cond_1e6
    const/4 v0, 0x0

    goto :goto_1e9

    :goto_1e8
    const/4 v0, -0x1

    :goto_1e9
    packed-switch v0, :pswitch_data_26e

    goto :goto_1ee

    :pswitch_1ed  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e
    return v3

    :cond_1ee
    :goto_1ee
    return v2

    nop

    :sswitch_data_1f0
    .sparse-switch
        -0x74054ecc -> :sswitch_1dc
        -0x64896c60 -> :sswitch_1d0
        -0x639aefb0 -> :sswitch_1c4
        -0x4d038cae -> :sswitch_1b8
        -0x42a27c48 -> :sswitch_1ac
        -0x41bf8e59 -> :sswitch_1a0
        -0x3d910599 -> :sswitch_194
        -0x3d90af15 -> :sswitch_188
        -0x2f5b5f64 -> :sswitch_17a
        -0x21ce070e -> :sswitch_16c
        -0xe5aaa02 -> :sswitch_15e
        -0xdc04ebb -> :sswitch_150
        -0x7976360 -> :sswitch_142
        -0x23e5d3a -> :sswitch_134
        0x18f56 -> :sswitch_126
        0x1bc62 -> :sswitch_118
        0x594ea03 -> :sswitch_10a
        0x6099c1e -> :sswitch_fc
        0xb513b12 -> :sswitch_ee
        0x10d9c640 -> :sswitch_e0
        0x10da0a01 -> :sswitch_d2
        0x1510cc6f -> :sswitch_c5
        0x1c0e5b23 -> :sswitch_b8
        0x28d92717 -> :sswitch_ab
        0x2c96ac21 -> :sswitch_9e
        0x37daaa76 -> :sswitch_91
        0x4a3ed96b -> :sswitch_84
        0x50983b53 -> :sswitch_77
        0x58737ef5 -> :sswitch_6a
        0x775bdb95 -> :sswitch_5d
        0x780b1d2f -> :sswitch_50
    .end sparse-switch

    :pswitch_data_26e
    .packed-switch 0x0
        :pswitch_1ed  #00000000
        :pswitch_1ed  #00000001
        :pswitch_1ed  #00000002
        :pswitch_1ed  #00000003
        :pswitch_1ed  #00000004
        :pswitch_1ed  #00000005
        :pswitch_1ed  #00000006
        :pswitch_1ed  #00000007
        :pswitch_1ed  #00000008
        :pswitch_1ed  #00000009
        :pswitch_1ed  #0000000a
        :pswitch_1ed  #0000000b
        :pswitch_1ed  #0000000c
        :pswitch_1ed  #0000000d
        :pswitch_1ed  #0000000e
        :pswitch_1ed  #0000000f
        :pswitch_1ed  #00000010
        :pswitch_1ed  #00000011
        :pswitch_1ed  #00000012
        :pswitch_1ed  #00000013
        :pswitch_1ed  #00000014
        :pswitch_1ed  #00000015
        :pswitch_1ed  #00000016
        :pswitch_1ed  #00000017
        :pswitch_1ed  #00000018
        :pswitch_1ed  #00000019
        :pswitch_1ed  #0000001a
        :pswitch_1ed  #0000001b
        :pswitch_1ed  #0000001c
        :pswitch_1ed  #0000001d
        :pswitch_1ed  #0000001e
    .end packed-switch
.end method
