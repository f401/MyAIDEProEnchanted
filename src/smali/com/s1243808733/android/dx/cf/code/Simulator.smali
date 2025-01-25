.class public Lcom/s1243808733/android/dx/cf/code/Simulator;
.super Ljava/lang/Object;
.source "Simulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false

.field private static final LOCAL_MISMATCH_ERROR:Ljava/lang/String; = "This is symptomatic of .class transformation tools that ignore local variable information."


# instance fields
.field private final code:Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

.field private final dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

.field private final localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

.field private final machine:Lcom/s1243808733/android/dx/cf/code/Machine;

.field private method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

.field private final visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetlocalVariables(Lcom/s1243808733/android/dx/cf/code/Simulator;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmachine(Lcom/s1243808733/android/dx/cf/code/Simulator;)Lcom/s1243808733/android/dx/cf/code/Machine;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckConstMethodHandleSupported(Lcom/s1243808733/android/dx/cf/code/Simulator;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkConstMethodHandleSupported(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckInvokeDynamicSupported(Lcom/s1243808733/android/dx/cf/code/Simulator;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkInvokeDynamicSupported(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckInvokeInterfaceSupported(Lcom/s1243808733/android/dx/cf/code/Simulator;ILcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkInvokeInterfaceSupported(ILcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckInvokeSignaturePolymorphic(Lcom/s1243808733/android/dx/cf/code/Simulator;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkInvokeSignaturePolymorphic(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfail(Lcom/s1243808733/android/dx/cf/code/Simulator;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;
    .registers 1

    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->illegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smrequiredArrayTypeFor(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->requiredArrayTypeFor(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/cf/code/Machine;Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/dex/DexOptions;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3c

    if-eqz p2, :cond_34

    if-eqz p3, :cond_2c

    .line 90
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    .line 91
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->code:Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    .line 92
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    .line 93
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getLocalVariables()Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    .line 94
    new-instance p1, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    invoke-direct {p1, p0}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;-><init>(Lcom/s1243808733/android/dx/cf/code/Simulator;)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    .line 95
    iput-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    .line 98
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->isDefaultOrStaticInterfaceMethod()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 99
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkInterfaceMethodDeclaration(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V

    :cond_2b
    return-void

    .line 87
    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dexOptions == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_34
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_3c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "machine == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkConstMethodHandleSupported(Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/s1243808733/android/dx/cf/code/SimException;
        }
    .end annotation

    .line 838
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 841
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/Constant;->typeName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v0, v0, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 842
    nop

    .line 839
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p1

    const/4 p1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "invalid constant type %s requires --min-sdk-version >= %d (currently %d)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method private checkInterfaceMethodDeclaration(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V
    .registers 8

    .line 922
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 927
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->isStaticMethod()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "static"

    goto :goto_15

    :cond_13
    const-string v0, "default"

    .line 928
    :goto_15
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v2, v2, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 929
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object p1

    .line 924
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object p1, v4, v0

    const-string p1, "defining a %s interface method requires --min-sdk-version >= %d (currently %d) for interface methods: %s.%s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 930
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->warn(Ljava/lang/String;)V

    :cond_4c
    return-void
.end method

.method private checkInvokeDynamicSupported(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/s1243808733/android/dx/cf/code/SimException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 850
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v0, v0, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 848
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p1

    const/4 p1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "invalid opcode %02x - invokedynamic requires --min-sdk-version >= %d (currently %d)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method private checkInvokeInterfaceSupported(ILcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V
    .registers 12

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_5

    return-void

    .line 860
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 889
    :cond_10
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/dex/DexOptions;->allowAllInterfaceMethodInvokes:Z

    const/16 v2, 0xb8

    if-ne p1, v2, :cond_21

    .line 891
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v3

    and-int/2addr v0, v3

    :cond_21
    if-ne p1, v2, :cond_26

    .line 899
    const-string p1, "static"

    goto :goto_28

    :cond_26
    const-string p1, "default"

    :goto_28
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-eqz v0, :cond_62

    .line 907
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object p2

    .line 908
    iget-object v8, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v8, v8, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 904
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object v0, v7, v5

    aput-object p2, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v2

    const-string p1, "invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (experimental at current API level %d)"

    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 909
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->warn(Ljava/lang/String;)V

    goto :goto_93

    .line 915
    :cond_62
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object p2

    .line 916
    iget-object v8, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v8, v8, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 912
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object v0, v7, v5

    aput-object p2, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v2

    const-string p1, "invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (blocked at current API level %d)"

    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 917
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    :goto_93
    return-void
.end method

.method private checkInvokeSignaturePolymorphic(I)V
    .registers 5

    .line 935
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 938
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget p1, p1, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 936
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "invoking a signature-polymorphic requires --min-sdk-version >= %d (currently %d)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    goto :goto_47

    :cond_29
    const/16 v0, 0xb6

    if-eq p1, v0, :cond_47

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported signature polymorphic invocation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/ByteOps;->opName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    :cond_47
    :goto_47
    return-void
.end method

.method private fail(Ljava/lang/String;)V
    .registers 6

    .line 945
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    .line 946
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v1

    .line 945
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string p1, "ERROR in %s.%s: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 947
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static illegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;
    .registers 2

    .line 145
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string v1, "stack mismatch: illegal top-of-stack for opcode"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static requiredArrayTypeFor(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 3

    .line 190
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p1, v0, :cond_12

    .line 191
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 192
    sget-object p0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    goto :goto_11

    .line 193
    :cond_d
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    :goto_11
    return-object p0

    .line 196
    :cond_12
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p0, v0, :cond_27

    .line 197
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 198
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v0

    if-eqz v0, :cond_27

    return-object p1

    .line 202
    :cond_27
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p0, v0, :cond_32

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p1, v0, :cond_32

    .line 208
    sget-object p0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object p0

    .line 211
    :cond_32
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    return-object p0
.end method

.method private warn(Ljava/lang/String;)V
    .registers 6

    .line 951
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    .line 952
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v1

    .line 951
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string p1, "WARNING in %s.%s: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 953
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-object v0, v0, Lcom/s1243808733/android/dx/dex/DexOptions;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public simulate(ILcom/s1243808733/android/dx/cf/code/Frame;)I
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->setFrame(Lcom/s1243808733/android/dx/cf/code/Frame;)V

    .line 137
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->code:Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {p2, p1, v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result p1

    return p1
.end method

.method public simulate(Lcom/s1243808733/android/dx/cf/code/ByteBlock;Lcom/s1243808733/android/dx/cf/code/Frame;)V
    .registers 6

    .line 111
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getEnd()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v1, p2}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->setFrame(Lcom/s1243808733/android/dx/cf/code/Frame;)V

    .line 116
    :try_start_9
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getStart()I

    move-result p1

    :goto_d
    if-ge p1, v0, :cond_1e

    .line 117
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->code:Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v1, p1, v2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v1

    .line 118
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->setPreviousOffset(I)V
    :try_end_1c
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_9 .. :try_end_1c} :catch_1f

    add-int/2addr p1, v1

    goto :goto_d

    :cond_1e
    return-void

    :catch_1f
    move-exception p1

    .line 122
    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    .line 123
    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method
