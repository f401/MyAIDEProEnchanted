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
.field private static $assertionsDisabled:Z = false

.field private static final LOCAL_MISMATCH_ERROR:Ljava/lang/String; = "This is symptomatic of .class transformation tools that ignore local variable information."


# instance fields
.field private final code:Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

.field private final dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

.field private final localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

.field private final machine:Lcom/s1243808733/android/dx/cf/code/Machine;

.field private method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

.field private final visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "com.s1243808733.android.dx.cf.code.Simulator"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/s1243808733/android/dx/cf/code/Simulator;->$assertionsDisabled:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/cf/code/Machine;Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/dex/DexOptions;)V
    .registers 6

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "machine == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    if-nez p2, :cond_1

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    if-nez p3, :cond_2

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dexOptions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
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

    if-eqz v0, :cond_3

    .line 99
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkInterfaceMethodDeclaration(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V

    :cond_3
    return-void
.end method

.method static synthetic access$1000007()Lcom/s1243808733/android/dx/cf/code/SimException;
    .registers 1

    invoke-static {}, Lcom/s1243808733/android/dx/cf/code/Simulator;->illegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000008(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 3

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->requiredArrayTypeFor(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000013(Lcom/s1243808733/android/dx/cf/code/Simulator;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkConstMethodHandleSupported(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-void
.end method

.method static synthetic access$1000014(Lcom/s1243808733/android/dx/cf/code/Simulator;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkInvokeDynamicSupported(I)V

    return-void
.end method

.method static synthetic access$1000015(Lcom/s1243808733/android/dx/cf/code/Simulator;ILcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkInvokeInterfaceSupported(ILcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    return-void
.end method

.method static synthetic access$1000017(Lcom/s1243808733/android/dx/cf/code/Simulator;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->checkInvokeSignaturePolymorphic(I)V

    return-void
.end method

.method static synthetic access$1000018(Lcom/s1243808733/android/dx/cf/code/Simulator;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$L1000001(Lcom/s1243808733/android/dx/cf/code/Simulator;)Lcom/s1243808733/android/dx/cf/code/Machine;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->machine:Lcom/s1243808733/android/dx/cf/code/Machine;

    return-object v0
.end method

.method static synthetic access$L1000004(Lcom/s1243808733/android/dx/cf/code/Simulator;)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->localVariables:Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    return-object v0
.end method

.method private checkConstMethodHandleSupported(Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ")V^",
            "Lcom/s1243808733/android/dx/cf/code/SimException;"
        }
    .end annotation

    const/16 v4, 0x1c

    .line 838
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "invalid constant type %s requires --min-sdk-version >= %d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "(currently %d)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/Constant;->typeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v4, v4, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkInterfaceMethodDeclaration(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;",
            ")V"
        }
    .end annotation

    const/16 v4, 0x18

    .line 922
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 923
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "defining a %s interface method requires --min-sdk-version >= %d (currently %d)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " for interface methods: %s.%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->isStaticMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "static"

    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v0

    const/4 v0, 0x2

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v4, v4, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 930
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->warn(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 923
    :cond_1
    const-string v0, "default"

    goto :goto_0
.end method

.method private checkInvokeDynamicSupported(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Lcom/s1243808733/android/dx/cf/code/SimException;"
        }
    .end annotation

    const/16 v4, 0x1a

    .line 847
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "invalid opcode %02x - invokedynamic requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "--min-sdk-version >= %d (currently %d)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v4, v4, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkInvokeInterfaceSupported(ILcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x18

    .line 855
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/dex/DexOptions;->allowAllInterfaceMethodInvokes:Z

    .line 890
    const/16 v1, 0xb8

    if-ne p1, v1, :cond_2

    .line 891
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v1

    and-int/2addr v0, v1

    move v1, v0

    .line 899
    :goto_1
    const/16 v0, 0xb8

    if-ne p1, v0, :cond_3

    const-string v0, "static"

    .line 900
    :goto_2
    if-eqz v1, :cond_4

    .line 903
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invoking a %s interface method %s.%s strictly requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "--min-sdk-version >= %d (experimental at current API level %d)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v2, v7

    const/4 v0, 0x4

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v4, v4, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 909
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 891
    :cond_2
    sget-boolean v1, Lcom/s1243808733/android/dx/cf/code/Simulator;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    .line 893
    const/16 v1, 0xb7

    if-eq p1, v1, :cond_5

    const/16 v1, 0xb6

    if-eq p1, v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 899
    :cond_3
    const-string v0, "default"

    goto :goto_2

    .line 911
    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invoking a %s interface method %s.%s strictly requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "--min-sdk-version >= %d (blocked at current API level %d)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v2, v7

    const/4 v0, 0x4

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v4, v4, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 917
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v1, v0

    goto/16 :goto_1
.end method

.method private checkInvokeSignaturePolymorphic(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/16 v4, 0x1a

    .line 935
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 936
    const-string v0, "invoking a signature-polymorphic requires --min-sdk-version >= %d (currently %d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget v4, v4, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    const/16 v0, 0xb6

    if-eq p1, v0, :cond_0

    .line 940
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unsupported signature polymorphic invocation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/ByteOps;->opName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fail(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 945
    const-string v0, "ERROR in %s.%s: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 947
    new-instance v1, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static illegalTos()Lcom/s1243808733/android/dx/cf/code/SimException;
    .registers 3

    .line 145
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "stack mismatch: illegal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "top-of-stack for opcode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static requiredArrayTypeFor(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 3

    .line 190
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p1, v0, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 211
    :cond_0
    :goto_0
    return-object p1

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    goto :goto_0

    .line 196
    :cond_2
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p0, v0, :cond_3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    :cond_3
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p0, v0, :cond_4

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p1, v0, :cond_4

    .line 208
    sget-object p1, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    goto :goto_0

    .line 211
    :cond_4
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    goto :goto_0
.end method

.method private warn(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 951
    const-string v0, "WARNING in %s.%s: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 953
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-object v1, v1, Lcom/s1243808733/android/dx/dex/DexOptions;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public simulate(ILcom/s1243808733/android/dx/cf/code/Frame;)I
    .registers 5

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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/ByteBlock;",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            ")V"
        }
    .end annotation

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

    .line 119
    :goto_0
    if-lt v0, v1, :cond_0

    .line 123
    return-void

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->code:Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v2, v0, v3}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v2

    .line 118
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Simulator;->visitor:Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/cf/code/Simulator$SimVisitor;->setPreviousOffset(I)V
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    add-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    .line 123
    throw v0
.end method
