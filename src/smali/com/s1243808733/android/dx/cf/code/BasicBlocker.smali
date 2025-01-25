.class public final Lcom/s1243808733/android/dx/cf/code/BasicBlocker;
.super Ljava/lang/Object;
.source "BasicBlocker.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;


# instance fields
.field private final blockSet:[I

.field private final catchLists:[Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

.field private final liveSet:[I

.field private final method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

.field private previousOffset:I

.field private final targetLists:[Lcom/s1243808733/android/dx/util/IntList;

.field private final workSet:[I


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V
    .registers 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2f

    .line 99
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    .line 107
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 109
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->workSet:[I

    .line 110
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->liveSet:[I

    .line 111
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->blockSet:[I

    .line 112
    new-array v0, p1, [Lcom/s1243808733/android/dx/util/IntList;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    .line 113
    new-array p1, p1, [Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->catchLists:[Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    .line 114
    const/4 p1, -0x1

    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->previousOffset:I

    return-void

    .line 96
    :cond_2f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addWorkIfNecessary(IZ)V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->liveSet:[I

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/util/Bits;->get([II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 388
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->workSet:[I

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    :cond_d
    if-eqz p2, :cond_14

    .line 392
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->blockSet:[I

    invoke-static {p2, p1}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    :cond_14
    return-void
.end method

.method private doit()V
    .registers 10

    .line 339
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v2

    .line 347
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->workSet:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    .line 348
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->blockSet:[I

    invoke-static {v3, v4}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    .line 355
    :cond_1b
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->workSet:[I

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Bits;->isEmpty([I)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 357
    :try_start_23
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->workSet:[I

    invoke-virtual {v0, v3, p0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->processWorkSet([ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_28} :catch_54

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v2, :cond_1b

    .line 366
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v5

    .line 367
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getStartPc()I

    move-result v6

    .line 368
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getEndPc()I

    move-result v7

    .line 369
    iget-object v8, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->liveSet:[I

    invoke-static {v8, v6, v7}, Lcom/s1243808733/android/dx/util/Bits;->anyInRange([III)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 370
    iget-object v8, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->blockSet:[I

    invoke-static {v8, v6}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    .line 371
    iget-object v6, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->blockSet:[I

    invoke-static {v6, v7}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    .line 372
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getHandlerPc()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :catch_54
    move-exception v0

    .line 360
    new-instance v1, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string v2, "flow of control falls off end of method"

    invoke-direct {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5d
    return-void
.end method

.method private getBlockList()Lcom/s1243808733/android/dx/cf/code/ByteBlockList;
    .registers 12

    .line 283
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/s1243808733/android/dx/cf/code/ByteBlock;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 288
    :goto_f
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->blockSet:[I

    add-int/lit8 v3, v4, 0x1

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v9

    if-gez v9, :cond_29

    .line 327
    new-instance v2, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;

    invoke-direct {v2, v8}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;-><init>(I)V

    :goto_1e
    if-ge v1, v8, :cond_28

    .line 329
    aget-object v3, v0, v1

    invoke-virtual {v2, v1, v3}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->set(ILcom/s1243808733/android/dx/cf/code/ByteBlock;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_28
    return-object v2

    .line 293
    :cond_29
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->liveSet:[I

    invoke-static {v2, v4}, Lcom/s1243808733/android/dx/util/Bits;->get([II)Z

    move-result v2

    if-eqz v2, :cond_62

    add-int/lit8 v2, v9, -0x1

    const/4 v3, 0x0

    :goto_34
    if-lt v2, v4, :cond_40

    .line 304
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3d

    goto :goto_41

    :cond_3d
    add-int/lit8 v2, v2, -0x1

    goto :goto_34

    :cond_40
    const/4 v2, -0x1

    :goto_41
    if-nez v3, :cond_4c

    .line 312
    invoke-static {v9}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    .line 313
    sget-object v3, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-object v6, v2

    move-object v7, v3

    goto :goto_56

    .line 315
    :cond_4c
    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->catchLists:[Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    aget-object v2, v5, v2

    if-nez v2, :cond_54

    .line 317
    sget-object v2, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    :cond_54
    move-object v7, v2

    move-object v6, v3

    .line 321
    :goto_56
    new-instance v10, Lcom/s1243808733/android/dx/cf/code/ByteBlock;

    move-object v2, v10

    move v3, v4

    move v5, v9

    invoke-direct/range {v2 .. v7}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;-><init>(IIILcom/s1243808733/android/dx/util/IntList;Lcom/s1243808733/android/dx/cf/code/ByteCatchList;)V

    aput-object v10, v0, v8

    add-int/lit8 v8, v8, 0x1

    :cond_62
    move v4, v9

    goto :goto_f
.end method

.method public static identifyBlocks(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)Lcom/s1243808733/android/dx/cf/code/ByteBlockList;
    .registers 2

    .line 82
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;-><init>(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V

    .line 84
    invoke-direct {v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->doit()V

    .line 85
    invoke-direct {v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->getBlockList()Lcom/s1243808733/android/dx/cf/code/ByteBlockList;

    move-result-object p0

    return-object p0
.end method

.method private visitCommon(IIZ)V
    .registers 5

    .line 406
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->liveSet:[I

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    if-eqz p3, :cond_d

    .line 414
    add-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    goto :goto_13

    .line 423
    :cond_d
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->blockSet:[I

    add-int/2addr p1, p2

    invoke-static {p3, p1}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    :goto_13
    return-void
.end method

.method private visitThrowing(IIZ)V
    .registers 6

    add-int/2addr p2, p1

    if-eqz p3, :cond_7

    .line 442
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    .line 445
    :cond_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->listFor(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->catchLists:[Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    aput-object v0, v1, p1

    .line 447
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    if-eqz p3, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 p2, -0x1

    :goto_1b
    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->toTargetList(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object p2

    aput-object p2, v1, p1

    return-void
.end method


# virtual methods
.method public getPreviousOffset()I
    .registers 2

    .line 463
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->previousOffset:I

    return v0
.end method

.method public setPreviousOffset(I)V
    .registers 2

    .line 455
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->previousOffset:I

    return-void
.end method

.method public visitBranch(IIII)V
    .registers 7

    const/16 v0, 0xa7

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1e

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_a

    goto :goto_d

    .line 239
    :cond_a
    invoke-direct {p0, p2, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    :goto_d
    add-int p1, p2, p3

    .line 244
    invoke-direct {p0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 245
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    .line 246
    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    invoke-static {p1, p4}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(II)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object p1

    aput-object p1, p3, p2

    goto :goto_2a

    .line 228
    :cond_1e
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 229
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    invoke-static {p4}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object p3

    aput-object p3, p1, p2

    .line 251
    :goto_2a
    invoke-direct {p0, p4, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    return-void
.end method

.method public visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V
    .registers 6

    .line 207
    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 209
    instance-of p5, p4, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    if-nez p5, :cond_1c

    instance-of p5, p4, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-nez p5, :cond_1c

    instance-of p5, p4, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez p5, :cond_1c

    instance-of p5, p4, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    if-nez p5, :cond_1c

    instance-of p5, p4, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-nez p5, :cond_1c

    instance-of p4, p4, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz p4, :cond_1f

    .line 218
    :cond_1c
    invoke-direct {p0, p2, p3, p1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    :cond_1f
    return-void
.end method

.method public visitInvalid(III)V
    .registers 4

    .line 127
    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    return-void
.end method

.method public visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V
    .registers 7

    const/16 p4, 0xa9

    if-ne p1, p4, :cond_f

    .line 196
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 197
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    sget-object p3, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    aput-object p3, p1, p2

    goto :goto_13

    .line 199
    :cond_f
    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    :goto_13
    return-void
.end method

.method public visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;)V"
        }
    .end annotation

    .line 273
    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 274
    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    return-void
.end method

.method public visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 7

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_44

    const/16 v0, 0x70

    if-eq p1, v0, :cond_44

    const/16 p4, 0xac

    const/4 v0, 0x0

    if-eq p1, p4, :cond_3a

    const/16 p4, 0xb1

    if-eq p1, p4, :cond_3a

    const/16 p4, 0xbe

    if-eq p1, p4, :cond_33

    const/16 p4, 0xbf

    if-eq p1, p4, :cond_2c

    const/16 p4, 0xc2

    if-eq p1, p4, :cond_33

    const/16 p4, 0xc3

    if-eq p1, p4, :cond_33

    packed-switch p1, :pswitch_data_54

    packed-switch p1, :pswitch_data_68

    .line 185
    invoke-direct {p0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    goto :goto_52

    .line 141
    :cond_2c
    invoke-direct {p0, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 142
    invoke-direct {p0, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    goto :goto_52

    .line 168
    :cond_33
    :pswitch_33  #0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56
    invoke-direct {p0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 169
    invoke-direct {p0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    goto :goto_52

    .line 136
    :cond_3a
    invoke-direct {p0, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 137
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    sget-object p3, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    aput-object p3, p1, p2

    goto :goto_52

    .line 178
    :cond_44
    invoke-direct {p0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 179
    sget-object p1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    if-eq p4, p1, :cond_4f

    sget-object p1, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p4, p1, :cond_52

    .line 180
    :cond_4f
    invoke-direct {p0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    :cond_52
    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x2e
        :pswitch_33  #0000002e
        :pswitch_33  #0000002f
        :pswitch_33  #00000030
        :pswitch_33  #00000031
        :pswitch_33  #00000032
        :pswitch_33  #00000033
        :pswitch_33  #00000034
        :pswitch_33  #00000035
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x4f
        :pswitch_33  #0000004f
        :pswitch_33  #00000050
        :pswitch_33  #00000051
        :pswitch_33  #00000052
        :pswitch_33  #00000053
        :pswitch_33  #00000054
        :pswitch_33  #00000055
        :pswitch_33  #00000056
    .end packed-switch
.end method

.method public visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V
    .registers 7

    .line 258
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 259
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getDefaultTarget()I

    move-result p3

    const/4 p5, 0x1

    invoke-direct {p0, p3, p5}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    .line 261
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size()I

    move-result p3

    :goto_10
    if-ge p1, p3, :cond_1c

    .line 263
    invoke-virtual {p4, p1}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getTarget(I)I

    move-result v0

    invoke-direct {p0, v0, p5}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    .line 266
    :cond_1c
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {p4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getTargets()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object p3

    aput-object p3, p1, p2

    return-void
.end method
