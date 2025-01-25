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
            "Ljava/util/ArrayList<",
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
    .registers 6

    .line 56
    nop

    .line 57
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
    .registers 6

    .line 138
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getEffectiveDescriptor()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;-><init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    if-eqz p4, :cond_48

    if-eqz p1, :cond_40

    if-eqz p3, :cond_38

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

    move-result p1

    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->maxLocals:I

    .line 157
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x19

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    .line 158
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 159
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    .line 160
    iput-boolean p2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returns:Z

    .line 161
    const/4 p3, -0x1

    iput p3, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 162
    iput p2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 163
    iput-boolean p2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    .line 164
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 165
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    return-void

    .line 149
    :cond_38
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "advice == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_40
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ropper == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_48
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "methods == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSources(II)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 9

    .line 676
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->argCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 680
    sget-object p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-object p1

    .line 683
    :cond_9
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getLocalIndex()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_22

    .line 688
    new-instance p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {p1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 689
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_79

    .line 691
    :cond_22
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v0, :cond_3d

    .line 694
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 695
    invoke-virtual {v1, v4, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 696
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    add-int/2addr p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 699
    :cond_3d
    const/16 p2, 0x4f

    const-string v4, "shouldn\'t happen"

    const/4 v5, 0x2

    if-eq p1, p2, :cond_60

    const/16 p2, 0xb5

    if-eq p1, p2, :cond_49

    goto :goto_78

    :cond_49
    if-ne v0, v5, :cond_5a

    .line 728
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    .line 729
    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    .line 730
    invoke-virtual {v1, v3, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 731
    invoke-virtual {v1, v2, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_78

    .line 726
    :cond_5a
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    const/4 p1, 0x3

    if-ne v0, p1, :cond_7d

    .line 711
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    .line 712
    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    .line 713
    invoke-virtual {v1, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 714
    invoke-virtual {v1, v3, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 715
    invoke-virtual {v1, v2, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 716
    invoke-virtual {v1, v5, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 737
    :goto_78
    move-object p1, v1

    :goto_79
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    return-object p1

    .line 709
    :cond_7d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_84

    :goto_83
    throw p1

    :goto_84
    goto :goto_83
.end method

.method private jopToRopOpcode(ILcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 6

    if-eqz p1, :cond_115

    const/16 v0, 0x14

    if-eq p1, v0, :cond_113

    const/16 v1, 0x15

    if-eq p1, v1, :cond_111

    const/16 v2, 0xab

    if-eq p1, v2, :cond_10e

    const/16 v2, 0xac

    if-eq p1, v2, :cond_10b

    const/16 v2, 0xc6

    if-eq p1, v2, :cond_109

    const/16 v2, 0xc7

    if-eq p1, v2, :cond_106

    sparse-switch p1, :sswitch_data_118

    packed-switch p1, :pswitch_data_15e

    const/16 v0, 0x34

    packed-switch p1, :pswitch_data_1aa

    .line 1024
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 965
    :sswitch_2d
    const/16 p1, 0x16

    return p1

    :sswitch_30
    return v1

    :sswitch_31
    return v0

    :sswitch_32
    const/16 p1, 0x19

    return p1

    :sswitch_35
    const/16 p1, 0x18

    return p1

    :sswitch_38
    const/16 p1, 0x17

    return p1

    :sswitch_3b
    const/16 p1, 0x13

    return p1

    :sswitch_3e
    const/16 p1, 0x12

    return p1

    :sswitch_41
    const/16 p1, 0x11

    return p1

    :sswitch_44
    const/16 p1, 0x10

    return p1

    :sswitch_47
    const/16 p1, 0xf

    return p1

    :sswitch_4a
    const/16 p1, 0x27

    return p1

    :sswitch_4d
    const/16 p1, 0x26

    return p1

    :pswitch_50  #0xa7
    const/4 p1, 0x6

    return p1

    :pswitch_52  #0x9e, 0xa4
    const/16 p1, 0xb

    return p1

    :pswitch_55  #0x9d, 0xa3
    const/16 p1, 0xc

    return p1

    :pswitch_58  #0x9c, 0xa2
    const/16 p1, 0xa

    return p1

    :pswitch_5b  #0x9b, 0xa1
    const/16 p1, 0x9

    return p1

    :pswitch_5e  #0x96, 0x98
    const/16 p1, 0x1c

    return p1

    :pswitch_61  #0x94, 0x95, 0x97
    const/16 p1, 0x1b

    return p1

    :pswitch_64  #0x93
    const/16 p1, 0x20

    return p1

    :pswitch_67  #0x92
    const/16 p1, 0x1f

    return p1

    :pswitch_6a  #0x91
    const/16 p1, 0x1e

    return p1

    :pswitch_6d  #0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90
    const/16 p1, 0x1d

    return p1

    :pswitch_70  #0x84
    :sswitch_70
    const/16 p1, 0xe

    return p1

    .line 1024
    :pswitch_73  #0xc3
    const/16 p1, 0x25

    return p1

    :pswitch_76  #0xc2
    const/16 p1, 0x24

    return p1

    :pswitch_79  #0xc1
    const/16 p1, 0x2c

    return p1

    :pswitch_7c  #0xc0
    const/16 p1, 0x2b

    return p1

    :pswitch_7f  #0xbf
    const/16 p1, 0x23

    return p1

    :pswitch_82  #0xbe
    const/16 p1, 0x22

    return p1

    :pswitch_85  #0xbc, 0xbd
    const/16 p1, 0x29

    return p1

    :pswitch_88  #0xbb
    const/16 p1, 0x28

    return p1

    :pswitch_8b  #0xba
    const/16 p1, 0x3b

    return p1

    :pswitch_8e  #0xb9
    const/16 p1, 0x35

    return p1

    :pswitch_91  #0xb8
    const/16 p1, 0x31

    return p1

    .line 981
    :pswitch_94  #0xb7
    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 982
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isInstanceInit()Z

    move-result p1

    if-nez p1, :cond_b0

    .line 983
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p1

    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ad

    goto :goto_b0

    :cond_ad
    const/16 p1, 0x33

    return p1

    :cond_b0
    :goto_b0
    return v0

    .line 933
    :pswitch_b1  #0xb6
    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 953
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p1

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ee

    const/4 p1, 0x0

    .line 954
    :goto_c4
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->methods:Lcom/s1243808733/android/dx/cf/iface/MethodList;

    invoke-interface {v1}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->size()I

    move-result v1

    if-ge p1, v1, :cond_ee

    .line 955
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->methods:Lcom/s1243808733/android/dx/cf/iface/MethodList;

    invoke-interface {v1, p1}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Method;

    move-result-object v1

    .line 956
    invoke-interface {v1}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAccessFlags()I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isPrivate(I)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 957
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v2

    invoke-interface {v1}, Lcom/s1243808733/android/dx/cf/iface/Method;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    return v0

    :cond_eb
    add-int/lit8 p1, p1, 0x1

    goto :goto_c4

    .line 965
    :cond_ee
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isSignaturePolymorphic()Z

    move-result p1

    if-eqz p1, :cond_f7

    const/16 p1, 0x3a

    return p1

    :cond_f7
    const/16 p1, 0x32

    return p1

    :pswitch_fa  #0xb5
    const/16 p1, 0x2f

    return p1

    :pswitch_fd  #0xb4
    const/16 p1, 0x2d

    return p1

    :pswitch_100  #0xb3
    const/16 p1, 0x30

    return p1

    :pswitch_103  #0xb2
    const/16 p1, 0x2e

    return p1

    :cond_106
    :pswitch_106  #0x9a, 0xa0, 0xa6
    const/16 p1, 0x8

    return p1

    :cond_109
    :pswitch_109  #0x99, 0x9f, 0xa5
    const/4 p1, 0x7

    return p1

    :cond_10b
    :pswitch_10b  #0xb1
    const/16 p1, 0x21

    return p1

    :cond_10e
    const/16 p1, 0xd

    return p1

    :cond_111
    :sswitch_111
    const/4 p1, 0x2

    return p1

    :cond_113
    :sswitch_113
    const/4 p1, 0x5

    return p1

    :cond_115
    :sswitch_115
    const/4 p1, 0x1

    return p1

    nop

    :sswitch_data_118
    .sparse-switch
        0x0 -> :sswitch_115
        0x12 -> :sswitch_113
        0x2e -> :sswitch_4d
        0x36 -> :sswitch_111
        0x4f -> :sswitch_4a
        0x60 -> :sswitch_70
        0x64 -> :sswitch_47
        0x68 -> :sswitch_44
        0x6c -> :sswitch_41
        0x70 -> :sswitch_3e
        0x74 -> :sswitch_3b
        0x78 -> :sswitch_38
        0x7a -> :sswitch_35
        0x7c -> :sswitch_32
        0x7e -> :sswitch_31
        0x80 -> :sswitch_30
        0x82 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_15e
    .packed-switch 0x84
        :pswitch_70  #00000084
        :pswitch_6d  #00000085
        :pswitch_6d  #00000086
        :pswitch_6d  #00000087
        :pswitch_6d  #00000088
        :pswitch_6d  #00000089
        :pswitch_6d  #0000008a
        :pswitch_6d  #0000008b
        :pswitch_6d  #0000008c
        :pswitch_6d  #0000008d
        :pswitch_6d  #0000008e
        :pswitch_6d  #0000008f
        :pswitch_6d  #00000090
        :pswitch_6a  #00000091
        :pswitch_67  #00000092
        :pswitch_64  #00000093
        :pswitch_61  #00000094
        :pswitch_61  #00000095
        :pswitch_5e  #00000096
        :pswitch_61  #00000097
        :pswitch_5e  #00000098
        :pswitch_109  #00000099
        :pswitch_106  #0000009a
        :pswitch_5b  #0000009b
        :pswitch_58  #0000009c
        :pswitch_55  #0000009d
        :pswitch_52  #0000009e
        :pswitch_109  #0000009f
        :pswitch_106  #000000a0
        :pswitch_5b  #000000a1
        :pswitch_58  #000000a2
        :pswitch_55  #000000a3
        :pswitch_52  #000000a4
        :pswitch_109  #000000a5
        :pswitch_106  #000000a6
        :pswitch_50  #000000a7
    .end packed-switch

    :pswitch_data_1aa
    .packed-switch 0xb1
        :pswitch_10b  #000000b1
        :pswitch_103  #000000b2
        :pswitch_100  #000000b3
        :pswitch_fd  #000000b4
        :pswitch_fa  #000000b5
        :pswitch_b1  #000000b6
        :pswitch_94  #000000b7
        :pswitch_91  #000000b8
        :pswitch_8e  #000000b9
        :pswitch_8b  #000000ba
        :pswitch_88  #000000bb
        :pswitch_85  #000000bc
        :pswitch_85  #000000bd
        :pswitch_82  #000000be
        :pswitch_7f  #000000bf
        :pswitch_7c  #000000c0
        :pswitch_79  #000000c1
        :pswitch_76  #000000c2
        :pswitch_73  #000000c3
    .end packed-switch
.end method

.method private makeInvokePolymorphicInsn(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 12

    .line 1029
    move-object v5, p5

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 1030
    new-instance p5, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    return-object p5
.end method

.method private updateReturnOp(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V
    .registers 4

    if-eqz p1, :cond_44

    if-eqz p2, :cond_3c

    .line 756
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    if-nez v0, :cond_d

    .line 757
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 758
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    goto :goto_1d

    :cond_d
    if-ne v0, p1, :cond_1e

    .line 765
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result p1

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v0

    if-le p1, v0, :cond_1d

    .line 767
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    :cond_1d
    :goto_1d
    return-void

    .line 761
    :cond_1e
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "return op mismatch: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnOp:Lcom/s1243808733/android/dx/rop/code/Rop;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 753
    :cond_3c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "pos == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 749
    :cond_44
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "op == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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
            "Ljava/util/ArrayList<",
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

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public returns()Z
    .registers 2

    .line 232
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returns:Z

    return v0
.end method

.method public run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V
    .registers 22

    .line 300
    move-object/from16 v7, p0

    move/from16 v0, p3

    iget v1, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->maxLocals:I

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 303
    invoke-direct {v7, v0, v1}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getSources(II)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v11

    .line 304
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    .line 306
    invoke-super/range {p0 .. p3}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V

    .line 308
    iget-object v3, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->makeSourcePosistion(I)Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v6

    const/16 v3, 0x36

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    .line 309
    :goto_2b
    invoke-virtual {v7, v3}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getLocalTarget(Z)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->resultCount()I

    move-result v8

    if-nez v8, :cond_40

    const/16 v1, 0x57

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x58

    if-eq v0, v1, :cond_3f

    const/4 v3, 0x0

    goto :goto_4d

    :cond_3f
    return-void

    :cond_40
    if-eqz v3, :cond_43

    goto :goto_4d

    :cond_43
    if-ne v8, v5, :cond_357

    .line 325
    invoke-virtual {v7, v4}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->result(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    :goto_4d
    if-eqz v3, :cond_51

    move-object v1, v3

    goto :goto_53

    .line 370
    :cond_51
    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 371
    :goto_53
    invoke-virtual/range {p0 .. p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v14

    const/16 v8, 0xc5

    if-ne v0, v8, :cond_14c

    .line 377
    iput-boolean v5, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    .line 381
    const/4 v0, 0x6

    iput v0, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 388
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getNextReg()I

    move-result v0

    sget-object v8, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 389
    sget-object v8, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v8, v2}, Lcom/s1243808733/android/dx/rop/code/Rops;->opFilledNewArray(Lcom/s1243808733/android/dx/rop/type/TypeBearer;I)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v9

    .line 390
    new-instance v13, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    iget-object v12, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    sget-object v16, Lcom/s1243808733/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-object v8, v13

    move-object v10, v6

    move-object v15, v13

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 392
    iget-object v8, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v8, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v8}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v8

    .line 396
    new-instance v9, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v10, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v9, v8, v6, v0, v10}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 397
    iget-object v8, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    move-object v8, v14

    check-cast v8, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v8

    const/4 v9, 0x0

    :goto_9d
    if-ge v9, v2, :cond_a6

    .line 412
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_9d

    .line 416
    :cond_a6
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    sget-object v10, Lcom/s1243808733/android/dx/rop/type/Type;->CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v9, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 418
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/type/Type;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_cb

    .line 425
    invoke-static {v8}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->forPrimitiveType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object v17

    .line 426
    new-instance v8, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    sget-object v13, Lcom/s1243808733/android/dx/rop/code/Rops;->GET_STATIC_OBJECT:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v15, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    iget-object v10, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-object v12, v8

    move-object v11, v14

    move-object v14, v6

    move-object/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_e4

    .line 434
    :cond_cb
    move-object v11, v14

    new-instance v10, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    sget-object v13, Lcom/s1243808733/android/dx/rop/code/Rops;->CONST_OBJECT:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v15, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    iget-object v14, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    new-instance v12, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-direct {v12, v8}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    move-object v8, v12

    move-object v12, v10

    move-object/from16 v16, v14

    move-object v14, v6

    move-object/from16 v17, v8

    invoke-direct/range {v12 .. v17}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    move-object v8, v10

    .line 439
    :goto_e4
    iget-object v10, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v8

    invoke-static {v8}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v8

    .line 443
    new-instance v10, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v12, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v10, v8, v6, v9, v12}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 444
    iget-object v8, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    sget-object v10, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v8, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    .line 457
    sget-object v10, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->MULTIANEWARRAY_METHOD:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 458
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v12

    invoke-static {v12}, Lcom/s1243808733/android/dx/rop/code/Rops;->opInvokeStatic(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v13

    .line 459
    new-instance v15, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    invoke-static {v9, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    iget-object v9, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-object v12, v15

    move-object v14, v6

    move-object v4, v15

    move-object v15, v0

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v12 .. v17}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 461
    iget-object v0, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 464
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    .line 466
    new-instance v4, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v9, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v4, v0, v6, v8, v9}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 467
    iget-object v0, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-static {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    const/16 v4, 0xc0

    move-object v4, v11

    move-object v11, v0

    const/16 v0, 0xc0

    goto :goto_16b

    :cond_14c
    move-object v4, v14

    const/16 v8, 0xa8

    if-ne v0, v8, :cond_154

    .line 478
    iput-boolean v5, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->hasJsr:Z

    return-void

    :cond_154
    const/16 v8, 0xa9

    if-ne v0, v8, :cond_16b

    .line 482
    const/4 v0, 0x0

    :try_start_159
    invoke-virtual {v7, v0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    iput-object v0, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnAddress:Lcom/s1243808733/android/dx/cf/code/ReturnAddress;
    :try_end_161
    .catch Ljava/lang/ClassCastException; {:try_start_159 .. :try_end_161} :catch_162

    return-void

    :catch_162
    move-exception v0

    .line 484
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Argument to RET was not a ReturnAddress"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 491
    :cond_16b
    :goto_16b
    invoke-direct {v7, v0, v4}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->jopToRopOpcode(ILcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v8

    .line 492
    invoke-static {v8, v1, v11, v4}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v9

    if-eqz v3, :cond_1a8

    .line 495
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v10

    if-eqz v10, :cond_1a8

    .line 500
    iget v10, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    add-int/2addr v10, v5

    iput v10, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 503
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v10

    const/16 v12, 0x3b

    if-ne v10, v12, :cond_190

    .line 504
    move-object v14, v4

    check-cast v14, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v14}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v10

    goto :goto_19b

    .line 506
    :cond_190
    move-object v14, v4

    check-cast v14, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v14}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v10

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v10

    .line 508
    :goto_19b
    new-instance v12, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {v10}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v10

    sget-object v13, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v12, v10, v6, v3, v13}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    move-object v15, v12

    goto :goto_1c6

    :cond_1a8
    if-eqz v3, :cond_1c9

    .line 512
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/Rop;->canThrow()Z

    move-result v10

    if-eqz v10, :cond_1c9

    .line 517
    iget v10, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    add-int/2addr v10, v5

    iput v10, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 519
    nop

    .line 520
    new-instance v10, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v12

    invoke-static {v12}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v12

    sget-object v13, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v10, v12, v6, v3, v13}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    move-object v15, v10

    :goto_1c6
    move-object v10, v15

    const/4 v15, 0x0

    goto :goto_1cb

    :cond_1c9
    move-object v15, v3

    const/4 v10, 0x0

    :goto_1cb
    const/16 v3, 0x29

    if-ne v8, v3, :cond_1d8

    .line 538
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/Rop;->getResult()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v14

    goto :goto_23e

    :cond_1d8
    if-nez v4, :cond_23d

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23d

    .line 540
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    .line 541
    invoke-virtual {v11, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v3

    .line 543
    invoke-interface {v3}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v12

    if-nez v12, :cond_1fa

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v12

    if-eqz v12, :cond_23d

    :cond_1fa
    iget-object v12, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    .line 544
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v14

    .line 545
    invoke-virtual {v11, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v13

    .line 544
    invoke-interface {v12, v9, v14, v13}, Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;->hasConstantOperation(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v12

    if-eqz v12, :cond_23d

    .line 547
    invoke-interface {v3}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v4

    if-eqz v4, :cond_230

    .line 554
    move-object v2, v3

    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 555
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withoutLast()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 558
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v9

    const/16 v11, 0xf

    if-ne v9, v11, :cond_236

    .line 560
    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 561
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v2

    neg-int v2, v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v2

    const/16 v3, 0xe

    const/16 v8, 0xe

    goto :goto_236

    .line 570
    :cond_230
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 571
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withoutFirst()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 574
    :cond_236
    :goto_236
    invoke-static {v8, v1, v4, v2}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    move-object v13, v1

    move-object v9, v2

    goto :goto_241

    :cond_23d
    move-object v14, v4

    :goto_23e
    move-object v13, v9

    move-object v4, v11

    move-object v9, v14

    .line 578
    :goto_241
    invoke-virtual/range {p0 .. p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getAuxCases()Lcom/s1243808733/android/dx/cf/code/SwitchList;

    move-result-object v1

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getInitValues()Ljava/util/ArrayList;

    move-result-object v11

    .line 580
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/rop/code/Rop;->canThrow()Z

    move-result v2

    .line 582
    iget-boolean v3, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    or-int/2addr v3, v2

    iput-boolean v3, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    if-eqz v1, :cond_27f

    .line 585
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size()I

    move-result v0

    if-nez v0, :cond_268

    .line 587
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v1, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v6, v3, v2}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 589
    const/4 v1, 0x0

    iput v1, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    goto :goto_2bc

    .line 591
    :cond_268
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getValues()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    .line 592
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;

    move-object v12, v1

    move-object v14, v6

    move-object/from16 v16, v4

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/util/IntList;)V

    .line 593
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    iput v0, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    move-object v0, v1

    goto :goto_2bc

    :cond_27f
    const/4 v3, 0x0

    const/16 v1, 0x21

    if-ne v8, v1, :cond_2c0

    .line 601
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-eqz v0, :cond_2ab

    .line 602
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 603
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    .line 604
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    if-eqz v4, :cond_2ab

    .line 605
    iget-object v4, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v8

    .line 606
    new-instance v12, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-direct {v12, v8, v6, v2, v1}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 605
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_2ab
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    sget-object v1, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    sget-object v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v1, v6, v3, v2}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 611
    const/4 v3, 0x0

    iput v3, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 612
    invoke-direct {v7, v13, v6}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->updateReturnOp(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    .line 613
    iput-boolean v5, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returns:Z

    .line 593
    :goto_2bc
    move-object v5, v6

    const/4 v8, 0x1

    goto/16 :goto_329

    .line 613
    :cond_2c0
    if-eqz v9, :cond_305

    if-eqz v2, :cond_2f6

    .line 616
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_2db

    .line 617
    iget-object v0, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v6

    const/4 v8, 0x1

    move-object v5, v0

    move-object v0, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->makeInvokePolymorphicInsn(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v1

    goto :goto_2eb

    .line 619
    :cond_2db
    move-object v0, v6

    const/4 v8, 0x1

    new-instance v1, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    iget-object v2, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-object v12, v1

    move-object v14, v0

    move-object v15, v4

    move-object/from16 v16, v2

    move-object/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 621
    :goto_2eb
    iput-boolean v8, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    .line 622
    iget-object v2, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v2

    iput v2, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    goto :goto_303

    .line 624
    :cond_2f6
    move-object v0, v6

    const/4 v8, 0x1

    new-instance v1, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    move-object v12, v1

    move-object v14, v0

    move-object/from16 v16, v4

    move-object/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    :goto_303
    move-object v5, v0

    goto :goto_322

    :cond_305
    move-object v5, v6

    const/4 v8, 0x1

    if-eqz v2, :cond_324

    .line 627
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;

    iget-object v2, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-direct {v1, v13, v5, v4, v2}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    .line 628
    iput-boolean v8, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    const/16 v2, 0xbf

    if-ne v0, v2, :cond_31a

    .line 635
    const/4 v0, -0x1

    iput v0, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    goto :goto_322

    .line 637
    :cond_31a
    iget-object v0, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    iput v0, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 624
    :goto_322
    move-object v0, v1

    goto :goto_329

    .line 640
    :cond_324
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-direct {v0, v13, v5, v15, v4}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 643
    :goto_329
    iget-object v1, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_335

    .line 646
    iget-object v0, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_335
    if-eqz v11, :cond_356

    .line 658
    iget v0, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    add-int/2addr v0, v8

    iput v0, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 659
    sget-object v13, Lcom/s1243808733/android/dx/rop/code/Rops;->FILL_ARRAY_DATA:Lcom/s1243808733/android/dx/rop/code/Rop;

    .line 660
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/Insn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v15

    move-object v12, v0

    move-object v14, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Ljava/util/ArrayList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 662
    iget-object v1, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_356
    return-void

    :cond_357
    move-object v5, v6

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 346
    iget-object v0, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->ropper:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->getFirstTempStackReg()I

    move-result v0

    .line 347
    new-array v4, v2, [Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    :goto_362
    if-ge v3, v2, :cond_388

    .line 350
    invoke-virtual {v11, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 351
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v9

    .line 352
    invoke-virtual {v6, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 353
    iget-object v12, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    new-instance v13, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {v9}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v9

    invoke-direct {v13, v9, v5, v10, v6}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    aput-object v10, v4, v3

    .line 355
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_362

    .line 358
    :cond_388
    invoke-virtual/range {p0 .. p0}, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->getAuxInt()I

    move-result v0

    :goto_38c
    if-eqz v0, :cond_3b5

    .line 360
    and-int/lit8 v2, v0, 0xf

    sub-int/2addr v2, v8

    aget-object v2, v4, v2

    .line 361
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v3

    .line 362
    iget-object v6, v7, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v9

    .line 363
    new-instance v10, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    invoke-direct {v10, v9, v5, v11, v2}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 362
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-interface {v3}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v2

    add-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x4

    goto :goto_38c

    :cond_3b5
    return-void
.end method

.method public startBlock(Lcom/s1243808733/android/dx/rop/type/TypeList;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 205
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 206
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    .line 207
    iput-boolean p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returns:Z

    .line 208
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 209
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 210
    iput-boolean p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    .line 211
    iput-boolean p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->hasJsr:Z

    .line 212
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->returnAddress:Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    return-void
.end method

.method public wereCatchesUsed()Z
    .registers 2

    .line 222
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    return v0
.end method
