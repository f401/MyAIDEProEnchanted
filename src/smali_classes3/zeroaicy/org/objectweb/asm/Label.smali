.class public Lzeroaicy/org/objectweb/asm/Label;
.super Ljava/lang/Object;
.source "Label.java"


# static fields
.field static final EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

.field static final FLAG_DEBUG_ONLY:I = 0x1

.field static final FLAG_JUMP_TARGET:I = 0x2

.field static final FLAG_REACHABLE:I = 0x8

.field static final FLAG_RESOLVED:I = 0x4

.field static final FLAG_SUBROUTINE_CALLER:I = 0x10

.field static final FLAG_SUBROUTINE_END:I = 0x40

.field static final FLAG_SUBROUTINE_START:I = 0x20

.field static final FORWARD_REFERENCES_CAPACITY_INCREMENT:I = 0x6

.field static final FORWARD_REFERENCE_HANDLE_MASK:I = 0xfffffff

.field static final FORWARD_REFERENCE_TYPE_MASK:I = -0x10000000

.field static final FORWARD_REFERENCE_TYPE_SHORT:I = 0x10000000

.field static final FORWARD_REFERENCE_TYPE_WIDE:I = 0x20000000

.field static final LINE_NUMBERS_CAPACITY_INCREMENT:I = 0x4


# instance fields
.field bytecodeOffset:I

.field flags:S

.field private forwardReferences:[I

.field frame:Lzeroaicy/org/objectweb/asm/Frame;

.field public info:Ljava/lang/Object;

.field inputStackSize:S

.field private lineNumber:S

.field nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

.field nextListElement:Lzeroaicy/org/objectweb/asm/Label;

.field private otherLineNumbers:[I

.field outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

.field outputStackMax:S

.field outputStackSize:S

.field subroutineId:S


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addForwardReference(III)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    const/4 v4, 0x0

    .line 417
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    if-nez v0, :cond_0

    .line 418
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    .line 420
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    aget v0, v0, v4

    .line 421
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 422
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x6

    new-array v1, v1, [I

    .line 423
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    .line 426
    :cond_1
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    add-int/lit8 v0, v0, 0x1

    aput p1, v1, v0

    .line 427
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    add-int/lit8 v0, v0, 0x1

    or-int v2, p2, p3

    aput v2, v1, v0

    .line 428
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    aput v0, v1, v4

    return-void
.end method

.method private pushSuccessors(Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;
    .registers 5

    .line 592
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    move-object v0, p1

    move-object v2, v1

    .line 593
    :goto_0
    if-nez v2, :cond_0

    .line 606
    return-object v0

    .line 596
    :cond_0
    iget-short v1, p0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    if-eq v2, v1, :cond_3

    :cond_1
    const/4 v1, 0x0

    .line 598
    :goto_1
    if-nez v1, :cond_2

    iget-object v1, v2, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    if-nez v1, :cond_2

    .line 601
    iget-object v1, v2, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    iput-object v0, v1, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 602
    iget-object v0, v2, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    .line 604
    :cond_2
    iget-object v1, v2, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    move-object v2, v1

    goto :goto_0

    .line 596
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method final accept(Lzeroaicy/org/objectweb/asm/MethodVisitor;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/MethodVisitor;",
            "Z)V"
        }
    .end annotation

    .line 358
    invoke-virtual {p1, p0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V

    .line 359
    if-eqz p2, :cond_0

    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Label;->lineNumber:S

    if-eqz v0, :cond_0

    .line 360
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Label;->lineNumber:S

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLineNumber(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 361
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-le v0, v1, :cond_1

    :cond_0
    return-void

    .line 363
    :cond_1
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1, p0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLineNumber(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final addLineNumber(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v4, 0x0

    .line 335
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Label;->lineNumber:S

    if-nez v0, :cond_0

    .line 336
    int-to-short v0, p1

    iput-short v0, p0, Lzeroaicy/org/objectweb/asm/Label;->lineNumber:S

    .line 347
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    if-nez v0, :cond_1

    .line 339
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    .line 341
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    .line 342
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    array-length v0, v0

    if-lt v1, v0, :cond_2

    .line 343
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    .line 344
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    .line 347
    :cond_2
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    aput p1, v0, v1

    goto :goto_0
.end method

.method final addSubroutineRetSuccessors(Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .line 542
    sget-object v0, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    .line 544
    sget-object v1, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    move-object v1, p0

    .line 545
    :goto_0
    sget-object v2, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 574
    :goto_1
    sget-object v0, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    if-ne v1, v0, :cond_2

    return-void

    .line 548
    :cond_0
    iget-object v2, v1, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 549
    iput-object v0, v1, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 555
    iget-short v0, v1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    iget-short v0, v1, Lzeroaicy/org/objectweb/asm/Label;->subroutineId:S

    iget-short v3, p1, Lzeroaicy/org/objectweb/asm/Label;->subroutineId:S

    if-eq v0, v3, :cond_1

    .line 557
    new-instance v0, Lzeroaicy/org/objectweb/asm/Edge;

    iget-short v3, v1, Lzeroaicy/org/objectweb/asm/Label;->outputStackSize:S

    iget-object v4, p1, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v4, v4, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v5, v1, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    invoke-direct {v0, v3, v4, v5}, Lzeroaicy/org/objectweb/asm/Edge;-><init>(ILzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Edge;)V

    iput-object v0, v1, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    .line 570
    :cond_1
    invoke-direct {v1, v2}, Lzeroaicy/org/objectweb/asm/Label;->pushSuccessors(Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object p0

    move-object v0, v1

    move-object v1, p0

    goto :goto_0

    .line 575
    :cond_2
    iget-object v2, v1, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 576
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/Label;

    iput-object v0, v1, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    move-object v1, v2

    .line 577
    goto :goto_1
.end method

.method final getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;
    .registers 2

    .line 322
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object p0, v0, Lzeroaicy/org/objectweb/asm/Frame;->owner:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_0
.end method

.method public getOffset()I
    .registers 3

    .line 302
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Label offset position has not been resolved yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    return v0
.end method

.method final markSubroutine(S)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    .line 507
    sget-object v0, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 508
    :goto_0
    sget-object v0, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    if-ne p0, v0, :cond_0

    return-void

    .line 511
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 512
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/Label;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 516
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Label;->subroutineId:S

    if-nez v0, :cond_1

    .line 517
    iput-short p1, p0, Lzeroaicy/org/objectweb/asm/Label;->subroutineId:S

    .line 518
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Label;->pushSuccessors(Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    goto :goto_0
.end method

.method final put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            "IZ)V"
        }
    .end annotation

    const/4 v2, -0x1

    .line 386
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 387
    if-eqz p3, :cond_0

    .line 388
    const/high16 v0, 0x20000000

    iget v1, p1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-direct {p0, p2, v0, v1}, Lzeroaicy/org/objectweb/asm/Label;->addForwardReference(III)V

    .line 389
    invoke-virtual {p1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 398
    :goto_0
    return-void

    .line 391
    :cond_0
    const/high16 v0, 0x10000000

    iget v1, p1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-direct {p0, p2, v0, v1}, Lzeroaicy/org/objectweb/asm/Label;->addForwardReference(III)V

    .line 392
    invoke-virtual {p1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 395
    :cond_1
    if-eqz p3, :cond_2

    .line 396
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 398
    :cond_2
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0
.end method

.method final resolve([BI)Z
    .registers 10

    const/4 v0, 0x0

    .line 446
    iget-short v1, p0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    iput-short v1, p0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 447
    iput p2, p0, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    .line 448
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    if-nez v1, :cond_1

    .line 482
    :cond_0
    return v0

    .line 452
    :cond_1
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    aget v1, v1, v0

    :goto_0
    if-lez v1, :cond_0

    .line 453
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 454
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    aget v3, v3, v1

    .line 455
    sub-int v4, p2, v2

    .line 456
    const v5, 0xfffffff

    and-int/2addr v5, v3

    .line 457
    const/high16 v6, -0x10000000

    and-int/2addr v3, v6

    const/high16 v6, 0x10000000

    if-ne v3, v6, :cond_5

    .line 458
    const/16 v3, -0x8000

    if-lt v4, v3, :cond_2

    const/16 v3, 0x7fff

    if-le v4, v3, :cond_3

    .line 463
    :cond_2
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    .line 464
    const/16 v3, 0xc6

    if-ge v0, v3, :cond_4

    .line 466
    add-int/lit8 v0, v0, 0x31

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 471
    :goto_1
    const/4 v0, 0x1

    .line 473
    :cond_3
    ushr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v5

    .line 474
    add-int/lit8 v2, v5, 0x1

    int-to-byte v3, v4

    aput-byte v3, p1, v2

    .line 452
    :goto_2
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 469
    :cond_4
    add-int/lit8 v0, v0, 0x14

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    goto :goto_1

    .line 476
    :cond_5
    add-int/lit8 v2, v5, 0x1

    ushr-int/lit8 v3, v4, 0x18

    int-to-byte v3, v3

    aput-byte v3, p1, v5

    .line 477
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    .line 478
    ushr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    .line 479
    add-int/lit8 v2, v3, 0x1

    int-to-byte v3, v4

    aput-byte v3, p1, v2

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 620
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
