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
.method constructor <init>(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V
    .registers 4

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    .line 107
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 109
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->workSet:[I

    .line 110
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->liveSet:[I

    .line 111
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->blockSet:[I

    .line 112
    new-array v1, v0, [Lcom/s1243808733/android/dx/util/IntList;

    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    .line 113
    new-array v0, v0, [Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->catchLists:[Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->previousOffset:I

    return-void
.end method

.method private addWorkIfNecessary(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->liveSet:[I

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/util/Bits;->get([II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->workSet:[I

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    .line 391
    :cond_0
    if-eqz p2, :cond_1

    .line 392
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->blockSet:[I

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    :cond_1
    return-void
.end method

.method private doit()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 339
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v2

    .line 340
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-result-object v3

    .line 341
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v4

    .line 347
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->workSet:[I

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    .line 348
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->blockSet:[I

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->workSet:[I

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 357
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->workSet:[I

    invoke-virtual {v2, v0, p0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->processWorkSet([ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 365
    :goto_0
    if-ge v0, v4, :cond_0

    .line 366
    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

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

    if-eqz v8, :cond_2

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

    .line 365
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 360
    new-instance v1, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "flow of control falls off "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "end of method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getBlockList()Lcom/s1243808733/android/dx/cf/code/ByteBlockList;
    .registers 10

    const/4 v6, 0x0

    .line 283
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->size()I

    move-result v0

    new-array v8, v0, [Lcom/s1243808733/android/dx/cf/code/ByteBlock;

    move v1, v6

    move v7, v6

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->blockSet:[I

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v3

    .line 289
    if-gez v3, :cond_0

    .line 327
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;

    invoke-direct {v0, v7}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;-><init>(I)V

    .line 328
    :goto_1
    if-lt v6, v7, :cond_5

    .line 332
    return-object v0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->liveSet:[I

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/Bits;->get([II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 299
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/util/IntList;

    .line 300
    add-int/lit8 v2, v3, -0x1

    move-object v4, v0

    .line 303
    :goto_2
    if-ge v2, v1, :cond_2

    const/4 v0, -0x1

    .line 311
    :goto_3
    if-nez v4, :cond_4

    .line 312
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v4

    .line 313
    sget-object v5, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    .line 321
    :cond_1
    :goto_4
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/ByteBlock;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;-><init>(IIILcom/s1243808733/android/dx/util/IntList;Lcom/s1243808733/android/dx/cf/code/ByteCatchList;)V

    aput-object v0, v8, v7

    .line 323
    add-int/lit8 v0, v7, 0x1

    :goto_5
    move v1, v3

    move v7, v0

    .line 287
    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    aget-object v4, v0, v2

    .line 305
    if-eqz v4, :cond_3

    move v0, v2

    .line 307
    goto :goto_3

    .line 303
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 315
    :cond_4
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->catchLists:[Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    aget-object v5, v2, v0

    .line 316
    if-nez v5, :cond_1

    .line 317
    sget-object v5, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    goto :goto_4

    .line 329
    :cond_5
    aget-object v1, v8, v6

    invoke-virtual {v0, v6, v1}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->set(ILcom/s1243808733/android/dx/cf/code/ByteBlock;)V

    .line 328
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    move v0, v7

    goto :goto_5
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

    move-result-object v0

    return-object v0
.end method

.method private visitCommon(IIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->liveSet:[I

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    .line 408
    if-eqz p3, :cond_0

    .line 414
    add-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    .line 423
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->blockSet:[I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    goto :goto_0
.end method

.method private visitThrowing(IIZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .line 439
    add-int v0, p1, p2

    .line 441
    if-eqz p3, :cond_0

    .line 442
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->method:Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->listFor(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-result-object v1

    .line 446
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->catchLists:[Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    aput-object v1, v2, p1

    .line 447
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    if-eqz p3, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->toTargetList(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    aput-object v0, v2, p1

    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getPreviousOffset()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 463
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->previousOffset:I

    return v0
.end method

.method public setPreviousOffset(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 455
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->previousOffset:I

    return-void
.end method

.method public visitBranch(IIII)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x1

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 243
    :goto_0
    add-int v0, p2, p3

    .line 244
    invoke-direct {p0, p2, p3, v2}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 245
    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    .line 246
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    invoke-static {v0, p4}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(II)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    aput-object v0, v1, p2

    .line 251
    :goto_1
    invoke-direct {p0, p4, v2}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    return-void

    .line 228
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 229
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    invoke-static {p4}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v1

    aput-object v1, v0, p2

    goto :goto_1

    .line 239
    :pswitch_1
    invoke-direct {p0, p2, v2}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x1

    .line 207
    invoke-direct {p0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 209
    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    if-nez v0, :cond_0

    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-nez v0, :cond_0

    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_0

    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    if-nez v0, :cond_0

    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-nez v0, :cond_0

    instance-of v0, p4, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    invoke-direct {p0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    :cond_1
    return-void
.end method

.method public visitInvalid(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    return-void
.end method

.method public visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 195
    const/16 v0, 0xa9

    if-ne p1, v0, :cond_0

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 197
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    sget-object v1, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    aput-object v1, v0, p2

    .line 199
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    goto :goto_0
.end method

.method public visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    .line 273
    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 274
    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    return-void
.end method

.method public visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 133
    sparse-switch p1, :sswitch_data_0

    .line 185
    invoke-direct {p0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 136
    :sswitch_0
    invoke-direct {p0, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 137
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    sget-object v1, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    aput-object v1, v0, p2

    goto :goto_0

    .line 141
    :sswitch_1
    invoke-direct {p0, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 142
    invoke-direct {p0, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    goto :goto_0

    .line 168
    :sswitch_2
    invoke-direct {p0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 169
    invoke-direct {p0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    goto :goto_0

    .line 178
    :sswitch_3
    invoke-direct {p0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 179
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    if-eq p4, v0, :cond_1

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p4, v0, :cond_0

    .line 180
    :cond_1
    invoke-direct {p0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    goto :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_2
        0x2f -> :sswitch_2
        0x30 -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x4f -> :sswitch_2
        0x50 -> :sswitch_2
        0x51 -> :sswitch_2
        0x52 -> :sswitch_2
        0x53 -> :sswitch_2
        0x54 -> :sswitch_2
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x6c -> :sswitch_3
        0x70 -> :sswitch_3
        0xac -> :sswitch_0
        0xb1 -> :sswitch_0
        0xbe -> :sswitch_2
        0xbf -> :sswitch_1
        0xc2 -> :sswitch_2
        0xc3 -> :sswitch_2
    .end sparse-switch
.end method

.method public visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/s1243808733/android/dx/cf/code/SwitchList;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 259
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getDefaultTarget()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    .line 261
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size()I

    move-result v1

    .line 262
    :goto_0
    if-lt v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {p4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getTargets()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v1

    aput-object v1, v0, p2

    return-void

    .line 263
    :cond_0
    invoke-virtual {p4, v0}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->getTarget(I)I

    move-result v2

    invoke-direct {p0, v2, v3}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
