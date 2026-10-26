.class public final Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;
.super Ljava/lang/Object;
.source "StdCatchBuilder.java"

# interfaces
.implements Lcom/s1243808733/android/dx/dex/code/CatchBuilder;


# static fields
.field private static final MAX_CATCH_RANGE:I = 0xffff


# instance fields
.field private final addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

.field private final method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

.field private final order:[I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;[ILcom/s1243808733/android/dx/dex/code/BlockAddresses;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 68
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    .line 69
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->order:[I

    .line 70
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "addresses == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "order == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static build(Lcom/s1243808733/android/dx/rop/code/RopMethod;[ILcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchTable;
    .locals 11

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 126
    array-length v7, p1

    .line 127
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v8

    .line 128
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    move-object v2, v1

    move v6, v5

    move-object v4, v1

    :goto_0
    if-ge v6, v7, :cond_4

    .line 135
    aget v1, p1, v6

    invoke-virtual {v8, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->canThrow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    :goto_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {v3, p2}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->handlersFor(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    move-result-object v1

    .line 148
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    :goto_2
    move-object v0, v1

    move-object v2, v3

    move-object v4, v3

    .line 177
    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 157
    invoke-static {v2, v3, p2}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->rangeIsValid(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v4, v3

    goto :goto_1

    .line 173
    :cond_3
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v10

    if-eqz v10, :cond_1

    .line 175
    invoke-static {v2, v4, v0, p2}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->makeEntry(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v0

    .line 177
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 185
    :cond_4
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 188
    invoke-static {v2, v4, v0, p2}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->makeEntry(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v0

    .line 190
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 198
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/CatchTable;->EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    .line 207
    :goto_3
    return-object v0

    .line 201
    :cond_6
    new-instance v1, Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-direct {v1, v3}, Lcom/s1243808733/android/dx/dex/code/CatchTable;-><init>(I)V

    move v2, v5

    :goto_4
    if-ge v2, v3, :cond_7

    .line 204
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {v1, v2, v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->set(ILcom/s1243808733/android/dx/dex/code/CatchTable$Entry;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 207
    :cond_7
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->setImmutable()V

    move-object v0, v1

    goto :goto_3
.end method

.method private static handlersFor(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 220
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    .line 222
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v4

    .line 223
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v5

    .line 224
    invoke-interface {v5}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    .line 263
    :goto_0
    return-object v0

    .line 227
    :cond_0
    if-ne v4, v6, :cond_1

    if-ne v1, v0, :cond_4

    :cond_1
    if-eq v4, v6, :cond_2

    add-int/lit8 v6, v0, 0x1

    if-ne v1, v6, :cond_4

    .line 233
    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    if-ne v4, v1, :cond_4

    :cond_2
    move v1, v2

    .line 239
    :goto_1
    if-ge v1, v0, :cond_3

    .line 248
    invoke-interface {v5, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    .line 249
    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v4, v6}, Lcom/s1243808733/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v0, v1, 0x1

    .line 255
    :cond_3
    new-instance v1, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;-><init>(I)V

    :goto_2
    if-ge v2, v0, :cond_6

    .line 258
    new-instance v4, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-interface {v5, v2}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 259
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v6

    .line 260
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v6

    invoke-virtual {v1, v2, v4, v6}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->set(ILcom/s1243808733/android/dx/rop/cst/CstType;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 239
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen: weird successors list"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 263
    :cond_6
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->setImmutable()V

    move-object v0, v1

    goto :goto_0
.end method

.method private static makeEntry(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;
    .locals 3

    .line 283
    invoke-virtual {p3, p0}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getLast(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v0

    .line 286
    invoke-virtual {p3, p1}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v1

    .line 288
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    .line 289
    new-instance v2, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v1

    invoke-direct {v2, v0, v1, p2}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;-><init>(IILcom/s1243808733/android/dx/dex/code/CatchHandlerList;)V

    return-object v2
.end method

.method private static rangeIsValid(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Z
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 313
    invoke-virtual {p2, p0}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getLast(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    .line 314
    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v1

    sub-int v0, v1, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 309
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "end == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "start == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/s1243808733/android/dx/dex/code/CatchTable;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->order:[I

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->build(Lcom/s1243808733/android/dx/rop/code/RopMethod;[ILcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchTable;

    move-result-object v0

    return-object v0
.end method

.method public getCatchTypes()Ljava/util/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 99
    new-instance v3, Ljava/util/HashSet;

    const/16 v0, 0x14

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 100
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v5

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    .line 104
    invoke-virtual {v4, v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v6

    .line 106
    invoke-interface {v6}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v7

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    .line 109
    invoke-interface {v6, v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public hasAnyCatches()Z
    .locals 5

    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 86
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v4

    .line 87
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v4

    .line 88
    invoke-interface {v4}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
