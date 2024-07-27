.class public Lcom/s1243808733/android/dx/ssa/SsaRenamer;
.super Ljava/lang/Object;
.source "SsaRenamer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;,
        Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private nextSsaReg:I

.field private final ropRegCount:I

.field private final ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

.field private final ssaRegToLocalItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/code/LocalItem;",
            ">;"
        }
    .end annotation
.end field

.field private ssaRegToRopReg:Lcom/s1243808733/android/dx/util/IntList;

.field private final startsForBlocks:[[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

.field private threshold:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 5

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    iput v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ropRegCount:I

    .line 103
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 109
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ropRegCount:I

    iput v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->nextSsaReg:I

    .line 110
    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->threshold:I

    .line 111
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->startsForBlocks:[[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    .line 131
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ropRegCount:I

    new-array v1, v1, [Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 132
    :goto_0
    iget v2, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ropRegCount:I

    if-lt v0, v2, :cond_0

    .line 142
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->startsForBlocks:[[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlockIndex()I

    move-result v2

    aput-object v1, v0, v2

    return-void

    .line 134
    :cond_0
    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    aput-object v2, v1, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;I)V
    .registers 3

    .line 153
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 154
    iput p2, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->threshold:I

    return-void
.end method

.method static synthetic access$1000009([Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->dupArray([Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000010(Lcom/s1243808733/android/dx/ssa/SsaRenamer;I)Lcom/s1243808733/android/dx/rop/code/LocalItem;
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->getLocalForNewReg(I)Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000011(Lcom/s1243808733/android/dx/ssa/SsaRenamer;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->setNameForSsaReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-void
.end method

.method static synthetic access$1000012(Lcom/s1243808733/android/dx/ssa/SsaRenamer;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->isBelowThresholdRegister(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000013(Lcom/s1243808733/android/dx/ssa/SsaRenamer;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->isVersionZeroRegister(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000014(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$L1000000()Z
    .registers 1

    sget-boolean v0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->DEBUG:Z

    return v0
.end method

.method static synthetic access$L1000001(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-object v0
.end method

.method static synthetic access$L1000002(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->nextSsaReg:I

    return v0
.end method

.method static synthetic access$L1000004(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->threshold:I

    return v0
.end method

.method static synthetic access$L1000005(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)[[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->startsForBlocks:[[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method static synthetic access$L1000007(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)Lcom/s1243808733/android/dx/util/IntList;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ssaRegToRopReg:Lcom/s1243808733/android/dx/util/IntList;

    return-object v0
.end method

.method static synthetic access$S1000000(Z)V
    .registers 1

    sput-boolean p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->DEBUG:Z

    return-void
.end method

.method static synthetic access$S1000002(Lcom/s1243808733/android/dx/ssa/SsaRenamer;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->nextSsaReg:I

    return-void
.end method

.method static synthetic access$S1000004(Lcom/s1243808733/android/dx/ssa/SsaRenamer;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->threshold:I

    return-void
.end method

.method static synthetic access$S1000007(Lcom/s1243808733/android/dx/ssa/SsaRenamer;Lcom/s1243808733/android/dx/util/IntList;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ssaRegToRopReg:Lcom/s1243808733/android/dx/util/IntList;

    return-void
.end method

.method private static dupArray([Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    const/4 v2, 0x0

    .line 201
    array-length v0, p0

    new-array v0, v0, [Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 203
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    return-object v0
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 271
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLocalForNewReg(I)Lcom/s1243808733/android/dx/rop/code/LocalItem;
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    .line 218
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    goto :goto_0
.end method

.method private isBelowThresholdRegister(I)Z
    .registers 3

    .line 248
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->threshold:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVersionZeroRegister(I)Z
    .registers 3

    .line 260
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ropRegCount:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setNameForSsaReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .line 228
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 229
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v2

    .line 231
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 233
    :cond_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    new-instance v1, Lcom/s1243808733/android/dx/ssa/SsaRenamer$100000000;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$100000000;-><init>(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->forEachBlockDepthFirstDom(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;)V

    .line 172
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->nextSsaReg:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->setNewRegCount(I)V

    .line 173
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    return-void
.end method
