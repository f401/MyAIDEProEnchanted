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
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    const/4 v1, 0x6

    if-nez v0, :cond_9

    .line 418
    new-array v0, v1, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    .line 420
    :cond_9
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    .line 421
    add-int/lit8 v4, v3, 0x2

    array-length v5, v0

    if-lt v4, v5, :cond_1d

    .line 422
    array-length v5, v0

    add-int/2addr v5, v1

    new-array v1, v5, [I

    .line 423
    array-length v5, v0

    invoke-static {v0, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    .line 426
    :cond_1d
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    add-int/lit8 v3, v3, 0x1

    aput p1, v0, v3

    .line 427
    or-int p1, p2, p3

    aput p1, v0, v4

    .line 428
    aput v4, v0, v2

    return-void
.end method

.method private pushSuccessors(Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;
    .registers 4

    .line 592
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    :goto_2
    if-nez v0, :cond_5

    return-object p1

    .line 596
    :cond_5
    iget-short v1, p0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_11

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    if-eq v0, v1, :cond_1d

    .line 598
    :cond_11
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    if-nez v1, :cond_1d

    .line 601
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    iput-object p1, v1, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 602
    iget-object p1, v0, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    .line 604
    :cond_1d
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    goto :goto_2
.end method


# virtual methods
.method final accept(Lzeroaicy/org/objectweb/asm/MethodVisitor;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/MethodVisitor;",
            "Z)V"
        }
    .end annotation

    .line 358
    invoke-virtual {p1, p0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V

    if-eqz p2, :cond_25

    .line 359
    iget-short p2, p0, Lzeroaicy/org/objectweb/asm/Label;->lineNumber:S

    if-eqz p2, :cond_25

    .line 360
    const v0, 0xffff

    and-int/2addr p2, v0

    invoke-virtual {p1, p2, p0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLineNumber(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 361
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    if-eqz p2, :cond_25

    const/4 p2, 0x1

    .line 362
    :goto_15
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    if-le p2, v1, :cond_1d

    goto :goto_25

    .line 363
    :cond_1d
    aget v0, v0, p2

    invoke-virtual {p1, v0, p0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLineNumber(ILzeroaicy/org/objectweb/asm/Label;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_15

    :cond_25
    :goto_25
    return-void
.end method

.method final addLineNumber(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 335
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Label;->lineNumber:S

    if-nez v0, :cond_8

    int-to-short p1, p1

    .line 336
    iput-short p1, p0, Lzeroaicy/org/objectweb/asm/Label;->lineNumber:S

    goto :goto_2b

    .line 338
    :cond_8
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    const/4 v1, 0x4

    if-nez v0, :cond_11

    .line 339
    new-array v0, v1, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    .line 341
    :cond_11
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 342
    array-length v4, v0

    if-lt v3, v4, :cond_27

    .line 343
    array-length v4, v0

    add-int/2addr v4, v1

    new-array v1, v4, [I

    .line 344
    array-length v4, v0

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    .line 347
    :cond_27
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->otherLineNumbers:[I

    aput p1, v0, v3

    :goto_2b
    return-void
.end method

.method final addSubroutineRetSuccessors(Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 9
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
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    move-object v1, v0

    move-object v0, p0

    .line 545
    :goto_6
    sget-object v2, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    if-ne v0, v2, :cond_19

    .line 574
    :goto_a
    sget-object p1, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    if-ne v1, p1, :cond_f

    return-void

    .line 575
    :cond_f
    iget-object p1, v1, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 576
    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, Lzeroaicy/org/objectweb/asm/Label;

    iput-object v0, v1, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    move-object v1, p1

    goto :goto_a

    .line 548
    :cond_19
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 549
    iput-object v1, v0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 555
    iget-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_38

    iget-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->subroutineId:S

    iget-short v3, p1, Lzeroaicy/org/objectweb/asm/Label;->subroutineId:S

    if-eq v1, v3, :cond_38

    .line 557
    new-instance v1, Lzeroaicy/org/objectweb/asm/Edge;

    iget-short v3, v0, Lzeroaicy/org/objectweb/asm/Label;->outputStackSize:S

    iget-object v4, p1, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v4, v4, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    invoke-direct {v1, v3, v4, v5}, Lzeroaicy/org/objectweb/asm/Edge;-><init>(ILzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Edge;)V

    iput-object v1, v0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    .line 570
    :cond_38
    invoke-direct {v0, v2}, Lzeroaicy/org/objectweb/asm/Label;->pushSuccessors(Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_6
.end method

.method final getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;
    .registers 2

    .line 322
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    if-nez v0, :cond_6

    move-object v0, p0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Frame;->owner:Lzeroaicy/org/objectweb/asm/Label;

    :goto_8
    return-object v0
.end method

.method public getOffset()I
    .registers 3

    .line 302
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    .line 305
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    return v0

    .line 303
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Label offset position has not been resolved yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final markSubroutine(S)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    .line 507
    sget-object v0, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    move-object v0, p0

    .line 508
    :goto_5
    sget-object v1, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    if-ne v0, v1, :cond_a

    return-void

    .line 511
    :cond_a
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 512
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lzeroaicy/org/objectweb/asm/Label;

    iput-object v2, v0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 516
    iget-short v2, v0, Lzeroaicy/org/objectweb/asm/Label;->subroutineId:S

    if-nez v2, :cond_1d

    .line 517
    iput-short p1, v0, Lzeroaicy/org/objectweb/asm/Label;->subroutineId:S

    .line 518
    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/Label;->pushSuccessors(Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v0

    goto :goto_5

    :cond_1d
    move-object v0, v1

    goto :goto_5
.end method

.method final put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            "IZ)V"
        }
    .end annotation

    .line 386
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1f

    const/4 v0, -0x1

    if-eqz p3, :cond_14

    .line 388
    const/high16 p3, 0x20000000

    iget v1, p1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-direct {p0, p2, p3, v1}, Lzeroaicy/org/objectweb/asm/Label;->addForwardReference(III)V

    .line 389
    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_2e

    .line 391
    :cond_14
    const/high16 p3, 0x10000000

    iget v1, p1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-direct {p0, p2, p3, v1}, Lzeroaicy/org/objectweb/asm/Label;->addForwardReference(III)V

    .line 392
    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_2e

    :cond_1f
    if-eqz p3, :cond_28

    .line 396
    iget p3, p0, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_2e

    .line 398
    :cond_28
    iget p3, p0, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_2e
    return-void
.end method

.method final resolve([BI)Z
    .registers 10

    .line 446
    iget-short v0, p0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 447
    iput p2, p0, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    .line 448
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    .line 452
    :cond_f
    aget v0, v0, v1

    :goto_11
    if-gtz v0, :cond_14

    return v1

    .line 453
    :cond_14
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Label;->forwardReferences:[I

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    .line 454
    aget v2, v2, v0

    sub-int v4, p2, v3

    const v5, 0xfffffff

    and-int/2addr v5, v2

    const/high16 v6, -0x10000000

    and-int/2addr v2, v6

    const/high16 v6, 0x10000000

    if-ne v2, v6, :cond_50

    const/16 v2, -0x8000

    if-lt v4, v2, :cond_31

    const/16 v2, 0x7fff

    if-le v4, v2, :cond_45

    .line 463
    :cond_31
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc6

    if-ge v1, v2, :cond_3f

    add-int/lit8 v1, v1, 0x31

    int-to-byte v1, v1

    .line 466
    aput-byte v1, p1, v3

    goto :goto_44

    :cond_3f
    add-int/lit8 v1, v1, 0x14

    int-to-byte v1, v1

    .line 469
    aput-byte v1, p1, v3

    :goto_44
    const/4 v1, 0x1

    :cond_45
    ushr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    .line 473
    aput-byte v2, p1, v5

    int-to-byte v2, v4

    .line 474
    add-int/lit8 v5, v5, 0x1

    aput-byte v2, p1, v5

    goto :goto_68

    :cond_50
    ushr-int/lit8 v2, v4, 0x18

    int-to-byte v2, v2

    .line 476
    aput-byte v2, p1, v5

    ushr-int/lit8 v2, v4, 0x10

    int-to-byte v2, v2

    .line 477
    add-int/lit8 v3, v5, 0x1

    aput-byte v2, p1, v3

    ushr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    .line 478
    add-int/lit8 v3, v5, 0x2

    aput-byte v2, p1, v3

    int-to-byte v2, v4

    .line 479
    add-int/lit8 v5, v5, 0x3

    aput-byte v2, p1, v5

    :goto_68
    add-int/lit8 v0, v0, -0x2

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 620
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
