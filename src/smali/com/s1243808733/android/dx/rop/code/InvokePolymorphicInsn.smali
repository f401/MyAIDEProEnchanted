.class public Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;
.super Lcom/s1243808733/android/dx/rop/code/Insn;
.source "InvokePolymorphicInsn.java"


# static fields
.field private static final DEFAULT_DESCRIPTOR:Lcom/s1243808733/android/dx/rop/cst/CstString;

.field private static final VARHANDLE_COMPARE_AND_SET_DESCRIPTOR:Lcom/s1243808733/android/dx/rop/cst/CstString;

.field private static final VARHANDLE_SET_DESCRIPTOR:Lcom/s1243808733/android/dx/rop/cst/CstString;


# instance fields
.field private final callSiteMethod:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

.field private final callSiteProto:Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

.field private final catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

.field private final polymorphicMethod:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v1, "([Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->DEFAULT_DESCRIPTOR:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 36
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v1, "([Ljava/lang/Object;)V"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->VARHANDLE_SET_DESCRIPTOR:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 40
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v1, "([Ljava/lang/Object;)Z"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->VARHANDLE_COMPARE_AND_SET_DESCRIPTOR:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V
    .registers 7

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/s1243808733/android/dx/rop/code/Insn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 77
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result p2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_3e

    if-eqz p4, :cond_36

    .line 84
    iput-object p4, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    if-eqz p5, :cond_2e

    .line 88
    invoke-virtual {p5}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isSignaturePolymorphic()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 92
    iput-object p5, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->callSiteMethod:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 93
    invoke-static {p5}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->makePolymorphicMethod(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->polymorphicMethod:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 94
    invoke-static {p5}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->makeCallSiteProto(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->callSiteProto:Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    return-void

    .line 89
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callSiteMethod is not signature polymorphic"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_2e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callSiteMethod == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_36
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_3e
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "opcode with invalid branchingness: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static makeCallSiteProto(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;
    .registers 3

    .line 237
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype(Z)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;-><init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    return-object v0
.end method

.method private static makePolymorphicMethod(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;
    .registers 5

    .line 172
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    .line 174
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v2

    .line 176
    sget-object v3, Lcom/s1243808733/android/dx/rop/cst/CstType;->METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 177
    const-string v3, "invoke"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "invokeExact"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 178
    :cond_30
    new-instance p0, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    sget-object v2, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->DEFAULT_DESCRIPTOR:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {p0, v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 179
    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v1, v0, p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    return-object v1

    .line 183
    :cond_3d
    sget-object v3, Lcom/s1243808733/android/dx/rop/cst/CstType;->VAR_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_215

    .line 184
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_230

    :goto_4f
    goto/16 :goto_1e9

    :sswitch_51
    const-string v3, "weakCompareAndSetRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    goto :goto_4f

    :cond_5a
    const/16 v2, 0x1e

    goto/16 :goto_1ea

    :sswitch_5e
    const-string v3, "getAndSetAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    goto :goto_4f

    :cond_67
    const/16 v2, 0x1d

    goto/16 :goto_1ea

    :sswitch_6b
    const-string v3, "compareAndExchange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    goto :goto_4f

    :cond_74
    const/16 v2, 0x1c

    goto/16 :goto_1ea

    :sswitch_78
    const-string v3, "getAndBitwiseOr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    goto :goto_4f

    :cond_81
    const/16 v2, 0x1b

    goto/16 :goto_1ea

    :sswitch_85
    const-string v3, "getAndBitwiseXorAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    goto :goto_4f

    :cond_8e
    const/16 v2, 0x1a

    goto/16 :goto_1ea

    :sswitch_92
    const-string v3, "getAndAddAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    goto :goto_4f

    :cond_9b
    const/16 v2, 0x19

    goto/16 :goto_1ea

    :sswitch_9f
    const-string v3, "compareAndExchangeAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a8

    goto :goto_4f

    :cond_a8
    const/16 v2, 0x18

    goto/16 :goto_1ea

    :sswitch_ac
    const-string v3, "getOpaque"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    goto :goto_4f

    :cond_b5
    const/16 v2, 0x17

    goto/16 :goto_1ea

    :sswitch_b9
    const-string v3, "setOpaque"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c2

    goto :goto_4f

    :cond_c2
    const/16 v2, 0x16

    goto/16 :goto_1ea

    :sswitch_c6
    const-string v3, "getAndBitwiseAndAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cf

    goto :goto_4f

    :cond_cf
    const/16 v2, 0x15

    goto/16 :goto_1ea

    :sswitch_d3
    const-string v3, "getAndSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dd

    goto/16 :goto_4f

    :cond_dd
    const/16 v2, 0x14

    goto/16 :goto_1ea

    :sswitch_e1
    const-string v3, "getAndAdd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_eb

    goto/16 :goto_4f

    :cond_eb
    const/16 v2, 0x13

    goto/16 :goto_1ea

    :sswitch_ef
    const-string v3, "getVolatile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f9

    goto/16 :goto_4f

    :cond_f9
    const/16 v2, 0x12

    goto/16 :goto_1ea

    :sswitch_fd
    const-string v3, "setVolatile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_107

    goto/16 :goto_4f

    :cond_107
    const/16 v2, 0x11

    goto/16 :goto_1ea

    :sswitch_10b
    const-string v3, "getAndBitwiseOrAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_115

    goto/16 :goto_4f

    :cond_115
    const/16 v2, 0x10

    goto/16 :goto_1ea

    :sswitch_119
    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_123

    goto/16 :goto_4f

    :cond_123
    const/16 v2, 0xf

    goto/16 :goto_1ea

    :sswitch_127
    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_131

    goto/16 :goto_4f

    :cond_131
    const/16 v2, 0xe

    goto/16 :goto_1ea

    :sswitch_135
    const-string v3, "getAndSetRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13f

    goto/16 :goto_4f

    :cond_13f
    const/16 v2, 0xd

    goto/16 :goto_1ea

    :sswitch_143
    const-string v3, "getAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14d

    goto/16 :goto_4f

    :cond_14d
    const/16 v2, 0xc

    goto/16 :goto_1ea

    :sswitch_151
    const-string v3, "setRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15b

    goto/16 :goto_4f

    :cond_15b
    const/16 v2, 0xb

    goto/16 :goto_1ea

    :sswitch_15f
    const-string v3, "weakCompareAndSetAcquire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_169

    goto/16 :goto_4f

    :cond_169
    const/16 v2, 0xa

    goto/16 :goto_1ea

    :sswitch_16d
    const-string v3, "weakCompareAndSetPlain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_177

    goto/16 :goto_4f

    :cond_177
    const/16 v2, 0x9

    goto/16 :goto_1ea

    :sswitch_17b
    const-string v3, "getAndBitwiseXorRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_185

    goto/16 :goto_4f

    :cond_185
    const/16 v2, 0x8

    goto/16 :goto_1ea

    :sswitch_189
    const-string v3, "getAndBitwiseXor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_193

    goto/16 :goto_4f

    :cond_193
    const/4 v2, 0x7

    goto :goto_1ea

    :sswitch_195
    const-string v3, "getAndBitwiseAnd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19f

    goto/16 :goto_4f

    :cond_19f
    const/4 v2, 0x6

    goto :goto_1ea

    :sswitch_1a1
    const-string v3, "getAndAddRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ab

    goto/16 :goto_4f

    :cond_1ab
    const/4 v2, 0x5

    goto :goto_1ea

    :sswitch_1ad
    const-string v3, "weakCompareAndSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b7

    goto/16 :goto_4f

    :cond_1b7
    const/4 v2, 0x4

    goto :goto_1ea

    :sswitch_1b9
    const-string v3, "compareAndExchangeRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c3

    goto/16 :goto_4f

    :cond_1c3
    const/4 v2, 0x3

    goto :goto_1ea

    :sswitch_1c5
    const-string v3, "compareAndSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cf

    goto/16 :goto_4f

    :cond_1cf
    const/4 v2, 0x2

    goto :goto_1ea

    :sswitch_1d1
    const-string v3, "getAndBitwiseAndRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1db

    goto/16 :goto_4f

    :cond_1db
    const/4 v2, 0x1

    goto :goto_1ea

    :sswitch_1dd
    const-string v3, "getAndBitwiseOrRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e7

    goto/16 :goto_4f

    :cond_1e7
    const/4 v2, 0x0

    goto :goto_1ea

    :goto_1e9
    const/4 v2, -0x1

    :goto_1ea
    packed-switch v2, :pswitch_data_2ae

    goto :goto_215

    .line 216
    :pswitch_1ee  #0xb, 0xf, 0x11, 0x16
    new-instance p0, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    sget-object v2, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->VARHANDLE_SET_DESCRIPTOR:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {p0, v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 217
    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v1, v0, p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    return-object v1

    .line 225
    :pswitch_1fb  #0x2, 0x4, 0x9, 0xa, 0x1e
    new-instance p0, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    sget-object v2, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->VARHANDLE_COMPARE_AND_SET_DESCRIPTOR:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {p0, v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 226
    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v1, v0, p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    return-object v1

    .line 208
    :pswitch_208  #0x0, 0x1, 0x3, 0x5, 0x6, 0x7, 0x8, 0xc, 0xd, 0xe, 0x10, 0x12, 0x13, 0x14, 0x15, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d
    new-instance p0, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    sget-object v2, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->DEFAULT_DESCRIPTOR:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {p0, v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 209
    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v1, v0, p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    return-object v1

    .line 232
    :cond_215
    :goto_215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown signature polymorphic method: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_22e

    :goto_22d
    throw p0

    :goto_22e
    goto :goto_22d

    nop

    :sswitch_data_230
    .sparse-switch
        -0x74054ecc -> :sswitch_1dd
        -0x64896c60 -> :sswitch_1d1
        -0x639aefb0 -> :sswitch_1c5
        -0x4d038cae -> :sswitch_1b9
        -0x42a27c48 -> :sswitch_1ad
        -0x41bf8e59 -> :sswitch_1a1
        -0x3d910599 -> :sswitch_195
        -0x3d90af15 -> :sswitch_189
        -0x2f5b5f64 -> :sswitch_17b
        -0x21ce070e -> :sswitch_16d
        -0xe5aaa02 -> :sswitch_15f
        -0xdc04ebb -> :sswitch_151
        -0x7976360 -> :sswitch_143
        -0x23e5d3a -> :sswitch_135
        0x18f56 -> :sswitch_127
        0x1bc62 -> :sswitch_119
        0x594ea03 -> :sswitch_10b
        0x6099c1e -> :sswitch_fd
        0xb513b12 -> :sswitch_ef
        0x10d9c640 -> :sswitch_e1
        0x10da0a01 -> :sswitch_d3
        0x1510cc6f -> :sswitch_c6
        0x1c0e5b23 -> :sswitch_b9
        0x28d92717 -> :sswitch_ac
        0x2c96ac21 -> :sswitch_9f
        0x37daaa76 -> :sswitch_92
        0x4a3ed96b -> :sswitch_85
        0x50983b53 -> :sswitch_78
        0x58737ef5 -> :sswitch_6b
        0x775bdb95 -> :sswitch_5e
        0x780b1d2f -> :sswitch_51
    .end sparse-switch

    :pswitch_data_2ae
    .packed-switch 0x0
        :pswitch_208  #00000000
        :pswitch_208  #00000001
        :pswitch_1fb  #00000002
        :pswitch_208  #00000003
        :pswitch_1fb  #00000004
        :pswitch_208  #00000005
        :pswitch_208  #00000006
        :pswitch_208  #00000007
        :pswitch_208  #00000008
        :pswitch_1fb  #00000009
        :pswitch_1fb  #0000000a
        :pswitch_1ee  #0000000b
        :pswitch_208  #0000000c
        :pswitch_208  #0000000d
        :pswitch_208  #0000000e
        :pswitch_1ee  #0000000f
        :pswitch_208  #00000010
        :pswitch_1ee  #00000011
        :pswitch_208  #00000012
        :pswitch_208  #00000013
        :pswitch_208  #00000014
        :pswitch_208  #00000015
        :pswitch_1ee  #00000016
        :pswitch_208  #00000017
        :pswitch_208  #00000018
        :pswitch_208  #00000019
        :pswitch_208  #0000001a
        :pswitch_208  #0000001b
        :pswitch_208  #0000001c
        :pswitch_208  #0000001d
        :pswitch_1fb  #0000001e
    .end packed-switch
.end method


# virtual methods
.method public accept(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V
    .registers 2

    .line 106
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;->visitInvokePolymorphicInsn(Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;)V

    return-void
.end method

.method public getCallSiteMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->callSiteMethod:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    return-object v0
.end method

.method public getCallSiteProto()Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->callSiteProto:Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    return-object v0
.end method

.method public getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-object v0
.end method

.method public getInlineString()Ljava/lang/String;
    .registers 4

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getPolymorphicMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getCallSiteProto()Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 168
    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->toCatchString(Lcom/s1243808733/android/dx/rop/type/TypeList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPolymorphicMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->polymorphicMethod:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    return-object v0
.end method

.method public withAddedCatch(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 9

    .line 112
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 113
    new-instance v6, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v0, p1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->withAddedType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v4

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getCallSiteMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    return-object v6
.end method

.method public withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 9

    .line 127
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 128
    new-instance p1, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getCallSiteMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v5

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    return-object p1
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 8

    .line 119
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 120
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 121
    new-instance p1, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getCallSiteMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    return-object p1
.end method
