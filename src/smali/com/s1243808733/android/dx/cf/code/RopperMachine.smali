.class final Lcom/s1243808733/android/dx/cf/code/RopperMachine;
.super Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;
.source "RopperMachine.java"


# static fields
.field private static final ARRAY_REFLECT_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private static final MULTIANEWARRAY_METHOD:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;


# instance fields
.field private final advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

.field private blockCanThrow:Z

.field private catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

.field private catchesUsed:Z

.field private extraBlockCount:I

.field private hasJsr:Z

.field private final insns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/code/Insn;",
            ">;"
        }
    .end annotation
.end field

.field private final maxLocals:I

.field private final method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

.field private final methods:Lcom/s1243808733/android/dx/cf/iface/MethodList;

.field private primarySuccessorIndex:I

.field private returnAddress:Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

.field private returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

.field private returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

.field private returns:Z

.field private final ropper:Lcom/s1243808733/android/dx/cf/code/Ropper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 56
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    const-string v1, "java/lang/reflect/Array"

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->internClassName(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->ARRAY_REFLECT_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 63
    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    new-instance v3, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v4, "newInstance"

    invoke-direct {v3, v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v5, "(Ljava/lang/Class;[I)Ljava/lang/Object;"

    invoke-direct {v4, v5}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    invoke-direct {v1, v0, v2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    sput-object v1, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->MULTIANEWARRAY_METHOD:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getEffectiveDescriptor()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;-><init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    if-eqz p4, :cond_2

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 152
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->ropper:Lcom/s1243808733/android/dx/cf/code/Ropper;

    .line 153
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    .line 154
    iput-object p4, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->methods:Lcom/s1243808733/android/dx/cf/iface/MethodList;

    .line 155
    iput-object p3, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    .line 156
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getMaxLocals()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->maxLocals:I

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    .line 158
    iput-object v3, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 159
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    .line 160
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returns:Z

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 162
    iput v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 163
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    .line 164
    iput-object v3, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 165
    iput-object v3, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "advice == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ropper == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "methods == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSources(II)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 676
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->argCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 680
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 737
    :goto_0
    return-object v0

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getLocalIndex()I

    move-result v1

    if-ltz v1, :cond_2

    .line 688
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 689
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 737
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    goto :goto_0

    .line 691
    :cond_2
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_3

    .line 694
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 695
    invoke-virtual {v0, v1, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 696
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v4

    add-int/2addr p2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 699
    :cond_3
    const/16 v1, 0x4f

    if-eq p1, v1, :cond_5

    const/16 v1, 0xb5

    if-ne p1, v1, :cond_1

    if-ne v3, v6, :cond_4

    .line 728
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 729
    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 730
    invoke-virtual {v0, v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 731
    invoke-virtual {v0, v5, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_1

    .line 726
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v1, 0x3

    if-ne v3, v1, :cond_6

    .line 711
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 712
    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 713
    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 714
    invoke-virtual {v0, v2, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 715
    invoke-virtual {v0, v5, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 716
    invoke-virtual {v0, v6, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_1

    .line 709
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private jopToRopOpcode(ILcom/s1243808733/android/dx/rop/cst/Constant;)I
    .locals 4

    const/16 v1, 0x34

    const/16 v0, 0x15

    const/16 v2, 0x14

    if-eqz p1, :cond_b

    if-eq p1, v2, :cond_a

    if-eq p1, v0, :cond_9

    const/16 v3, 0xab

    if-eq p1, v3, :cond_8

    const/16 v3, 0xac

    if-eq p1, v3, :cond_7

    const/16 v3, 0xc6

    if-eq p1, v3, :cond_6

    const/16 v3, 0xc7

    if-eq p1, v3, :cond_5

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1024
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :sswitch_0
    const/16 v0, 0x16

    .line 1024
    :goto_0
    :sswitch_1
    return v0

    :sswitch_2
    move v0, v2

    .line 965
    goto :goto_0

    :sswitch_3
    const/16 v0, 0x19

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x18

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x17

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_a
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_b
    const/16 v0, 0x27

    goto :goto_0

    :sswitch_c
    const/16 v0, 0x26

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x1c

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x1b

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x20

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x1f

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x1e

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x1d

    goto :goto_0

    :pswitch_b
    :sswitch_d
    const/16 v0, 0xe

    goto :goto_0

    .line 1024
    :pswitch_c
    const/16 v0, 0x25

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x24

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x2c

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x2b

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x23

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x22

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x29

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x28

    goto :goto_0

    :pswitch_14
    const/16 v0, 0x3b

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x35

    goto :goto_0

    :pswitch_16
    const/16 v0, 0x31

    goto :goto_0

    .line 981
    :pswitch_17
    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 982
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isInstanceInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 983
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x33

    goto/16 :goto_0

    .line 933
    :pswitch_18
    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 953
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 954
    :goto_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->methods:Lcom/s1243808733/android/dx/cf/iface/MethodList;

    invoke-interface {v2}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 955
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->methods:Lcom/s1243808733/android/dx/cf/iface/MethodList;

    invoke-interface {v2, v0}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Method;

    move-result-object v2

    .line 956
    invoke-interface {v2}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAccessFlags()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isPrivate(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 957
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v3

    invoke-interface {v2}, Lcom/s1243808733/android/dx/cf/iface/Method;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 965
    :cond_3
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isSignaturePolymorphic()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3a

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x32

    goto/16 :goto_0

    :pswitch_19
    const/16 v0, 0x2f

    goto/16 :goto_0

    :pswitch_1a
    const/16 v0, 0x2d

    goto/16 :goto_0

    :pswitch_1b
    const/16 v0, 0x30

    goto/16 :goto_0

    :pswitch_1c
    const/16 v0, 0x2e

    goto/16 :goto_0

    :cond_5
    :pswitch_1d
    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_6
    :pswitch_1e
    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_7
    :pswitch_1f
    const/16 v0, 0x21

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_9
    :sswitch_e
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_a
    :sswitch_f
    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_b
    :sswitch_10
    const/4 v0, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x12 -> :sswitch_f
        0x2e -> :sswitch_c
        0x36 -> :sswitch_e
        0x4f -> :sswitch_b
        0x60 -> :sswitch_d
        0x64 -> :sswitch_a
        0x68 -> :sswitch_9
        0x6c -> :sswitch_8
        0x70 -> :sswitch_7
        0x74 -> :sswitch_6
        0x78 -> :sswitch_5
        0x7a -> :sswitch_4
        0x7c -> :sswitch_3
        0x7e -> :sswitch_2
        0x80 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x84
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_1e
        :pswitch_1d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1e
        :pswitch_1d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb1
        :pswitch_1f
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private makeInvokePolymorphicInsn(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 6

    .line 1029
    move-object v5, p5

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 1030
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    return-object v0
.end method

.method private updateReturnOp(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V
    .locals 2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 756
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    if-nez v0, :cond_1

    .line 757
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 758
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    if-ne v0, p1, :cond_2

    .line 765
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 767
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    goto :goto_0

    .line 761
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "return op mismatch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 753
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pos == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "op == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canThrow()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    return v0
.end method

.method public getExtraBlockCount()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    return v0
.end method

.method public getInsns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/code/Insn;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrimarySuccessorIndex()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    return v0
.end method

.method public getReturnAddress()Lcom/s1243808733/android/dx/cf/code/ReturnAddress;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnAddress:Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    return-object v0
.end method

.method public getReturnOp()Lcom/s1243808733/android/dx/rop/code/Rop;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    return-object v0
.end method

.method public getReturnPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    return-object v0
.end method

.method public hasJsr()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->hasJsr:Z

    return v0
.end method

.method public hasRet()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnAddress:Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public returns()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returns:Z

    return v0
.end method

.method public run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V
    .locals 14

    .line 300
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->maxLocals:I

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->size()I

    move-result v2

    add-int/2addr v2, v1

    .line 303
    move/from16 v0, p3

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getSources(II)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 304
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v11

    .line 306
    invoke-super/range {p0 .. p3}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    .line 308
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->makeSourcePosistion(I)Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v3

    const/16 v1, 0x36

    move/from16 v0, p3

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    .line 309
    :goto_0
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getLocalTarget(Z)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 310
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->resultCount()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x57

    move/from16 v0, p3

    if-eq v0, v1, :cond_7

    const/16 v1, 0x58

    move/from16 v0, p3

    if-eq v0, v1, :cond_7

    const/4 v9, 0x0

    .line 325
    :cond_0
    :goto_1
    if-eqz v9, :cond_3

    move-object v8, v9

    .line 371
    :goto_2
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v7

    const/16 v1, 0xc5

    move/from16 v0, p3

    if-ne v0, v1, :cond_9

    .line 377
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    .line 381
    const/4 v1, 0x6

    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 388
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getNextReg()I

    move-result v1

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v12

    .line 389
    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v1, v11}, Lcom/s1243808733/android/dx/rop/code/Rops;->opFilledNewArray(Lcom/s1243808733/android/dx/rop/type/TypeBearer;I)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 390
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    sget-object v6, Lcom/s1243808733/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-direct/range {v1 .. v6}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 392
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    .line 396
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v2, v1, v3, v12, v4}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 397
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v7

    .line 410
    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    const/4 v2, 0x0

    move-object v10, v1

    :goto_3
    if-ge v2, v11, :cond_4

    .line 412
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    move-object v10, v1

    goto :goto_3

    .line 308
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 310
    :cond_2
    if-nez v9, :cond_0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1b

    .line 325
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->result(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    goto :goto_1

    .line 370
    :cond_3
    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v8, v1

    goto :goto_2

    .line 416
    :cond_4
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v13

    .line 418
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/type/Type;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 425
    invoke-static {v10}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->forPrimitiveType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object v6

    .line 426
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    sget-object v2, Lcom/s1243808733/android/dx/rop/code/Rops;->GET_STATIC_OBJECT:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-direct/range {v1 .. v6}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 439
    :goto_4
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    .line 443
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v2, v1, v3, v13, v4}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 444
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 457
    sget-object v6, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->MULTIANEWARRAY_METHOD:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 458
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/code/Rops;->opInvokeStatic(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 459
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    invoke-static {v13, v12}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-direct/range {v1 .. v6}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 461
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v1

    .line 465
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 464
    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    .line 466
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v2, v1, v3, v10, v4}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 467
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-static {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    const/16 p3, 0xc0

    move-object v5, v4

    .line 491
    :goto_5
    move/from16 v0, p3

    invoke-direct {p0, v0, v7}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->jopToRopOpcode(ILcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v6

    .line 492
    invoke-static {v6, v8, v5, v7}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v10

    if-eqz v9, :cond_c

    .line 495
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 500
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 503
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_b

    move-object v1, v7

    .line 504
    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 508
    :goto_6
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v2, v1, v3, v9, v4}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    move-object v1, v2

    .line 519
    :goto_7
    const/4 v4, 0x0

    move-object v12, v1

    :goto_8
    const/16 v1, 0x29

    if-ne v6, v1, :cond_e

    .line 538
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/Rop;->getResult()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v7

    :cond_5
    move-object v11, v7

    move-object v2, v10

    .line 578
    :goto_9
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getAuxCases()Lcom/s1243808733/android/dx/cf/code/SwitchList;

    move-result-object v1

    .line 579
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getInitValues()Ljava/util/ArrayList;

    move-result-object v13

    .line 580
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->canThrow()Z

    move-result v7

    .line 582
    iget-boolean v8, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    or-int/2addr v8, v7

    iput-boolean v8, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    if-eqz v1, :cond_13

    .line 585
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size()I

    move-result v6

    if-nez v6, :cond_12

    .line 587
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v2, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    const/4 v4, 0x0

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 589
    const/4 v2, 0x0

    iput v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    :goto_a
    move-object v6, v1

    .line 643
    :goto_b
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v12, :cond_6

    .line 646
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v13, :cond_7

    .line 658
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 659
    sget-object v2, Lcom/s1243808733/android/dx/rop/code/Rops;->FILL_ARRAY_DATA:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 660
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;

    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/code/Insn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    move-object v5, v13

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Ljava/util/ArrayList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 662
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_c
    return-void

    .line 434
    :cond_8
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    sget-object v2, Lcom/s1243808733/android/dx/rop/code/Rops;->CONST_OBJECT:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    new-instance v6, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-direct {v6, v10}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    invoke-direct/range {v1 .. v6}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto/16 :goto_4

    .line 475
    :cond_9
    const/16 v1, 0xa8

    move/from16 v0, p3

    if-ne v0, v1, :cond_a

    .line 478
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->hasJsr:Z

    goto :goto_c

    :cond_a
    const/16 v1, 0xa9

    move/from16 v0, p3

    if-ne v0, v1, :cond_1d

    .line 482
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnAddress:Lcom/s1243808733/android/dx/cf/code/ReturnAddress;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v1

    .line 484
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Argument to RET was not a ReturnAddress"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_b
    move-object v1, v7

    .line 506
    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    goto/16 :goto_6

    .line 508
    :cond_c
    if-eqz v9, :cond_d

    .line 512
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/Rop;->canThrow()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 517
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 519
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v2, v3, v9, v4}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    goto/16 :goto_7

    :cond_d
    const/4 v1, 0x0

    move-object v4, v9

    move-object v12, v1

    goto/16 :goto_8

    .line 538
    :cond_e
    if-nez v7, :cond_5

    const/4 v1, 0x2

    if-ne v11, v1, :cond_5

    .line 540
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v1

    .line 541
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    .line 543
    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v9

    if-nez v9, :cond_f

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_f
    iget-object v9, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    .line 544
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 545
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v13

    .line 544
    invoke-interface {v9, v10, v11, v13}, Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;->hasConstantOperation(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 547
    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v7

    if-eqz v7, :cond_11

    move-object v1, v2

    .line 554
    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 555
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withoutLast()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    .line 558
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v7

    const/16 v9, 0xf

    if-ne v7, v9, :cond_10

    .line 560
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 561
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v1

    neg-int v1, v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v1

    const/16 v2, 0xe

    move v6, v2

    .line 574
    :cond_10
    :goto_d
    invoke-static {v6, v8, v5, v1}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    move-object v11, v1

    goto/16 :goto_9

    .line 570
    :cond_11
    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 571
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withoutFirst()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    move-object v5, v2

    goto :goto_d

    .line 591
    :cond_12
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getValues()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v6

    .line 592
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;

    invoke-direct/range {v1 .. v6}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/util/IntList;)V

    .line 593
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v2

    iput v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    goto/16 :goto_a

    :cond_13
    const/16 v1, 0x21

    if-ne v6, v1, :cond_15

    .line 601
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    if-eqz v1, :cond_14

    .line 602
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 603
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v4

    .line 604
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    if-eqz v5, :cond_14

    .line 605
    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v6

    .line 606
    new-instance v7, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    const/4 v8, 0x0

    invoke-static {v8, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-direct {v7, v6, v3, v4, v1}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 605
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_14
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    const/4 v5, 0x0

    sget-object v6, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 611
    const/4 v4, 0x0

    iput v4, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 612
    invoke-direct {p0, v2, v3}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->updateReturnOp(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    .line 613
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returns:Z

    goto/16 :goto_a

    :cond_15
    if-eqz v11, :cond_18

    if-eqz v7, :cond_17

    .line 616
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v4, 0x3a

    if-ne v1, v4, :cond_16

    .line 617
    iget-object v10, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-object v6, p0

    move-object v7, v2

    move-object v8, v3

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->makeInvokePolymorphicInsn(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v6

    .line 621
    :goto_e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    .line 622
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    goto/16 :goto_b

    .line 619
    :cond_16
    new-instance v6, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    iget-object v10, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-object v7, v2

    move-object v8, v3

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_e

    .line 624
    :cond_17
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    move-object v6, v1

    goto/16 :goto_b

    :cond_18
    if-eqz v7, :cond_1a

    .line 627
    new-instance v6, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-direct {v6, v2, v3, v5, v1}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    .line 628
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    const/16 v1, 0xbf

    move/from16 v0, p3

    if-ne v0, v1, :cond_19

    .line 635
    const/4 v1, -0x1

    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    goto/16 :goto_b

    .line 637
    :cond_19
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    goto/16 :goto_b

    .line 640
    :cond_1a
    new-instance v6, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    goto/16 :goto_b

    .line 662
    :cond_1b
    const/4 v5, 0x0

    .line 346
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->ropper:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getFirstTempStackReg()I

    move-result v1

    .line 347
    new-array v6, v11, [Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    :goto_f
    if-ge v5, v11, :cond_1c

    .line 350
    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 351
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v8

    .line 352
    invoke-virtual {v7, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 353
    iget-object v10, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    new-instance v12, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {v8}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v8

    invoke-direct {v12, v8, v3, v9, v7}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    aput-object v9, v6, v5

    .line 355
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v7

    add-int/2addr v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 358
    :cond_1c
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getAuxInt()I

    move-result v4

    move v1, v2

    :goto_10
    if-eqz v4, :cond_7

    .line 360
    and-int/lit8 v2, v4, 0xf

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v6, v2

    .line 361
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v5

    .line 362
    iget-object v7, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v8

    .line 363
    new-instance v9, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    invoke-direct {v9, v8, v3, v10, v2}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 362
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-interface {v5}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v2

    add-int/2addr v1, v2

    shr-int/lit8 v2, v4, 0x4

    move v4, v2

    goto :goto_10

    :cond_1d
    move-object v5, v4

    goto/16 :goto_5
.end method

.method public startBlock(Lcom/s1243808733/android/dx/rop/type/TypeList;)V
    .locals 2

    const/4 v1, 0x0

    .line 203
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 205
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    .line 207
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returns:Z

    .line 208
    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 209
    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 210
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    .line 211
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->hasJsr:Z

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnAddress:Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    return-void
.end method

.method public wereCatchesUsed()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    return v0
.end method
