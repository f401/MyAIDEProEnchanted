.class public final Lcom/s1243808733/android/dx/dex/code/BlockAddresses;
.super Ljava/lang/Object;
.source "BlockAddresses.java"


# instance fields
.field private final ends:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

.field private final lasts:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

.field private final starts:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v0

    .line 53
    new-array v1, v0, [Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->starts:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    .line 54
    new-array v1, v0, [Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->lasts:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    .line 55
    new-array v0, v0, [Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->ends:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    .line 57
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->setupArrays(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V

    return-void
.end method

.method private setupArrays(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RopMethod;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v3

    move v0, v1

    .line 130
    :goto_0
    if-lt v0, v3, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v4

    .line 132
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v5

    .line 133
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v6

    .line 135
    iget-object v7, p0, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->starts:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    new-instance v8, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    aput-object v8, v7, v5

    .line 137
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v4

    .line 139
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->lasts:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    new-instance v7, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-direct {v7, v4}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    aput-object v7, v6, v5

    .line 140
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->ends:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    new-instance v7, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-direct {v7, v4}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    aput-object v7, v6, v5

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getEnd(I)Lcom/s1243808733/android/dx/dex/code/CodeAddress;
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->ends:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getEnd(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->ends:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLast(I)Lcom/s1243808733/android/dx/dex/code/CodeAddress;
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->lasts:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLast(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->lasts:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStart(I)Lcom/s1243808733/android/dx/dex/code/CodeAddress;
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->starts:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getStart(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->starts:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
