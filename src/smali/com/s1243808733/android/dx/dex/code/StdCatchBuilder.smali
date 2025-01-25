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
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_20

    if-eqz p2, :cond_18

    if-eqz p3, :cond_10

    .line 68
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    .line 69
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->order:[I

    .line 70
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->addresses:Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    return-void

    .line 65
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addresses == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "order == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static build(Lcom/s1243808733/android/dx/rop/code/RopMethod;[ILcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchTable;
    .registers 13

    .line 126
    array-length v0, p1

    .line 127
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object p0

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    sget-object v2, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v0, :cond_4b

    .line 135
    aget v7, p1, v6

    invoke-virtual {p0, v7}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v7

    .line 137
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->canThrow()Z

    move-result v8

    if-nez v8, :cond_1f

    goto :goto_48

    .line 146
    :cond_1f
    invoke-static {v7, p2}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->handlersFor(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    move-result-object v8

    .line 148
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v9

    if-nez v9, :cond_2a

    goto :goto_45

    .line 156
    :cond_2a
    invoke-virtual {v2, v8}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 157
    invoke-static {v3, v7, p2}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->rangeIsValid(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Z

    move-result v9

    if-eqz v9, :cond_38

    move-object v5, v7

    goto :goto_48

    .line 173
    :cond_38
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v9

    if-eqz v9, :cond_45

    .line 175
    invoke-static {v3, v5, v2, p2}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->makeEntry(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object v2

    .line 177
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    :goto_45
    move-object v3, v7

    move-object v5, v3

    move-object v2, v8

    :goto_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 185
    :cond_4b
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result p0

    if-eqz p0, :cond_58

    .line 188
    invoke-static {v3, v5, v2, p2}, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->makeEntry(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    move-result-object p0

    .line 190
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_61

    .line 198
    sget-object p0, Lcom/s1243808733/android/dx/dex/code/CatchTable;->EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    return-object p0

    .line 201
    :cond_61
    new-instance p1, Lcom/s1243808733/android/dx/dex/code/CatchTable;

    invoke-direct {p1, p0}, Lcom/s1243808733/android/dx/dex/code/CatchTable;-><init>(I)V

    :goto_66
    if-ge v4, p0, :cond_74

    .line 204
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {p1, v4, p2}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->set(ILcom/s1243808733/android/dx/dex/code/CatchTable$Entry;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 207
    :cond_74
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CatchTable;->setImmutable()V

    return-object p1
.end method

.method private static handlersFor(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;
    .registers 8

    .line 220
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    .line 222
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v2

    .line 223
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object p0

    .line 224
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v3

    if-nez v3, :cond_1d

    .line 227
    sget-object p0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    return-object p0

    :cond_1d
    const/4 v4, -0x1

    if-ne v2, v4, :cond_22

    if-ne v1, v3, :cond_2f

    :cond_22
    if-eq v2, v4, :cond_37

    add-int/lit8 v4, v3, 0x1

    if-ne v1, v4, :cond_2f

    .line 233
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_2f

    goto :goto_37

    .line 239
    :cond_2f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen: weird successors list"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    :goto_37
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v3, :cond_4d

    .line 248
    invoke-interface {p0, v2}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    .line 249
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    add-int/lit8 v3, v2, 0x1

    goto :goto_4d

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 255
    :cond_4d
    :goto_4d
    new-instance v2, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;-><init>(I)V

    :goto_52
    if-ge v1, v3, :cond_6f

    .line 258
    new-instance v4, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-interface {p0, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 259
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v5

    .line 260
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v5

    invoke-virtual {v2, v1, v4, v5}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->set(ILcom/s1243808733/android/dx/rop/cst/CstType;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 263
    :cond_6f
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->setImmutable()V

    return-object v2
.end method

.method private static makeEntry(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;
    .registers 4

    .line 283
    invoke-virtual {p3, p0}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getLast(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object p0

    .line 286
    invoke-virtual {p3, p1}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object p1

    .line 288
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result p0

    .line 289
    new-instance p3, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result p1

    invoke-direct {p3, p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;-><init>(IILcom/s1243808733/android/dx/dex/code/CatchHandlerList;)V

    return-object p3
.end method

.method private static rangeIsValid(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/BlockAddresses;)Z
    .registers 3

    if-eqz p0, :cond_26

    if-eqz p1, :cond_1e

    .line 313
    invoke-virtual {p2, p0}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getLast(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object p0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result p0

    .line 314
    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result p1

    sub-int/2addr p1, p0

    const p0, 0xffff

    if-gt p1, p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0

    .line 309
    :cond_1e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "end == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 305
    :cond_26
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "start == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/s1243808733/android/dx/dex/code/CatchTable;
    .registers 4

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
            "Ljava/util/HashSet<",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 100
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_35

    .line 104
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v5

    .line 105
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v5

    .line 106
    invoke-interface {v5}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_26
    if-ge v7, v6, :cond_32

    .line 109
    invoke-interface {v5, v7}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_35
    return-object v0
.end method

.method public hasAnyCatches()Z
    .registers 6

    .line 82
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/StdCatchBuilder;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_25

    .line 86
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v4

    .line 87
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v4

    .line 88
    invoke-interface {v4}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v4

    if-eqz v4, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_25
    return v2
.end method
