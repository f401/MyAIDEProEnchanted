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
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmachine(Lcom/s1243808733/android/dx/cf/code/Simulator;)Lcom/s1243808733/android/dx/cf/code/Machine;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$mcheckConstMethodHandleSupported(Lcom/s1243808733/android/dx/cf/code/Simulator;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkConstMethodHandleSupported(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckInvokeDynamicSupported(Lcom/s1243808733/android/dx/cf/code/Simulator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkInvokeDynamicSupported(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckInvokeInterfaceSupported(Lcom/s1243808733/android/dx/cf/code/Simulator;ILcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkInvokeInterfaceSupported(ILcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckInvokeSignaturePolymorphic(Lcom/s1243808733/android/dx/cf/code/Simulator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkInvokeSignaturePolymorphic(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfail(Lcom/s1243808733/android/dx/cf/code/Simulator;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smillegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;
    .locals 1

    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->illegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smrequiredArrayTypeFor(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;
    .locals 1

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->requiredArrayTypeFor(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/cf/code/Machine;Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/dex/DexOptions;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 90
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    .line 91
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->code:Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    .line 92
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    .line 93
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getLocalVariables()Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    .line 94
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;-><init>(Lcom/s1243808733/android/dx/cf/code/Simulator;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    .line 95
    iput-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    .line 98
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->isDefaultOrStaticInterfaceMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkInterfaceMethodDeclaration(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V

    :cond_0
    return-void

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dexOptions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "machine == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkConstMethodHandleSupported(Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/s1243808733/android/dx/cf/code/SimException;
        }
    .end annotation

    const/16 v5, 0x1c

    .line 838
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/Constant;->typeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v1, v1, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 842
    const-string v2, "invalid constant type %s requires --min-sdk-version >= %d (currently %d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkInterfaceMethodDeclaration(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V
    .locals 8

    const/16 v7, 0x18

    .line 922
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-virtual {v0, v7}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->isStaticMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "static"

    .line 928
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v1, v1, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 929
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v3

    .line 924
    const-string v4, "defining a %s interface method requires --min-sdk-version >= %d (currently %d) for interface methods: %s.%s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 930
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->warn(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 927
    :cond_1
    const-string v0, "default"

    goto :goto_0
.end method

.method private checkInvokeDynamicSupported(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/s1243808733/android/dx/cf/code/SimException;
        }
    .end annotation

    const/16 v5, 0x1a

    .line 847
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v0, v0, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 848
    const-string v1, "invalid opcode %02x - invokedynamic requires --min-sdk-version >= %d (currently %d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkInvokeInterfaceSupported(ILcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x18

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/dex/DexOptions;->allowAllInterfaceMethodInvokes:Z

    const/16 v1, 0xb8

    if-ne p1, v1, :cond_4

    .line 891
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v1

    and-int/2addr v0, v1

    move v1, v0

    :goto_1
    const/16 v0, 0xb8

    if-ne p1, v0, :cond_2

    .line 899
    const-string v0, "static"

    :goto_2
    if-eqz v1, :cond_3

    .line 907
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v2

    .line 908
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v3, v3, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 904
    const-string v4, "invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (experimental at current API level %d)"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    aput-object v2, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v10

    const/4 v0, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 909
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 899
    :cond_2
    const-string v0, "default"

    goto :goto_2

    .line 915
    :cond_3
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v2

    .line 916
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v3, v3, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 912
    const-string v4, "invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (blocked at current API level %d)"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    aput-object v2, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v10

    const/4 v0, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 917
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method private checkInvokeSignaturePolymorphic(I)V
    .locals 5

    const/16 v4, 0x1a

    .line 935
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v0, v0, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 936
    const-string v1, "invoking a signature-polymorphic requires --min-sdk-version >= %d (currently %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    const/16 v0, 0xb6

    if-eq p1, v0, :cond_0

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported signature polymorphic invocation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/ByteOps;->opName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fail(Ljava/lang/String;)V
    .locals 5

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
    const-string v2, "ERROR in %s.%s: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 947
    new-instance v1, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static illegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;
    .locals 2

    .line 145
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string v1, "stack mismatch: illegal top-of-stack for opcode"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static requiredArrayTypeFor(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;
    .locals 1

    .line 190
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p1, v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 211
    :goto_0
    return-object v0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_1
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p0, v0, :cond_2

    .line 197
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    goto :goto_0

    .line 202
    :cond_2
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p1, v0, :cond_3

    .line 208
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    goto :goto_0
.end method

.method private warn(Ljava/lang/String;)V
    .locals 5

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
    const-string v2, "WARNING in %s.%s: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 953
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-object v1, v1, Lcom/s1243808733/android/dx/dex/DexOptions;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public simulate(ILcom/s1243808733/android/dx/cf/code/Frame;)I
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->setFrame(Lcom/s1243808733/android/dx/cf/code/Frame;)V

    .line 137
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->code:Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v0

    return v0
.end method

.method public simulate(Lcom/s1243808733/android/dx/cf/code/ByteBlock;Lcom/s1243808733/android/dx/cf/code/Frame;)V
    .locals 4

    .line 111
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getEnd()I

    move-result v1

    .line 113
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->setFrame(Lcom/s1243808733/android/dx/cf/code/Frame;)V

    .line 116
    :try_start_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getStart()I

    move-result v0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 117
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->code:Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v2, v0, v3}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v2

    .line 118
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->setPreviousOffset(I)V
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    .line 123
    throw v0

    .line 118
    :cond_0
    return-void
.end method
