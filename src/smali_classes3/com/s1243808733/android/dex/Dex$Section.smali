.class public final Lcom/s1243808733/android/dex/Dex$Section;
.super Ljava/lang/Object;
.source "Dex.java"

# interfaces
.implements Lcom/s1243808733/android/dex/util/ByteInput;
.implements Lcom/s1243808733/android/dex/util/ByteOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dex/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Section"
.end annotation


# instance fields
.field private final data:Ljava/nio/ByteBuffer;

.field private final initialPosition:I

.field private final name:Ljava/lang/String;

.field private final this$0:Lcom/s1243808733/android/dex/Dex;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dex/Dex$Section;->this$0:Lcom/s1243808733/android/dex/Dex;

    .line 334
    iput-object p2, p0, Lcom/s1243808733/android/dex/Dex$Section;->name:Ljava/lang/String;

    .line 335
    iput-object p3, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    .line 336
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->initialPosition:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dex/Dex$Section;)Lcom/s1243808733/android/dex/Dex;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->this$0:Lcom/s1243808733/android/dex/Dex;

    return-object v0
.end method

.method static synthetic access$1000020(Lcom/s1243808733/android/dex/Dex$Section;)Lcom/s1243808733/android/dex/Code;
    .registers 2

    invoke-direct {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readCode()Lcom/s1243808733/android/dex/Code;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000025(Lcom/s1243808733/android/dex/Dex$Section;)Lcom/s1243808733/android/dex/ClassData;
    .registers 2

    invoke-direct {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readClassData()Lcom/s1243808733/android/dex/ClassData;

    move-result-object v0

    return-object v0
.end method

.method private findCatchHandlerIndex([Lcom/s1243808733/android/dex/Code$CatchHandler;I)I
    .registers 5

    .line 527
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 528
    :cond_0
    aget-object v1, p1, v0

    .line 529
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Code$CatchHandler;->getOffset()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 530
    return v0

    .line 527
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getBytesFrom(I)[B
    .registers 4

    .line 589
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 590
    sub-int/2addr v0, p1

    new-array v0, v0, [B

    .line 591
    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 592
    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 593
    return-object v0
.end method

.method private readCatchHandler(I)Lcom/s1243808733/android/dex/Code$CatchHandler;
    .registers 8

    .line 537
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readSleb128()I

    move-result v1

    .line 538
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 539
    new-array v3, v2, [I

    .line 540
    new-array v4, v2, [I

    .line 541
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 545
    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v0

    .line 546
    :goto_1
    new-instance v1, Lcom/s1243808733/android/dex/Code$CatchHandler;

    invoke-direct {v1, v3, v4, v0, p1}, Lcom/s1243808733/android/dex/Code$CatchHandler;-><init>([I[III)V

    return-object v1

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v5

    aput v5, v3, v0

    .line 543
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v5

    aput v5, v4, v0

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private readCatchHandlers()[Lcom/s1243808733/android/dex/Code$CatchHandler;
    .registers 6

    .line 504
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 505
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v2

    .line 506
    new-array v3, v2, [Lcom/s1243808733/android/dex/Code$CatchHandler;

    .line 507
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 511
    return-object v3

    .line 508
    :cond_0
    iget-object v4, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 509
    sub-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/s1243808733/android/dex/Dex$Section;->readCatchHandler(I)Lcom/s1243808733/android/dex/Code$CatchHandler;

    move-result-object v4

    aput-object v4, v3, v0

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readClassData()Lcom/s1243808733/android/dex/ClassData;
    .registers 6

    .line 550
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v0

    .line 551
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v1

    .line 552
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v2

    .line 553
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v3

    .line 554
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/Dex$Section;->readFields(I)[Lcom/s1243808733/android/dex/ClassData$Field;

    move-result-object v0

    .line 555
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->readFields(I)[Lcom/s1243808733/android/dex/ClassData$Field;

    move-result-object v1

    .line 556
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dex/Dex$Section;->readMethods(I)[Lcom/s1243808733/android/dex/ClassData$Method;

    move-result-object v2

    .line 557
    invoke-direct {p0, v3}, Lcom/s1243808733/android/dex/Dex$Section;->readMethods(I)[Lcom/s1243808733/android/dex/ClassData$Method;

    move-result-object v3

    .line 558
    new-instance v4, Lcom/s1243808733/android/dex/ClassData;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/s1243808733/android/dex/ClassData;-><init>([Lcom/s1243808733/android/dex/ClassData$Field;[Lcom/s1243808733/android/dex/ClassData$Field;[Lcom/s1243808733/android/dex/ClassData$Method;[Lcom/s1243808733/android/dex/ClassData$Method;)V

    return-object v4
.end method

.method private readCode()Lcom/s1243808733/android/dex/Code;
    .registers 9

    const/4 v7, 0x0

    .line 472
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v1

    .line 473
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v2

    .line 474
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v3

    .line 475
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v0

    .line 476
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v4

    .line 477
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v5

    .line 478
    invoke-virtual {p0, v5}, Lcom/s1243808733/android/dex/Dex$Section;->readShortArray(I)[S

    move-result-object v5

    .line 479
    if-lez v0, :cond_1

    .line 482
    array-length v6, v5

    rem-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readShort()S

    .line 491
    :cond_0
    iget-object v6, p0, Lcom/s1243808733/android/dex/Dex$Section;->this$0:Lcom/s1243808733/android/dex/Dex;

    iget-object v7, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v6

    .line 492
    mul-int/lit8 v7, v0, 0x8

    invoke-virtual {p0, v7}, Lcom/s1243808733/android/dex/Dex$Section;->skip(I)V

    .line 493
    invoke-direct {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readCatchHandlers()[Lcom/s1243808733/android/dex/Code$CatchHandler;

    move-result-object v7

    .line 494
    invoke-direct {v6, v0, v7}, Lcom/s1243808733/android/dex/Dex$Section;->readTries(I[Lcom/s1243808733/android/dex/Code$CatchHandler;)[Lcom/s1243808733/android/dex/Code$Try;

    move-result-object v6

    .line 499
    :goto_0
    new-instance v0, Lcom/s1243808733/android/dex/Code;

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dex/Code;-><init>(IIII[S[Lcom/s1243808733/android/dex/Code$Try;[Lcom/s1243808733/android/dex/Code$CatchHandler;)V

    return-object v0

    .line 496
    :cond_1
    new-array v6, v7, [Lcom/s1243808733/android/dex/Code$Try;

    .line 497
    new-array v7, v7, [Lcom/s1243808733/android/dex/Code$CatchHandler;

    goto :goto_0
.end method

.method private readFields(I)[Lcom/s1243808733/android/dex/ClassData$Field;
    .registers 7

    const/4 v1, 0x0

    .line 562
    new-array v3, p1, [Lcom/s1243808733/android/dex/ClassData$Field;

    move v0, v1

    move v2, v1

    .line 564
    :goto_0
    if-lt v2, p1, :cond_0

    .line 569
    return-object v3

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v1

    add-int/2addr v0, v1

    .line 566
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v1

    .line 567
    new-instance v4, Lcom/s1243808733/android/dex/ClassData$Field;

    invoke-direct {v4, v0, v1}, Lcom/s1243808733/android/dex/ClassData$Field;-><init>(II)V

    aput-object v4, v3, v2

    .line 564
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private readMethods(I)[Lcom/s1243808733/android/dex/ClassData$Method;
    .registers 8

    const/4 v1, 0x0

    .line 573
    new-array v3, p1, [Lcom/s1243808733/android/dex/ClassData$Method;

    move v0, v1

    move v2, v1

    .line 575
    :goto_0
    if-lt v2, p1, :cond_0

    .line 581
    return-object v3

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v1

    add-int/2addr v0, v1

    .line 577
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v1

    .line 578
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v4

    .line 579
    new-instance v5, Lcom/s1243808733/android/dex/ClassData$Method;

    invoke-direct {v5, v0, v1, v4}, Lcom/s1243808733/android/dex/ClassData$Method;-><init>(III)V

    aput-object v5, v3, v2

    .line 575
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private readTries(I[Lcom/s1243808733/android/dex/Code$CatchHandler;)[Lcom/s1243808733/android/dex/Code$Try;
    .registers 9

    .line 515
    new-array v1, p1, [Lcom/s1243808733/android/dex/Code$Try;

    .line 516
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    .line 523
    return-object v1

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 518
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v3

    .line 519
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v4

    .line 520
    invoke-direct {p0, p2, v4}, Lcom/s1243808733/android/dex/Dex$Section;->findCatchHandlerIndex([Lcom/s1243808733/android/dex/Code$CatchHandler;I)I

    move-result v4

    .line 521
    new-instance v5, Lcom/s1243808733/android/dex/Code$Try;

    invoke-direct {v5, v2, v3, v4}, Lcom/s1243808733/android/dex/Code$Try;-><init>(III)V

    aput-object v5, v1, v0

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public alignToFourBytes()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public alignToFourBytesWithZeroFill()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 627
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public assertFourByteAligned()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    .line 634
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not four byte aligned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public getPosition()I
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public readAnnotation()Lcom/s1243808733/android/dex/Annotation;
    .registers 6

    .line 597
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readByte()B

    move-result v0

    .line 598
    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 599
    new-instance v2, Lcom/s1243808733/android/dex/EncodedValueReader;

    const/16 v3, 0x1d

    invoke-direct {v2, p0, v3}, Lcom/s1243808733/android/dex/EncodedValueReader;-><init>(Lcom/s1243808733/android/dex/util/ByteInput;I)V

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/EncodedValueReader;->skipValue()V

    .line 600
    new-instance v2, Lcom/s1243808733/android/dex/Annotation;

    iget-object v3, p0, Lcom/s1243808733/android/dex/Dex$Section;->this$0:Lcom/s1243808733/android/dex/Dex;

    new-instance v4, Lcom/s1243808733/android/dex/EncodedValue;

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->getBytesFrom(I)[B

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/s1243808733/android/dex/EncodedValue;-><init>([B)V

    invoke-direct {v2, v3, v0, v4}, Lcom/s1243808733/android/dex/Annotation;-><init>(Lcom/s1243808733/android/dex/Dex;BLcom/s1243808733/android/dex/EncodedValue;)V

    return-object v2
.end method

.method public readByte()B
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public readByteArray(I)[B
    .registers 4

    .line 361
    new-array v0, p1, [B

    .line 362
    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 363
    return-object v0
.end method

.method public readCallSiteId()Lcom/s1243808733/android/dex/CallSiteId;
    .registers 4

    .line 444
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 445
    new-instance v1, Lcom/s1243808733/android/dex/CallSiteId;

    iget-object v2, p0, Lcom/s1243808733/android/dex/Dex$Section;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v1, v2, v0}, Lcom/s1243808733/android/dex/CallSiteId;-><init>(Lcom/s1243808733/android/dex/Dex;I)V

    return-object v1
.end method

.method public readClassDef()Lcom/s1243808733/android/dex/ClassDef;
    .registers 12

    .line 457
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v2

    .line 458
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    .line 459
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v4

    .line 460
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v5

    .line 461
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v6

    .line 462
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v7

    .line 463
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v8

    .line 464
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v9

    .line 465
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v10

    .line 466
    new-instance v0, Lcom/s1243808733/android/dex/ClassDef;

    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$Section;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-direct/range {v0 .. v10}, Lcom/s1243808733/android/dex/ClassDef;-><init>(Lcom/s1243808733/android/dex/Dex;IIIIIIIII)V

    return-object v0
.end method

.method public readEncodedArray()Lcom/s1243808733/android/dex/EncodedValue;
    .registers 4

    .line 604
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 605
    new-instance v1, Lcom/s1243808733/android/dex/EncodedValueReader;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dex/EncodedValueReader;-><init>(Lcom/s1243808733/android/dex/util/ByteInput;I)V

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/EncodedValueReader;->skipValue()V

    .line 606
    new-instance v1, Lcom/s1243808733/android/dex/EncodedValue;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/Dex$Section;->getBytesFrom(I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/EncodedValue;-><init>([B)V

    return-object v1
.end method

.method public readFieldId()Lcom/s1243808733/android/dex/FieldId;
    .registers 6

    .line 423
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v0

    .line 424
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v1

    .line 425
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 426
    new-instance v3, Lcom/s1243808733/android/dex/FieldId;

    iget-object v4, p0, Lcom/s1243808733/android/dex/Dex$Section;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/s1243808733/android/dex/FieldId;-><init>(Lcom/s1243808733/android/dex/Dex;III)V

    return-object v3
.end method

.method public readInt()I
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readMethodHandle()Lcom/s1243808733/android/dex/MethodHandle;
    .registers 7

    .line 449
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->fromValue(I)Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    move-result-object v2

    .line 450
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v3

    .line 451
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v4

    .line 452
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v5

    .line 453
    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle;

    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$Section;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dex/MethodHandle;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;III)V

    return-object v0
.end method

.method public readMethodId()Lcom/s1243808733/android/dex/MethodId;
    .registers 6

    .line 430
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v0

    .line 431
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v1

    .line 432
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 433
    new-instance v3, Lcom/s1243808733/android/dex/MethodId;

    iget-object v4, p0, Lcom/s1243808733/android/dex/Dex$Section;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/s1243808733/android/dex/MethodId;-><init>(Lcom/s1243808733/android/dex/Dex;III)V

    return-object v3
.end method

.method public readProtoId()Lcom/s1243808733/android/dex/ProtoId;
    .registers 6

    .line 437
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 438
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    .line 439
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 440
    new-instance v3, Lcom/s1243808733/android/dex/ProtoId;

    iget-object v4, p0, Lcom/s1243808733/android/dex/Dex$Section;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/s1243808733/android/dex/ProtoId;-><init>(Lcom/s1243808733/android/dex/Dex;III)V

    return-object v3
.end method

.method public readShort()S
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public readShortArray(I)[S
    .registers 5

    .line 367
    if-nez p1, :cond_1

    .line 368
    sget-object v0, Lcom/s1243808733/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    .line 374
    :cond_0
    return-object v0

    .line 370
    :cond_1
    new-array v0, p1, [S

    .line 371
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readShort()S

    move-result v2

    aput-short v2, v0, v1

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readSleb128()I
    .registers 2

    .line 386
    invoke-static {p0}, Lcom/s1243808733/android/dex/Leb128;->readSignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .registers 10

    .line 401
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 402
    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 403
    iget-object v2, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 404
    iget-object v3, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 405
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v0

    .line 408
    new-array v3, v0, [C

    invoke-static {p0, v3}, Lcom/s1243808733/android/dex/Mutf8;->decode(Lcom/s1243808733/android/dex/util/ByteInput;[C)Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 410
    new-instance v4, Lcom/s1243808733/android/dex/DexException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Declared length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v6, " doesn\'t match decoded length of "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :catch_0
    move-exception v0

    .line 415
    :try_start_1
    new-instance v3, Lcom/s1243808733/android/dex/DexException;

    invoke-direct {v3, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 417
    iget-object v3, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 418
    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0

    .line 417
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 418
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/io/UTFDataFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3
.end method

.method public readTypeList()Lcom/s1243808733/android/dex/TypeList;
    .registers 4

    .line 394
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 395
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dex/Dex$Section;->readShortArray(I)[S

    move-result-object v0

    .line 396
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->alignToFourBytes()V

    .line 397
    new-instance v1, Lcom/s1243808733/android/dex/TypeList;

    iget-object v2, p0, Lcom/s1243808733/android/dex/Dex$Section;->this$0:Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v1, v2, v0}, Lcom/s1243808733/android/dex/TypeList;-><init>(Lcom/s1243808733/android/dex/Dex;[S)V

    return-object v1
.end method

.method public readUleb128()I
    .registers 2

    .line 378
    invoke-static {p0}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readUleb128p1()I
    .registers 2

    .line 382
    invoke-static {p0}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public readUnsignedShort()I
    .registers 3

    .line 352
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public skip(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 610
    if-gez p1, :cond_0

    .line 611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public used()I
    .registers 3

    .line 709
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/s1243808733/android/dex/Dex$Section;->initialPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public write([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)V"
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public write([S)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)V"
        }
    .end annotation

    .line 660
    const/4 v0, 0x0

    .line 661
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 660
    :cond_0
    aget-short v1, p1, v0

    .line 661
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeShort(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeByte(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeInt(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeShort(S)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeSleb128(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 679
    :try_start_0
    invoke-static {p0, p1}, Lcom/s1243808733/android/dex/Leb128;->writeSignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    return-void

    .line 679
    :catch_0
    move-exception v0

    .line 681
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Section limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " exceeded by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dex/Dex$Section;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeStringData(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 687
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 688
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 689
    invoke-static {p1}, Lcom/s1243808733/android/dex/Mutf8;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dex/Dex$Section;->write([B)V

    .line 690
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    return-void

    .line 690
    :catch_0
    move-exception v0

    .line 692
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public writeTypeList(Lcom/s1243808733/android/dex/TypeList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/TypeList;",
            ")V"
        }
    .end annotation

    .line 697
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/TypeList;->getTypes()[S

    move-result-object v1

    .line 698
    array-length v0, v1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 699
    const/4 v0, 0x0

    .line 700
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/Dex$Section;->alignToFourBytesWithZeroFill()V

    return-void

    .line 699
    :cond_0
    aget-short v2, v1, v0

    .line 700
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dex/Dex$Section;->writeShort(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeUleb128(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 671
    :try_start_0
    invoke-static {p0, p1}, Lcom/s1243808733/android/dex/Leb128;->writeUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    return-void

    .line 671
    :catch_0
    move-exception v0

    .line 673
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Section limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " exceeded by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dex/Dex$Section;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeUleb128p1(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 390
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    return-void
.end method

.method public writeUnsignedShort(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 652
    int-to-short v0, p1

    .line 653
    const v1, 0xffff

    and-int/2addr v1, v0

    if-eq p1, v1, :cond_0

    .line 654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expected an unsigned short: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_0
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeShort(S)V

    return-void
.end method
