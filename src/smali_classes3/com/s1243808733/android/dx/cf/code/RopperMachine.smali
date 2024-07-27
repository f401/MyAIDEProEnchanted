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
.method static final constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    const-string v1, "java/lang/reflect/Array"

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->internClassName(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->ARRAY_REFLECT_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    sget-object v1, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->ARRAY_REFLECT_TYPE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    new-instance v3, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v4, "newInstance"

    invoke-direct {v3, v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/s1243808733/android/dx/rop/cst/CstString;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "(Ljava/lang/Class;[I)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "Ljava/lang/Object;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    sput-object v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->MULTIANEWARRAY_METHOD:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 138
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getEffectiveDescriptor()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;-><init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    .line 140
    if-nez p4, :cond_0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "methods == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    if-nez p1, :cond_1

    .line 145
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ropper == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    if-nez p3, :cond_2

    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "advice == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
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

    const/16 v2, 0x19

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    move-object v0, v1

    .line 158
    check-cast v0, Lcom/s1243808733/android/dx/rop/type/TypeList;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 159
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    .line 160
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returns:Z

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 162
    iput v3, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 163
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    move-object v0, v1

    .line 164
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/Rop;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 165
    check-cast v1, Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    return-void
.end method

.method private getSources(II)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 10

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 676
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->argCount()I

    move-result v3

    .line 678
    if-nez v3, :cond_0

    .line 680
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 738
    :goto_0
    return-object v0

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getLocalIndex()I

    move-result v1

    .line 684
    if-ltz v1, :cond_1

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
    :goto_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    goto :goto_0

    .line 691
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    move v1, v2

    .line 693
    :goto_2
    if-lt v1, v3, :cond_2

    .line 699
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 708
    :sswitch_0
    const/4 v1, 0x3

    if-eq v3, v1, :cond_3

    .line 709
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_2
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

    .line 693
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 711
    :cond_3
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

    .line 725
    :sswitch_1
    if-eq v3, v6, :cond_4

    .line 726
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_4
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

    .line 699
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0xb5 -> :sswitch_1
    .end sparse-switch
.end method

.method private jopToRopOpcode(ILcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 7

    const/16 v1, 0x34

    .line 780
    sparse-switch p1, :sswitch_data_0

    .line 1024
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :sswitch_0
    const/4 v0, 0x1

    .line 1020
    :goto_0
    return v0

    .line 801
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 805
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 808
    :sswitch_3
    const/16 v0, 0x26

    goto :goto_0

    .line 811
    :sswitch_4
    const/16 v0, 0x27

    goto :goto_0

    .line 815
    :sswitch_5
    const/16 v0, 0xe

    goto :goto_0

    .line 818
    :sswitch_6
    const/16 v0, 0xf

    goto :goto_0

    .line 821
    :sswitch_7
    const/16 v0, 0x10

    goto :goto_0

    .line 824
    :sswitch_8
    const/16 v0, 0x11

    goto :goto_0

    .line 827
    :sswitch_9
    const/16 v0, 0x12

    goto :goto_0

    .line 830
    :sswitch_a
    const/16 v0, 0x13

    goto :goto_0

    .line 833
    :sswitch_b
    const/16 v0, 0x17

    goto :goto_0

    .line 836
    :sswitch_c
    const/16 v0, 0x18

    goto :goto_0

    .line 839
    :sswitch_d
    const/16 v0, 0x19

    goto :goto_0

    .line 842
    :sswitch_e
    const/16 v0, 0x14

    goto :goto_0

    .line 845
    :sswitch_f
    const/16 v0, 0x15

    goto :goto_0

    .line 848
    :sswitch_10
    const/16 v0, 0x16

    goto :goto_0

    .line 862
    :sswitch_11
    const/16 v0, 0x1d

    goto :goto_0

    .line 865
    :sswitch_12
    const/16 v0, 0x1e

    goto :goto_0

    .line 868
    :sswitch_13
    const/16 v0, 0x1f

    goto :goto_0

    .line 871
    :sswitch_14
    const/16 v0, 0x20

    goto :goto_0

    .line 876
    :sswitch_15
    const/16 v0, 0x1b

    goto :goto_0

    .line 880
    :sswitch_16
    const/16 v0, 0x1c

    goto :goto_0

    .line 886
    :sswitch_17
    const/4 v0, 0x7

    goto :goto_0

    .line 892
    :sswitch_18
    const/16 v0, 0x8

    goto :goto_0

    .line 896
    :sswitch_19
    const/16 v0, 0x9

    goto :goto_0

    .line 900
    :sswitch_1a
    const/16 v0, 0xa

    goto :goto_0

    .line 904
    :sswitch_1b
    const/16 v0, 0xc

    goto :goto_0

    .line 908
    :sswitch_1c
    const/16 v0, 0xb

    goto :goto_0

    .line 911
    :sswitch_1d
    const/4 v0, 0x6

    goto :goto_0

    .line 914
    :sswitch_1e
    const/16 v0, 0xd

    goto :goto_0

    .line 918
    :sswitch_1f
    const/16 v0, 0x21

    goto :goto_0

    .line 921
    :sswitch_20
    const/16 v0, 0x2e

    goto :goto_0

    .line 924
    :sswitch_21
    const/16 v0, 0x30

    goto :goto_0

    .line 927
    :sswitch_22
    const/16 v0, 0x2d

    goto :goto_0

    .line 930
    :sswitch_23
    const/16 v0, 0x2f

    goto :goto_0

    .line 933
    :sswitch_24
    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 953
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->methods:Lcom/s1243808733/android/dx/cf/iface/MethodList;

    invoke-interface {v2}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 965
    :cond_0
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isSignaturePolymorphic()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 966
    const/16 v0, 0x3a

    goto/16 :goto_0

    .line 955
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->methods:Lcom/s1243808733/android/dx/cf/iface/MethodList;

    invoke-interface {v2, v0}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Method;

    move-result-object v2

    .line 956
    invoke-interface {v2}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAccessFlags()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isPrivate(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v3

    invoke-interface {v2}, Lcom/s1243808733/android/dx/cf/iface/Method;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 958
    goto/16 :goto_0

    .line 954
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 968
    :cond_3
    const/16 v0, 0x32

    goto/16 :goto_0

    .line 981
    :sswitch_25
    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 982
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isInstanceInit()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    .line 984
    goto/16 :goto_0

    .line 986
    :cond_5
    const/16 v0, 0x33

    goto/16 :goto_0

    .line 989
    :sswitch_26
    const/16 v0, 0x31

    goto/16 :goto_0

    .line 992
    :sswitch_27
    const/16 v0, 0x35

    goto/16 :goto_0

    .line 995
    :sswitch_28
    const/16 v0, 0x3b

    goto/16 :goto_0

    .line 998
    :sswitch_29
    const/16 v0, 0x28

    goto/16 :goto_0

    .line 1002
    :sswitch_2a
    const/16 v0, 0x29

    goto/16 :goto_0

    .line 1005
    :sswitch_2b
    const/16 v0, 0x22

    goto/16 :goto_0

    .line 1008
    :sswitch_2c
    const/16 v0, 0x23

    goto/16 :goto_0

    .line 1011
    :sswitch_2d
    const/16 v0, 0x2b

    goto/16 :goto_0

    .line 1014
    :sswitch_2e
    const/16 v0, 0x2c

    goto/16 :goto_0

    .line 1017
    :sswitch_2f
    const/16 v0, 0x24

    goto/16 :goto_0

    .line 1020
    :sswitch_30
    const/16 v0, 0x25

    goto/16 :goto_0

    .line 780
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x2e -> :sswitch_3
        0x36 -> :sswitch_2
        0x4f -> :sswitch_4
        0x60 -> :sswitch_5
        0x64 -> :sswitch_6
        0x68 -> :sswitch_7
        0x6c -> :sswitch_8
        0x70 -> :sswitch_9
        0x74 -> :sswitch_a
        0x78 -> :sswitch_b
        0x7a -> :sswitch_c
        0x7c -> :sswitch_d
        0x7e -> :sswitch_e
        0x80 -> :sswitch_f
        0x82 -> :sswitch_10
        0x84 -> :sswitch_5
        0x85 -> :sswitch_11
        0x86 -> :sswitch_11
        0x87 -> :sswitch_11
        0x88 -> :sswitch_11
        0x89 -> :sswitch_11
        0x8a -> :sswitch_11
        0x8b -> :sswitch_11
        0x8c -> :sswitch_11
        0x8d -> :sswitch_11
        0x8e -> :sswitch_11
        0x8f -> :sswitch_11
        0x90 -> :sswitch_11
        0x91 -> :sswitch_12
        0x92 -> :sswitch_13
        0x93 -> :sswitch_14
        0x94 -> :sswitch_15
        0x95 -> :sswitch_15
        0x96 -> :sswitch_16
        0x97 -> :sswitch_15
        0x98 -> :sswitch_16
        0x99 -> :sswitch_17
        0x9a -> :sswitch_18
        0x9b -> :sswitch_19
        0x9c -> :sswitch_1a
        0x9d -> :sswitch_1b
        0x9e -> :sswitch_1c
        0x9f -> :sswitch_17
        0xa0 -> :sswitch_18
        0xa1 -> :sswitch_19
        0xa2 -> :sswitch_1a
        0xa3 -> :sswitch_1b
        0xa4 -> :sswitch_1c
        0xa5 -> :sswitch_17
        0xa6 -> :sswitch_18
        0xa7 -> :sswitch_1d
        0xab -> :sswitch_1e
        0xac -> :sswitch_1f
        0xb1 -> :sswitch_1f
        0xb2 -> :sswitch_20
        0xb3 -> :sswitch_21
        0xb4 -> :sswitch_22
        0xb5 -> :sswitch_23
        0xb6 -> :sswitch_24
        0xb7 -> :sswitch_25
        0xb8 -> :sswitch_26
        0xb9 -> :sswitch_27
        0xba -> :sswitch_28
        0xbb -> :sswitch_29
        0xbc -> :sswitch_2a
        0xbd -> :sswitch_2a
        0xbe -> :sswitch_2b
        0xbf -> :sswitch_2c
        0xc0 -> :sswitch_2d
        0xc1 -> :sswitch_2e
        0xc2 -> :sswitch_2f
        0xc3 -> :sswitch_30
        0xc6 -> :sswitch_17
        0xc7 -> :sswitch_18
    .end sparse-switch
.end method

.method private makeInvokePolymorphicInsn(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 12

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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/Rop;",
            "Lcom/s1243808733/android/dx/rop/code/SourcePosition;",
            ")V"
        }
    .end annotation

    .line 748
    if-nez p1, :cond_0

    .line 749
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "op == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_0
    if-nez p2, :cond_1

    .line 753
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pos == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    if-nez v0, :cond_3

    .line 757
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 758
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 767
    :cond_2
    :goto_0
    return-void

    .line 760
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    if-eq v0, p1, :cond_4

    .line 761
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "return op mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 765
    :cond_4
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 767
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    goto :goto_0
.end method


# virtual methods
.method public canThrow()Z
    .registers 2

    .line 265
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    return v0
.end method

.method public getExtraBlockCount()I
    .registers 2

    .line 257
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    return v0
.end method

.method public getInsns()Ljava/util/ArrayList;
    .registers 2
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
    .registers 2

    .line 246
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    return v0
.end method

.method public getReturnAddress()Lcom/s1243808733/android/dx/cf/code/ReturnAddress;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnAddress:Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    return-object v0
.end method

.method public getReturnOp()Lcom/s1243808733/android/dx/rop/code/Rop;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    return-object v0
.end method

.method public getReturnPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    return-object v0
.end method

.method public hasJsr()Z
    .registers 2

    .line 273
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->hasJsr:Z

    return v0
.end method

.method public hasRet()Z
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnAddress:Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public returns()Z
    .registers 2

    .line 232
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returns:Z

    return v0
.end method

.method public run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 300
    move-object/from16 v0, p0

    iget v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->maxLocals:I

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->size()I

    move-result v3

    add-int v6, v3, v2

    .line 303
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v6}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getSources(II)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    .line 304
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v13

    .line 306
    invoke-super/range {p0 .. p3}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->makeSourcePosistion(I)Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v4

    .line 309
    const/16 v2, 0x36

    move/from16 v0, p3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getLocalTarget(Z)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->resultCount()I

    move-result v2

    .line 311
    if-nez v2, :cond_4

    .line 314
    const/4 v2, 0x0

    check-cast v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 315
    packed-switch p3, :pswitch_data_0

    move-object v8, v2

    .line 370
    :cond_0
    :goto_1
    if-eqz v8, :cond_7

    move-object v2, v8

    check-cast v2, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-object v9, v2

    .line 371
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v10

    .line 372
    const/16 v2, 0xc5

    move/from16 v0, p3

    if-ne v0, v2, :cond_a

    .line 377
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    .line 381
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 387
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getNextReg()I

    move-result v2

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v12

    .line 389
    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v2, v13}, Lcom/s1243808733/android/dx/rop/code/Rops;->opFilledNewArray(Lcom/s1243808733/android/dx/rop/type/TypeBearer;I)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    .line 390
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    sget-object v7, Lcom/s1243808733/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-direct/range {v2 .. v7}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 396
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v3, v2, v4, v12, v5}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v10

    .line 410
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    .line 411
    const/4 v3, 0x0

    move-object v11, v2

    :goto_3
    if-lt v3, v13, :cond_8

    .line 415
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v14

    .line 418
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/type/Type;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 424
    invoke-static {v11}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->forPrimitiveType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object v7

    .line 426
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    sget-object v3, Lcom/s1243808733/android/dx/rop/code/Rops;->GET_STATIC_OBJECT:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-direct/range {v2 .. v7}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 439
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v14}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 443
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v3, v2, v4, v14, v5}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 457
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    sget-object v3, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->MULTIANEWARRAY_METHOD:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/rop/code/Rops;->opInvokeStatic(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    invoke-static {v14, v12}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    sget-object v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->MULTIANEWARRAY_METHOD:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct/range {v2 .. v7}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v2, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->MULTIANEWARRAY_METHOD:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 466
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v3, v2, v4, v11, v5}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    const/16 p3, 0xc0

    .line 475
    invoke-static {v11}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v12

    .line 491
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v10}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->jopToRopOpcode(ILcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v6

    .line 492
    invoke-static {v6, v9, v12, v10}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v5

    .line 494
    const/4 v2, 0x0

    check-cast v2, Lcom/s1243808733/android/dx/rop/code/Insn;

    .line 495
    if-eqz v8, :cond_d

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 500
    move-object/from16 v0, p0

    iget v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 502
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_c

    move-object v2, v10

    .line 504
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    .line 508
    :goto_6
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    sget-object v7, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v3, v2, v4, v8, v7}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 511
    const/4 v2, 0x0

    check-cast v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-object/from16 v19, v3

    move-object v11, v2

    .line 525
    :goto_7
    const/16 v2, 0x29

    if-ne v6, v2, :cond_e

    .line 538
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Rop;->getResult()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v7

    move-object v9, v5

    move v2, v6

    .line 578
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getAuxCases()Lcom/s1243808733/android/dx/cf/code/SwitchList;

    move-result-object v3

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getInitValues()Ljava/util/ArrayList;

    move-result-object v6

    .line 580
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/Rop;->canThrow()Z

    move-result v5

    .line 582
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    or-int/2addr v8, v5

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    .line 584
    if-eqz v3, :cond_13

    .line 585
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size()I

    move-result v2

    if-nez v2, :cond_12

    .line 587
    new-instance v8, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v3, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    const/4 v2, 0x0

    check-cast v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v8, v3, v4, v2, v5}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 589
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 643
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    if-eqz v19, :cond_1

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_1
    if-eqz v6, :cond_2

    .line 658
    move-object/from16 v0, p0

    iget v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 659
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;

    sget-object v3, Lcom/s1243808733/android/dx/rop/code/Rops;->FILL_ARRAY_DATA:Lcom/s1243808733/android/dx/rop/code/Rop;

    invoke-virtual/range {v19 .. v19}, Lcom/s1243808733/android/dx/rop/code/Insn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-static {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    invoke-direct/range {v2 .. v7}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Ljava/util/ArrayList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_a
    :pswitch_0
    return-void

    .line 309
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 322
    :cond_4
    if-nez v8, :cond_0

    .line 324
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 325
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->result(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    goto/16 :goto_1

    .line 346
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->ropper:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getFirstTempStackReg()I

    move-result v2

    .line 347
    new-array v7, v13, [Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 349
    const/4 v3, 0x0

    :goto_b
    if-lt v3, v13, :cond_6

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getAuxInt()I

    move-result v3

    move v2, v6

    :goto_c
    if-eqz v3, :cond_2

    .line 359
    and-int/lit8 v5, v3, 0xf

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v7, v5

    .line 361
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v6

    .line 362
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    new-instance v9, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v10

    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    invoke-direct {v9, v10, v4, v11, v5}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-interface {v6}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v5

    add-int/2addr v2, v5

    .line 358
    shr-int/lit8 v3, v3, 0x4

    goto :goto_c

    .line 350
    :cond_6
    invoke-virtual {v5, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    .line 351
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v9

    .line 352
    invoke-virtual {v8, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 353
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    new-instance v12, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {v9}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v9

    invoke-direct {v12, v9, v4, v10, v8}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    aput-object v10, v7, v3

    .line 355
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v8

    add-int/2addr v2, v8

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 370
    :cond_7
    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v9, v2

    goto/16 :goto_2

    .line 412
    :cond_8
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    .line 411
    add-int/lit8 v3, v3, 0x1

    move-object v11, v2

    goto/16 :goto_3

    .line 434
    :cond_9
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    sget-object v3, Lcom/s1243808733/android/dx/rop/code/Rops;->CONST_OBJECT:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    new-instance v7, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-direct {v7, v11}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    invoke-direct/range {v2 .. v7}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto/16 :goto_4

    .line 476
    :cond_a
    const/16 v2, 0xa8

    move/from16 v0, p3

    if-ne v0, v2, :cond_b

    .line 478
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->hasJsr:Z

    goto/16 :goto_a

    .line 480
    :cond_b
    const/16 v2, 0xa9

    move/from16 v0, p3

    if-ne v0, v2, :cond_1d

    .line 482
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnAddress:Lcom/s1243808733/android/dx/cf/code/ReturnAddress;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v2

    .line 484
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Argument to RET was not a ReturnAddress"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_c
    move-object v2, v10

    .line 506
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    goto/16 :goto_6

    .line 512
    :cond_d
    if-eqz v8, :cond_1c

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Rop;->canThrow()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 517
    move-object/from16 v0, p0

    iget v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 519
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    sget-object v7, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v3, v2, v4, v8, v7}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 523
    const/4 v2, 0x0

    check-cast v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-object/from16 v19, v3

    move-object v11, v2

    goto/16 :goto_7

    .line 539
    :cond_e
    if-nez v10, :cond_1b

    const/4 v2, 0x2

    if-ne v13, v2, :cond_1b

    .line 540
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    .line 541
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v3

    .line 543
    invoke-interface {v3}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v7

    if-eqz v7, :cond_1b

    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v13

    invoke-interface {v7, v5, v8, v13}, Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;->hasConstantOperation(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 547
    invoke-interface {v3}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v7

    if-eqz v7, :cond_11

    move-object v2, v3

    .line 554
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 555
    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withoutLast()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v12

    .line 558
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v5

    const/16 v7, 0xf

    if-ne v5, v7, :cond_10

    .line 559
    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 561
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v2

    neg-int v2, v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v2

    const/16 v6, 0xe

    :cond_10
    move-object v7, v2

    move v3, v6

    .line 574
    :goto_d
    invoke-static {v3, v9, v12, v7}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v9

    move v2, v3

    goto/16 :goto_8

    .line 570
    :cond_11
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 571
    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withoutFirst()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v12

    move-object v7, v2

    move v3, v6

    goto :goto_d

    .line 591
    :cond_12
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getValues()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v13

    .line 592
    new-instance v8, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;

    move-object v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/util/IntList;)V

    .line 593
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    goto/16 :goto_9

    .line 595
    :cond_13
    const/16 v3, 0x21

    if-ne v2, v3, :cond_15

    .line 601
    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    if-eqz v2, :cond_14

    .line 602
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 603
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v3

    .line 604
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    if-eqz v5, :cond_14

    .line 605
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    new-instance v8, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {v3}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-direct {v8, v10, v4, v3, v2}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_14
    new-instance v8, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v3, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    const/4 v2, 0x0

    check-cast v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v8, v3, v4, v2, v5}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 611
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 612
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->updateReturnOp(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    .line 613
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returns:Z

    goto/16 :goto_9

    .line 614
    :cond_15
    if-eqz v7, :cond_18

    .line 615
    if-eqz v5, :cond_17

    .line 616
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_16

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-object/from16 v17, v0

    move-object/from16 v13, p0

    move-object v14, v9

    move-object v15, v4

    move-object/from16 v16, v12

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->makeInvokePolymorphicInsn(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v13

    .line 621
    :goto_e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    move-object v8, v13

    goto/16 :goto_9

    .line 619
    :cond_16
    new-instance v13, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-object/from16 v17, v0

    move-object v14, v9

    move-object v15, v4

    move-object/from16 v16, v12

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_e

    .line 624
    :cond_17
    new-instance v8, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    move-object v10, v4

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto/16 :goto_9

    .line 626
    :cond_18
    if-eqz v5, :cond_1a

    .line 627
    new-instance v8, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-direct {v8, v9, v4, v12, v2}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    .line 628
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    .line 629
    const/16 v2, 0xbf

    move/from16 v0, p3

    if-ne v0, v2, :cond_19

    .line 635
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    goto/16 :goto_9

    .line 637
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    goto/16 :goto_9

    .line 640
    :cond_1a
    new-instance v8, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-direct {v8, v9, v4, v11, v12}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    goto/16 :goto_9

    :cond_1b
    move-object v9, v5

    move-object v7, v10

    move v2, v6

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v19, v2

    move-object v11, v8

    goto/16 :goto_7

    :cond_1d
    move-object v12, v5

    goto/16 :goto_5

    .line 315
    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startBlock(Lcom/s1243808733/android/dx/rop/type/TypeList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/type/TypeList;",
            ")V"
        }
    .end annotation

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

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnAddress:Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    return-void
.end method

.method public wereCatchesUsed()Z
    .registers 2

    .line 222
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    return v0
.end method
