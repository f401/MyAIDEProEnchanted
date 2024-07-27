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
    .registers 6

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    if-nez p2, :cond_1

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "order == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    if-nez p3, :cond_2

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "addresses == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    .line 69
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->order:[I

    .line 70
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    return-void
.end method

.method public static build(Lcom/s1243808733/android/dx/rop/code/RopMethod;[ILcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchTable;
    .registers 14

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 126
    array-length v8, p1

    .line 127
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v9

    .line 128
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    sget-object v2, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    move-object v0, v1

    .line 131
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    .line 132
    check-cast v1, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-object v5, v1

    move-object v3, v0

    move v7, v6

    .line 134
    :goto_0
    if-lt v7, v8, :cond_1

    .line 185
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {v3, v5, v2, p2}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->makeEntry(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v0

    .line 190
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 197
    if-nez v3, :cond_6

    .line 198
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/CatchTable;->EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    .line 208
    :goto_1
    return-object v0

    .line 135
    :cond_1
    aget v0, p1, v7

    invoke-virtual {v9, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v4

    .line 137
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->canThrow()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    move-object v1, v3

    .line 134
    :goto_2
    add-int/lit8 v4, v7, 0x1

    move-object v2, v0

    move-object v3, v1

    move v7, v4

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {v4, p2}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->handlersFor(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    move-result-object v0

    .line 148
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v4

    move-object v5, v4

    .line 153
    goto :goto_2

    .line 156
    :cond_3
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v3, v4, p2}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->rangeIsValid(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    move-object v1, v3

    move-object v5, v4

    .line 165
    goto :goto_2

    .line 173
    :cond_4
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    invoke-static {v3, v5, v2, p2}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->makeEntry(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v1

    .line 177
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v1, v4

    move-object v5, v4

    .line 182
    goto :goto_2

    .line 201
    :cond_6
    new-instance v1, Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-direct {v1, v3}, Lcom/s1243808733/android/dx/dex/code/CatchTable;-><init>(I)V

    move v2, v6

    .line 203
    :goto_3
    if-lt v2, v3, :cond_7

    .line 207
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->setImmutable()V

    move-object v0, v1

    .line 208
    goto :goto_1

    .line 204
    :cond_7
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {v1, v2, v0}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->set(ILcom/s1243808733/android/dx/dex/code/CatchTable$Entry;)V

    .line 203
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3
.end method

.method private static handlersFor(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;
    .registers 9

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

    .line 226
    if-nez v0, :cond_0

    .line 227
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    .line 264
    :goto_0
    return-object v0

    .line 230
    :cond_0
    if-ne v4, v6, :cond_1

    if-ne v1, v0, :cond_2

    :cond_1
    if-eq v4, v6, :cond_3

    add-int/lit8 v6, v0, 0x1

    if-ne v1, v6, :cond_2

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    if-eq v4, v1, :cond_3

    .line 239
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen: weird successors list"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, v2

    .line 247
    :goto_1
    if-lt v1, v0, :cond_4

    move v1, v0

    .line 255
    :goto_2
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;-><init>(I)V

    .line 257
    :goto_3
    if-lt v2, v1, :cond_6

    .line 263
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->setImmutable()V

    goto :goto_0

    .line 248
    :cond_4
    invoke-interface {v5, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    .line 249
    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v4, v6}, Lcom/s1243808733/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 250
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 251
    goto :goto_2

    .line 247
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    :cond_6
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

    invoke-virtual {v0, v2, v4, v6}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->set(ILcom/s1243808733/android/dx/rop/cst/CstType;I)V

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private static makeEntry(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;
    .registers 7

    .line 283
    invoke-virtual {p3, p0}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getLast(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v0

    .line 286
    invoke-virtual {p3, p1}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v1

    .line 288
    new-instance v2, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v1

    invoke-direct {v2, v0, v1, p2}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;-><init>(IILcom/s1243808733/android/dx/dex/code/CatchHandlerList;)V

    return-object v2
.end method

.method private static rangeIsValid(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Z
    .registers 5

    .line 304
    if-nez p0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "start == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    if-nez p1, :cond_1

    .line 309
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "end == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    invoke-virtual {p2, p0}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getLast(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    .line 314
    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v1

    .line 316
    sub-int v0, v1, v0

    const v1, 0xffff

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/s1243808733/android/dx/dex/code/CatchTable;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->order:[I

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->build(Lcom/s1243808733/android/dx/rop/code/RopMethod;[ILcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchTable;

    move-result-object v0

    return-object v0
.end method

.method public getCatchTypes()Ljava/util/HashSet;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
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

    .line 103
    :goto_0
    if-lt v2, v5, :cond_0

    .line 113
    return-object v3

    .line 104
    :cond_0
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

    .line 108
    :goto_1
    if-lt v0, v7, :cond_1

    .line 103
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {v6, v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hasAnyCatches()Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v3

    move v1, v0

    .line 85
    :goto_0
    if-lt v1, v3, :cond_0

    .line 93
    :goto_1
    return v0

    .line 86
    :cond_0
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

    .line 89
    const/4 v0, 0x1

    goto :goto_1

    .line 85
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
