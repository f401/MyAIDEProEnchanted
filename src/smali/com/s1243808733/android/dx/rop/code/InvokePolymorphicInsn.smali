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
    .locals 2

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
    .locals 2

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/s1243808733/android/dx/rop/code/Insn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 77
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    if-eqz p4, :cond_2

    .line 84
    iput-object p4, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    if-eqz p5, :cond_1

    .line 88
    invoke-virtual {p5}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isSignaturePolymorphic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput-object p5, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->callSiteMethod:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 93
    invoke-static {p5}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->makePolymorphicMethod(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->polymorphicMethod:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 94
    invoke-static {p5}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->makeCallSiteProto(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->callSiteProto:Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callSiteMethod is not signature polymorphic"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callSiteMethod == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "catches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "opcode with invalid branchingness: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static makeCallSiteProto(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;
    .locals 2

    .line 237
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype(Z)Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;-><init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    return-object v0
.end method

.method private static makePolymorphicMethod(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;
    .locals 4

    .line 172
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    .line 173
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v2

    .line 174
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 176
    sget-object v3, Lcom/s1243808733/android/dx/rop/cst/CstType;->METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    const-string v3, "invoke"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "invokeExact"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    :cond_0
    new-instance v3, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    sget-object v0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->DEFAULT_DESCRIPTOR:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v3, v2, v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 179
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    .line 226
    :goto_0
    return-object v0

    .line 183
    :cond_1
    sget-object v3, Lcom/s1243808733/android/dx/rop/cst/CstType;->VAR_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 232
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown signature polymorphic method: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :sswitch_0
    const-string v3, "weakCompareAndSetRelease"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1e

    goto :goto_1

    :sswitch_1
    const-string v3, "getAndSetAcquire"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_1

    :sswitch_2
    const-string v3, "compareAndExchange"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_3
    const-string v3, "getAndBitwiseOr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1b

    goto :goto_1

    :sswitch_4
    const-string v3, "getAndBitwiseXorAcquire"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_5
    const-string v3, "getAndAddAcquire"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_6
    const-string v3, "compareAndExchangeAcquire"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x18

    goto :goto_1

    :sswitch_7
    const-string v3, "getOpaque"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x17

    goto :goto_1

    :sswitch_8
    const-string v3, "setOpaque"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_9
    const-string v3, "getAndBitwiseAndAcquire"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "getAndSet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "getAndAdd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "getVolatile"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "setVolatile"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "getAndBitwiseOrAcquire"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "set"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "get"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "getAndSetRelease"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "getAcquire"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "setRelease"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "weakCompareAndSetAcquire"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "weakCompareAndSetPlain"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "getAndBitwiseXorRelease"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "getAndBitwiseXor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "getAndBitwiseAnd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "getAndAddRelease"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "weakCompareAndSet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "compareAndExchangeRelease"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "compareAndSet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "getAndBitwiseAndRelease"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "getAndBitwiseOrRelease"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 216
    :pswitch_0
    new-instance v3, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    sget-object v0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->VARHANDLE_SET_DESCRIPTOR:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v3, v2, v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 217
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    goto/16 :goto_0

    .line 225
    :pswitch_1
    new-instance v3, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    sget-object v0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->VARHANDLE_COMPARE_AND_SET_DESCRIPTOR:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v3, v2, v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 226
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    goto/16 :goto_0

    .line 208
    :pswitch_2
    new-instance v3, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    sget-object v0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->DEFAULT_DESCRIPTOR:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v3, v2, v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 209
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    goto/16 :goto_0

    .line 184
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
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public accept(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V
    .locals 0

    .line 106
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;->visitInvokePolymorphicInsn(Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;)V

    return-void
.end method

.method public getCallSiteMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->callSiteMethod:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    return-object v0
.end method

.method public getCallSiteProto()Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->callSiteProto:Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    return-object v0
.end method

.method public getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-object v0
.end method

.method public getInlineString()Ljava/lang/String;
    .locals 2

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

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

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
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->polymorphicMethod:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    return-object v0
.end method

.method public withAddedCatch(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 6

    .line 112
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 113
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v4, p1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->withAddedType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v4

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getCallSiteMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    return-object v0
.end method

.method public withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 6

    .line 127
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 128
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getCallSiteMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v5

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 6

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
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getCallSiteMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    return-object v0
.end method
