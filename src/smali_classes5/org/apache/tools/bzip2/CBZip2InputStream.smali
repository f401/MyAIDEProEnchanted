.class public Lorg/apache/tools/bzip2/CBZip2InputStream;
.super Ljava/io/InputStream;
.source "CBZip2InputStream.java"

# interfaces
.implements Lorg/apache/tools/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/bzip2/CBZip2InputStream$Data;
    }
.end annotation


# static fields
.field private static final EOF:I = 0x0

.field private static final NO_RAND_PART_A_STATE:I = 0x5

.field private static final NO_RAND_PART_B_STATE:I = 0x6

.field private static final NO_RAND_PART_C_STATE:I = 0x7

.field private static final RAND_PART_A_STATE:I = 0x2

.field private static final RAND_PART_B_STATE:I = 0x3

.field private static final RAND_PART_C_STATE:I = 0x4

.field private static final START_BLOCK_STATE:I = 0x1


# instance fields
.field private blockRandomised:Z

.field private blockSize100k:I

.field private bsBuff:I

.field private bsLive:I

.field private computedBlockCRC:I

.field private computedCombinedCRC:I

.field private final crc:Lorg/apache/tools/bzip2/CRC;

.field private currentChar:I

.field private currentState:I

.field private data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

.field private final decompressConcatenated:Z

.field private in:Ljava/io/InputStream;

.field private last:I

.field private nInUse:I

.field private origPtr:I

.field private storedBlockCRC:I

.field private storedCombinedCRC:I

.field private su_ch2:I

.field private su_chPrev:I

.field private su_count:I

.field private su_i2:I

.field private su_j2:I

.field private su_rNToGo:I

.field private su_rTPos:I

.field private su_tPos:I

.field private su_z:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    .line 157
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 68
    new-instance v0, Lorg/apache/tools/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/tools/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentChar:I

    .line 86
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 159
    iput-object p1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    .line 160
    iput-boolean p2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->decompressConcatenated:Z

    .line 162
    invoke-direct {p0, v1}, Lorg/apache/tools/bzip2/CBZip2InputStream;->init(Z)Z

    .line 163
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->initBlock()V

    .line 164
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupBlock()V

    .line 165
    return-void
.end method

.method private bsGetBit()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    .line 439
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    .line 440
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    .line 442
    if-ge v1, v2, :cond_16

    .line 443
    iget-object v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 445
    if-ltz v3, :cond_23

    .line 449
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    .line 450
    add-int/lit8 v1, v1, 0x8

    .line 451
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    .line 454
    :cond_16
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    .line 455
    add-int/lit8 v1, v1, -0x1

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2b

    move v0, v2

    :goto_22
    return v0

    .line 446
    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_2b
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private bsGetInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x8

    .line 463
    invoke-direct {p0, v3}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v0

    invoke-direct {p0, v3}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v1

    invoke-direct {p0, v3}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v2

    invoke-direct {p0, v3}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v3

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    return v0
.end method

.method private bsGetUByte()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method private bsR(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    .line 416
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    .line 418
    if-ge v0, p1, :cond_17

    .line 419
    iget-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    .line 421
    :cond_8
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 423
    if-ltz v3, :cond_24

    .line 427
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    .line 428
    add-int/lit8 v0, v0, 0x8

    .line 429
    if-lt v0, p1, :cond_8

    .line 431
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    .line 434
    :cond_17
    sub-int v2, v0, p1

    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    .line 435
    sub-int/2addr v0, p1

    shr-int v0, v1, v0

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0

    .line 424
    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private complete()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 386
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetInt()I

    move-result v1

    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->storedCombinedCRC:I

    .line 387
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 388
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 390
    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    if-eq v1, v2, :cond_13

    .line 391
    invoke-static {}, Lorg/apache/tools/bzip2/CBZip2InputStream;->reportCRCError()V

    .line 396
    :cond_13
    iget-boolean v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->decompressConcatenated:Z

    if-eqz v1, :cond_1d

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->init(Z)Z

    move-result v1

    if-nez v1, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method private createHuffmanDecodingTables(II)V
    .registers 16

    .line 597
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 598
    iget-object v8, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->temp_charArray2d:[[C

    .line 599
    iget-object v9, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->minLens:[I

    .line 600
    iget-object v10, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->limit:[[I

    .line 601
    iget-object v11, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->base:[[I

    .line 602
    iget-object v12, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->perm:[[I

    .line 604
    const/4 v0, 0x0

    move v7, v0

    :goto_e
    if-ge v7, p2, :cond_36

    .line 605
    const/16 v4, 0x20

    .line 606
    const/4 v5, 0x0

    .line 607
    aget-object v2, v8, v7

    move v0, p1

    .line 608
    :goto_16
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_24

    .line 609
    aget-char v0, v2, v1

    .line 610
    if-le v0, v5, :cond_1f

    move v5, v0

    .line 613
    :cond_1f
    if-ge v0, v4, :cond_22

    move v4, v0

    :cond_22
    move v0, v1

    .line 616
    goto :goto_16

    .line 617
    :cond_24
    aget-object v0, v10, v7

    aget-object v1, v11, v7

    aget-object v2, v12, v7

    aget-object v3, v8, v7

    move v6, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/tools/bzip2/CBZip2InputStream;->hbCreateDecodeTables([I[I[I[CIII)V

    .line 619
    aput v4, v9, v7

    .line 604
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_e

    .line 621
    :cond_36
    return-void
.end method

.method private endBlock()V
    .registers 4

    .line 365
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/tools/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedBlockCRC:I

    .line 368
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->storedBlockCRC:I

    if-eq v1, v0, :cond_1b

    .line 371
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->storedCombinedCRC:I

    ushr-int/lit8 v2, v0, 0x1f

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v2

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    .line 374
    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    .line 376
    invoke-static {}, Lorg/apache/tools/bzip2/CBZip2InputStream;->reportCRCError()V

    .line 379
    :cond_1b
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    ushr-int/lit8 v1, v0, 0x1f

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    .line 382
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedBlockCRC:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    .line 383
    return-void
.end method

.method private getAndMoveToFrontDecode()V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    const/16 v2, 0x18

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->origPtr:I

    .line 625
    invoke-direct/range {p0 .. p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->recvDecodingTables()V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    move-object/from16 v19, v0

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 629
    iget-object v0, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->ll8:[B

    move-object/from16 v20, v0

    .line 630
    iget-object v0, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->unzftab:[I

    move-object/from16 v21, v0

    .line 631
    iget-object v6, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->selector:[B

    .line 632
    iget-object v0, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->seqToUnseq:[B

    move-object/from16 v22, v0

    .line 633
    iget-object v0, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->getAndMoveToFrontDecode_yy:[C

    move-object/from16 v23, v0

    .line 634
    iget-object v0, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->minLens:[I

    move-object/from16 v24, v0

    .line 635
    iget-object v0, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->limit:[[I

    move-object/from16 v25, v0

    .line 636
    iget-object v0, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->base:[[I

    move-object/from16 v26, v0

    .line 637
    iget-object v0, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->perm:[[I

    move-object/from16 v27, v0

    .line 638
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->blockSize100k:I

    const v3, 0x186a0

    mul-int v28, v2, v3

    .line 646
    const/16 v2, 0x100

    :goto_46
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_51

    .line 647
    int-to-char v3, v2

    aput-char v3, v23, v2

    .line 648
    const/4 v3, 0x0

    aput v3, v21, v2

    goto :goto_46

    .line 651
    :cond_51
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->nInUse:I

    add-int/lit8 v29, v2, 0x1

    .line 654
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/tools/bzip2/CBZip2InputStream;->getAndMoveToFrontDecode0(I)I

    move-result v17

    .line 655
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    .line 656
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    .line 657
    const/4 v2, 0x0

    aget-byte v2, v6, v2

    and-int/lit16 v5, v2, 0xff

    .line 659
    aget-object v2, v26, v5

    .line 660
    aget-object v3, v25, v5

    .line 661
    aget-object v4, v27, v5

    .line 662
    aget v5, v24, v5

    const/16 v14, 0x31

    const/4 v7, 0x0

    const/4 v12, -0x1

    move-object/from16 v18, v6

    .line 664
    :goto_79
    move/from16 v0, v17

    move/from16 v1, v29

    if-eq v0, v1, :cond_1e2

    .line 665
    if-eqz v17, :cond_86

    const/4 v6, 0x1

    move/from16 v0, v17

    if-ne v0, v6, :cond_b5

    :cond_86
    const/4 v9, -0x1

    .line 668
    const/4 v10, 0x1

    move v15, v10

    move v6, v7

    move/from16 v16, v14

    move v8, v5

    .line 669
    :goto_8d
    if-nez v17, :cond_15c

    .line 670
    add-int v5, v9, v15

    move v14, v5

    .line 677
    :goto_92
    if-nez v16, :cond_167

    .line 678
    add-int/lit8 v5, v6, 0x1

    aget-byte v2, v18, v5

    and-int/lit16 v6, v2, 0xff

    .line 680
    aget-object v2, v26, v6

    .line 681
    aget-object v3, v25, v6

    .line 682
    aget-object v4, v27, v6

    .line 683
    aget v8, v24, v6

    const/16 v6, 0x31

    move v7, v6

    :goto_a5
    move v10, v13

    move v6, v11

    .line 692
    :goto_a7
    if-ge v6, v8, :cond_174

    .line 693
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 694
    if-ltz v9, :cond_16c

    .line 695
    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v9

    .line 696
    add-int/lit8 v6, v6, 0x8

    .line 700
    goto :goto_a7

    .line 732
    :cond_b5
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v28

    if-ge v12, v0, :cond_154

    .line 736
    add-int/lit8 v6, v17, -0x1

    aget-char v9, v23, v6

    .line 737
    aget-byte v6, v22, v9

    and-int/lit16 v6, v6, 0xff

    aget v8, v21, v6

    add-int/lit8 v8, v8, 0x1

    aput v8, v21, v6

    .line 738
    aget-byte v6, v22, v9

    aput-byte v6, v20, v12

    .line 745
    const/16 v6, 0x10

    move/from16 v0, v17

    if-gt v0, v6, :cond_df

    .line 746
    add-int/lit8 v6, v17, -0x1

    :goto_d5
    if-lez v6, :cond_ea

    .line 747
    add-int/lit8 v8, v6, -0x1

    aget-char v10, v23, v8

    aput-char v10, v23, v6

    move v6, v8

    goto :goto_d5

    .line 750
    :cond_df
    const/4 v6, 0x0

    const/4 v8, 0x1

    add-int/lit8 v10, v17, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v23

    invoke-static {v0, v6, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 753
    :cond_ea
    const/4 v6, 0x0

    aput-char v9, v23, v6

    .line 755
    if-nez v14, :cond_10e

    .line 756
    add-int/lit8 v7, v7, 0x1

    aget-byte v2, v18, v7

    and-int/lit16 v5, v2, 0xff

    .line 758
    aget-object v2, v26, v5

    .line 759
    aget-object v3, v25, v5

    .line 760
    aget-object v4, v27, v5

    .line 761
    aget v5, v24, v5

    const/16 v6, 0x31

    :goto_ff
    move v8, v13

    .line 770
    :goto_100
    if-ge v11, v5, :cond_119

    .line 771
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 772
    if-ltz v9, :cond_111

    .line 773
    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v9

    .line 774
    add-int/lit8 v11, v11, 0x8

    .line 778
    goto :goto_100

    .line 763
    :cond_10e
    add-int/lit8 v6, v14, -0x1

    goto :goto_ff

    .line 776
    :cond_111
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 779
    :cond_119
    sub-int v9, v11, v5

    shr-int v9, v8, v9

    const/4 v10, 0x1

    shl-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    and-int/2addr v9, v10

    .line 780
    sub-int/2addr v11, v5

    move v10, v5

    .line 782
    :goto_124
    aget v13, v3, v10

    if-le v9, v13, :cond_14b

    .line 783
    :goto_128
    const/4 v13, 0x1

    if-ge v11, v13, :cond_13f

    .line 785
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v13

    .line 786
    if-ltz v13, :cond_137

    .line 787
    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v13

    .line 788
    add-int/lit8 v11, v11, 0x8

    .line 792
    goto :goto_128

    .line 790
    :cond_137
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 793
    :cond_13f
    add-int/lit8 v11, v11, -0x1

    .line 794
    shl-int/lit8 v9, v9, 0x1

    shr-int v13, v8, v11

    and-int/lit8 v13, v13, 0x1

    or-int/2addr v9, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_124

    .line 796
    :cond_14b
    aget v10, v2, v10

    sub-int/2addr v9, v10

    aget v17, v4, v9

    move v14, v6

    move v13, v8

    .line 797
    goto/16 :goto_79

    .line 733
    :cond_154
    new-instance v2, Ljava/io/IOException;

    const-string v3, "block overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 671
    :cond_15c
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_1b5

    .line 672
    shl-int/lit8 v5, v15, 0x1

    add-int/2addr v5, v9

    move v14, v5

    goto/16 :goto_92

    .line 685
    :cond_167
    add-int/lit8 v7, v16, -0x1

    move v5, v6

    goto/16 :goto_a5

    .line 698
    :cond_16c
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 701
    :cond_174
    sub-int v11, v6, v8

    sub-int/2addr v6, v8

    shr-int v6, v10, v6

    const/4 v9, 0x1

    shl-int/2addr v9, v8

    add-int/lit8 v9, v9, -0x1

    and-int/2addr v9, v6

    move v6, v8

    .line 704
    :goto_17f
    aget v13, v3, v6

    if-le v9, v13, :cond_1a6

    .line 705
    add-int/lit8 v6, v6, 0x1

    .line 706
    :goto_185
    const/4 v13, 0x1

    if-ge v11, v13, :cond_19c

    .line 707
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v13

    .line 708
    if-ltz v13, :cond_194

    .line 709
    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v13

    .line 710
    add-int/lit8 v11, v11, 0x8

    .line 714
    goto :goto_185

    .line 712
    :cond_194
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 715
    :cond_19c
    add-int/lit8 v11, v11, -0x1

    .line 716
    shl-int/lit8 v9, v9, 0x1

    shr-int v13, v10, v11

    and-int/lit8 v13, v13, 0x1

    or-int/2addr v9, v13

    goto :goto_17f

    .line 718
    :cond_1a6
    aget v6, v2, v6

    sub-int v6, v9, v6

    aget v17, v4, v6

    .line 668
    shl-int/lit8 v15, v15, 0x1

    move v9, v14

    move v6, v5

    move/from16 v16, v7

    move v13, v10

    goto/16 :goto_8d

    .line 671
    :cond_1b5
    const/4 v5, 0x0

    aget-char v5, v23, v5

    aget-byte v14, v22, v5

    .line 722
    and-int/lit16 v5, v14, 0xff

    aget v7, v21, v5

    add-int/lit8 v10, v9, 0x1

    add-int/2addr v7, v10

    aput v7, v21, v5

    move v5, v9

    move v10, v12

    .line 724
    :goto_1c5
    if-ltz v5, :cond_1cf

    .line 725
    add-int/lit8 v7, v10, 0x1

    aput-byte v14, v20, v7

    add-int/lit8 v5, v5, -0x1

    move v10, v7

    goto :goto_1c5

    .line 728
    :cond_1cf
    move/from16 v0, v28

    if-ge v10, v0, :cond_1da

    move v5, v8

    move/from16 v14, v16

    move v12, v10

    move v7, v6

    .line 731
    goto/16 :goto_79

    .line 729
    :cond_1da
    new-instance v2, Ljava/io/IOException;

    const-string v3, "block overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 800
    :cond_1e2
    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->last:I

    .line 801
    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    .line 802
    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    .line 803
    return-void
.end method

.method private getAndMoveToFrontDecode0(I)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    iget-object v4, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    .line 808
    iget-object v5, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 809
    iget-object v0, v5, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->selector:[B

    aget-byte v0, v0, p1

    and-int/lit16 v6, v0, 0xff

    .line 810
    iget-object v0, v5, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->limit:[[I

    aget-object v7, v0, v6

    .line 811
    iget-object v0, v5, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->minLens:[I

    aget v0, v0, v6

    .line 812
    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v2

    .line 813
    iget v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    .line 814
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    .line 816
    :goto_1a
    aget v8, v7, v0

    if-le v2, v8, :cond_41

    .line 817
    add-int/lit8 v0, v0, 0x1

    .line 818
    :goto_20
    const/4 v8, 0x1

    if-ge v3, v8, :cond_37

    .line 819
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 821
    if-ltz v8, :cond_2f

    .line 822
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v8

    .line 823
    add-int/lit8 v3, v3, 0x8

    .line 827
    goto :goto_20

    .line 825
    :cond_2f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_37
    add-int/lit8 v3, v3, -0x1

    .line 829
    shl-int/lit8 v2, v2, 0x1

    shr-int v8, v1, v3

    and-int/lit8 v8, v8, 0x1

    or-int/2addr v2, v8

    goto :goto_1a

    .line 832
    :cond_41
    iput v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    .line 833
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsBuff:I

    .line 835
    iget-object v1, v5, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->perm:[[I

    aget-object v1, v1, v6

    iget-object v3, v5, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->base:[[I

    aget-object v3, v3, v6

    aget v0, v3, v0

    sub-int v0, v2, v0

    aget v0, v1, v0

    return v0
.end method

.method private static hbCreateDecodeTables([I[I[I[CIII)V
    .registers 13

    const/16 v3, 0x17

    const/4 v1, 0x0

    .line 476
    move v0, v1

    move v4, p4

    :goto_5
    if-gt v4, p5, :cond_19

    move v2, v1

    .line 477
    :goto_8
    if-ge v2, p6, :cond_15

    .line 478
    aget-char v5, p3, v2

    if-ne v5, v4, :cond_12

    .line 479
    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 477
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 476
    :cond_15
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_5

    :cond_19
    move v0, v3

    .line 484
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_23

    .line 485
    aput v1, p1, v0

    .line 486
    aput v1, p0, v0

    goto :goto_1a

    :cond_23
    move v0, v1

    .line 489
    :goto_24
    if-ge v0, p6, :cond_33

    .line 490
    aget-char v2, p3, v0

    add-int/lit8 v2, v2, 0x1

    aget v4, p1, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, p1, v2

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 493
    :cond_33
    const/4 v0, 0x1

    aget v2, p1, v1

    :goto_36
    if-ge v0, v3, :cond_40

    .line 494
    aget v4, p1, v0

    add-int/2addr v2, v4

    .line 495
    aput v2, p1, v0

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 498
    :cond_40
    aget v0, p1, p4

    move v2, v1

    move v3, p4

    :goto_44
    if-gt v3, p5, :cond_57

    .line 499
    add-int/lit8 v1, v3, 0x1

    aget v1, p1, v1

    .line 500
    sub-int v0, v1, v0

    add-int/2addr v0, v2

    .line 502
    add-int/lit8 v2, v0, -0x1

    aput v2, p0, v3

    .line 503
    shl-int/lit8 v2, v0, 0x1

    .line 498
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    goto :goto_44

    .line 506
    :cond_57
    add-int/lit8 v0, p4, 0x1

    :goto_59
    if-gt v0, p5, :cond_6b

    .line 507
    add-int/lit8 v1, v0, -0x1

    aget v1, p0, v1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    aget v2, p1, v0

    sub-int/2addr v1, v2

    aput v1, p1, v0

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 509
    :cond_6b
    return-void
.end method

.method private init(Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 264
    iget-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_7a

    .line 268
    const-string v0, "Garbage after a valid BZip2 stream"

    if-eqz p1, :cond_2b

    .line 269
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-eqz v2, :cond_23

    .line 283
    :cond_f
    iget-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 284
    const/16 v3, 0x68

    if-eq v2, v3, :cond_4a

    .line 285
    if-eqz p1, :cond_1d

    .line 286
    const-string v0, "Stream is not in the BZip2 format"

    .line 287
    :cond_1d
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Empty InputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_2b
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 274
    const/4 v3, -0x1

    if-ne v2, v3, :cond_34

    move v0, v1

    .line 301
    :goto_33
    return v0

    .line 277
    :cond_34
    iget-object v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 278
    const/16 v4, 0x42

    if-ne v2, v4, :cond_42

    const/16 v2, 0x5a

    if-eq v3, v2, :cond_f

    .line 279
    :cond_42
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Garbage after a valid BZip2 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_4a
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 291
    const/16 v2, 0x31

    if-lt v0, v2, :cond_62

    const/16 v2, 0x39

    if-gt v0, v2, :cond_62

    .line 296
    add-int/lit8 v0, v0, -0x30

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->blockSize100k:I

    .line 298
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsLive:I

    .line 299
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    .line 301
    const/4 v0, 0x1

    goto :goto_33

    .line 292
    :cond_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream is not BZip2 formatted: illegal blocksize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_7a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No InputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initBlock()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x59

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 314
    :cond_4
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetUByte()C

    move-result v2

    .line 315
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetUByte()C

    move-result v3

    .line 316
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetUByte()C

    move-result v4

    .line 317
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetUByte()C

    move-result v5

    .line 318
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetUByte()C

    move-result v6

    .line 319
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetUByte()C

    move-result v7

    .line 322
    const/16 v8, 0x17

    if-ne v2, v8, :cond_34

    const/16 v8, 0x72

    if-ne v3, v8, :cond_34

    const/16 v8, 0x45

    if-ne v4, v8, :cond_34

    const/16 v8, 0x38

    if-ne v5, v8, :cond_34

    const/16 v8, 0x50

    if-ne v6, v8, :cond_34

    const/16 v8, 0x90

    if-eq v7, v8, :cond_6f

    .line 335
    :cond_34
    const/16 v8, 0x31

    if-ne v2, v8, :cond_76

    const/16 v2, 0x41

    if-ne v3, v2, :cond_76

    if-ne v4, v9, :cond_76

    const/16 v2, 0x26

    if-ne v5, v2, :cond_76

    const/16 v2, 0x53

    if-ne v6, v2, :cond_76

    if-ne v7, v9, :cond_76

    .line 345
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetInt()I

    move-result v2

    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->storedBlockCRC:I

    .line 346
    invoke-direct {p0, v1}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v2

    if-ne v2, v1, :cond_55

    move v0, v1

    :cond_55
    iput-boolean v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->blockRandomised:Z

    .line 352
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    if-nez v0, :cond_64

    .line 353
    new-instance v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->blockSize100k:I

    invoke-direct {v0, v2}, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 357
    :cond_64
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->getAndMoveToFrontDecode()V

    .line 359
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/tools/bzip2/CRC;->initialiseCRC()V

    .line 360
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 362
    :goto_6e
    return-void

    .line 330
    :cond_6f
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->complete()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_6e

    .line 342
    :cond_76
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 343
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad block header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeMaps()V
    .registers 6

    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v3, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->inUse:[Z

    .line 211
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v4, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->seqToUnseq:[B

    move v0, v1

    move v2, v1

    .line 215
    :goto_b
    const/16 v1, 0x100

    if-ge v2, v1, :cond_1c

    .line 216
    aget-boolean v1, v3, v2

    if-eqz v1, :cond_18

    .line 217
    int-to-byte v1, v2

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    .line 215
    :cond_18
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_b

    .line 221
    :cond_1c
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->nInUse:I

    .line 222
    return-void
.end method

.method private read0()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentChar:I

    .line 227
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    packed-switch v1, :pswitch_data_32

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 253
    :pswitch_d  #0x7
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupNoRandPartC()V

    .line 239
    :goto_10
    return v0

    .line 249
    :pswitch_11  #0x6
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupNoRandPartB()V

    goto :goto_10

    .line 246
    :pswitch_15  #0x5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 242
    :pswitch_1b  #0x4
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupRandPartC()V

    goto :goto_10

    .line 238
    :pswitch_1f  #0x3
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupRandPartB()V

    goto :goto_10

    .line 235
    :pswitch_23  #0x2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 232
    :pswitch_29  #0x1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 229
    :pswitch_2f  #0x0
    const/4 v0, -0x1

    goto :goto_10

    .line 227
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2f  #00000000
        :pswitch_29  #00000001
        :pswitch_23  #00000002
        :pswitch_1f  #00000003
        :pswitch_1b  #00000004
        :pswitch_15  #00000005
        :pswitch_11  #00000006
        :pswitch_d  #00000007
    .end packed-switch
.end method

.method private recvDecodingTables()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0x10

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 512
    iget-object v5, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 513
    iget-object v6, v5, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->inUse:[Z

    .line 514
    iget-object v7, v5, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->recvDecodingTables_pos:[B

    .line 515
    iget-object v8, v5, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->selector:[B

    .line 516
    iget-object v9, v5, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->selectorMtf:[B

    move v2, v1

    move v0, v1

    .line 521
    :goto_10
    if-ge v2, v11, :cond_1e

    .line 522
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetBit()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 523
    shl-int v4, v3, v2

    or-int/2addr v0, v4

    .line 521
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 527
    :cond_1e
    const/16 v2, 0x100

    :goto_20
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_27

    .line 528
    aput-boolean v1, v6, v2

    goto :goto_20

    :cond_27
    move v4, v1

    .line 531
    :goto_28
    if-ge v4, v11, :cond_44

    .line 532
    shl-int v2, v3, v4

    and-int/2addr v2, v0

    if-eqz v2, :cond_40

    move v2, v1

    .line 533
    :goto_30
    if-ge v2, v11, :cond_40

    .line 535
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetBit()Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 536
    shl-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v2

    aput-boolean v3, v6, v10

    .line 534
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 531
    :cond_40
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_28

    .line 542
    :cond_44
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->makeMaps()V

    .line 543
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->nInUse:I

    add-int/lit8 v10, v0, 0x2

    .line 546
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v6

    .line 547
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v4

    move v2, v1

    .line 549
    :goto_57
    if-ge v2, v4, :cond_6a

    move v0, v1

    .line 551
    :goto_5a
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetBit()Z

    move-result v11

    if-eqz v11, :cond_63

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 554
    :cond_63
    int-to-byte v0, v0

    aput-byte v0, v9, v2

    .line 549
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_57

    :cond_6a
    move v0, v6

    .line 558
    :goto_6b
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_73

    .line 559
    int-to-byte v2, v0

    aput-byte v2, v7, v0

    goto :goto_6b

    :cond_73
    move v2, v1

    .line 562
    :goto_74
    if-ge v2, v4, :cond_8f

    .line 563
    aget-byte v0, v9, v2

    and-int/lit16 v0, v0, 0xff

    .line 564
    aget-byte v11, v7, v0

    .line 565
    :goto_7c
    if-lez v0, :cond_87

    .line 567
    add-int/lit8 v12, v0, -0x1

    aget-byte v12, v7, v12

    aput-byte v12, v7, v0

    .line 568
    add-int/lit8 v0, v0, -0x1

    goto :goto_7c

    .line 570
    :cond_87
    aput-byte v11, v7, v1

    .line 571
    aput-byte v11, v8, v2

    .line 562
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_74

    .line 574
    :cond_8f
    iget-object v7, v5, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->temp_charArray2d:[[C

    move v4, v1

    .line 577
    :goto_92
    if-ge v4, v6, :cond_ba

    .line 578
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v0

    .line 579
    aget-object v8, v7, v4

    move v5, v1

    .line 580
    :goto_9c
    if-ge v5, v10, :cond_b6

    .line 581
    :goto_9e
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetBit()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 582
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->bsGetBit()Z

    move-result v2

    if-eqz v2, :cond_ad

    const/4 v2, -0x1

    :goto_ab
    add-int/2addr v0, v2

    goto :goto_9e

    :cond_ad
    move v2, v3

    goto :goto_ab

    .line 584
    :cond_af
    int-to-char v2, v0

    aput-char v2, v8, v5

    .line 580
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_9c

    .line 577
    :cond_b6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_92

    .line 589
    :cond_ba
    invoke-direct {p0, v10, v6}, Lorg/apache/tools/bzip2/CBZip2InputStream;->createHuffmanDecodingTables(II)V

    .line 590
    return-void
.end method

.method private static reportCRCError()V
    .registers 2

    .line 1056
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "BZip2 CRC error"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1057
    return-void
.end method

.method private setupBlock()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v9, 0x100

    const/4 v1, 0x0

    .line 839
    iget-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    if-nez v2, :cond_9

    .line 874
    :goto_8
    return-void

    .line 843
    :cond_9
    iget-object v3, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->cftab:[I

    .line 844
    iget-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget v4, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->last:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->initTT(I)[I

    move-result-object v4

    .line 845
    iget-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v5, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->ll8:[B

    .line 846
    aput v1, v3, v1

    .line 847
    iget-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v2, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->unzftab:[I

    invoke-static {v2, v1, v3, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    aget v2, v3, v1

    :goto_24
    if-gt v0, v9, :cond_2e

    .line 850
    aget v6, v3, v0

    add-int/2addr v2, v6

    .line 851
    aput v2, v3, v0

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 854
    :cond_2e
    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->last:I

    move v0, v1

    :goto_31
    if-gt v0, v2, :cond_42

    .line 855
    aget-byte v6, v5, v0

    and-int/lit16 v6, v6, 0xff

    aget v7, v3, v6

    add-int/lit8 v8, v7, 0x1

    aput v8, v3, v6

    aput v0, v4, v7

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 858
    :cond_42
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->origPtr:I

    if-ltz v0, :cond_63

    array-length v2, v4

    if-ge v0, v2, :cond_63

    .line 862
    aget v0, v4, v0

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    .line 863
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    .line 864
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    .line 865
    iput v9, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    .line 867
    iget-boolean v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->blockRandomised:Z

    if-eqz v0, :cond_5f

    .line 868
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    .line 869
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rTPos:I

    .line 870
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupRandPartA()V

    goto :goto_8

    .line 872
    :cond_5f
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupNoRandPartA()V

    goto :goto_8

    .line 859
    :cond_63
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream corrupted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setupNoRandPartA()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->last:I

    if-gt v0, v1, :cond_31

    .line 903
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_chPrev:I

    .line 904
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 905
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    .line 906
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v1, v1, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    .line 907
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    .line 908
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentChar:I

    .line 909
    const/4 v1, 0x6

    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 910
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/tools/bzip2/CRC;->updateCRC(I)V

    .line 917
    :goto_30
    return-void

    .line 912
    :cond_31
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 913
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->endBlock()V

    .line 914
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->initBlock()V

    .line 915
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupBlock()V

    goto :goto_30
.end method

.method private setupNoRandPartB()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 961
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_chPrev:I

    if-eq v0, v1, :cond_d

    .line 962
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    .line 963
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupNoRandPartA()V

    .line 972
    :goto_c
    return-void

    .line 964
    :cond_d
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_34

    .line 965
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_z:C

    .line 966
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->tt:[I

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    .line 967
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    .line 968
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupNoRandPartC()V

    goto :goto_c

    .line 970
    :cond_34
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupNoRandPartA()V

    goto :goto_c
.end method

.method private setupNoRandPartC()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 975
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_z:C

    if-ge v0, v1, :cond_19

    .line 976
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    .line 977
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentChar:I

    .line 978
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/tools/bzip2/CRC;->updateCRC(I)V

    .line 979
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    .line 980
    const/4 v0, 0x7

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 986
    :goto_18
    return-void

    .line 982
    :cond_19
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    .line 983
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    .line 984
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupNoRandPartA()V

    goto :goto_18
.end method

.method private setupRandPartA()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 877
    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    iget v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->last:I

    if-gt v2, v3, :cond_55

    .line 878
    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_chPrev:I

    .line 879
    iget-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v2, v2, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->ll8:[B

    iget v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget-byte v2, v2, v3

    .line 880
    iget-object v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v3, v3, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->tt:[I

    iget v4, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget v3, v3, v4

    iput v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    .line 881
    iget v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    if-nez v3, :cond_50

    .line 882
    sget-object v3, Lorg/apache/tools/bzip2/BZip2Constants;->rNums:[I

    iget v4, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rTPos:I

    aget v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    .line 883
    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rTPos:I

    const/16 v4, 0x200

    if-ne v3, v4, :cond_36

    .line 884
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rTPos:I

    .line 889
    :cond_36
    :goto_36
    iget v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    if-ne v3, v0, :cond_5f

    :goto_3a
    and-int/lit16 v1, v2, 0xff

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    .line 890
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    .line 891
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentChar:I

    .line 892
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 893
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/tools/bzip2/CRC;->updateCRC(I)V

    .line 899
    :goto_4f
    return-void

    .line 887
    :cond_50
    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    goto :goto_36

    .line 895
    :cond_55
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->endBlock()V

    .line 896
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->initBlock()V

    .line 897
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupBlock()V

    goto :goto_4f

    :cond_5f
    move v0, v1

    goto :goto_3a
.end method

.method private setupRandPartB()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 920
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_chPrev:I

    if-eq v0, v1, :cond_12

    .line 921
    iput v4, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 922
    iput v3, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    .line 923
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupRandPartA()V

    .line 945
    :goto_11
    return-void

    .line 924
    :cond_12
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    if-lt v0, v5, :cond_61

    .line 925
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_z:C

    .line 926
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    iget-object v0, v0, Lorg/apache/tools/bzip2/CBZip2InputStream$Data;->tt:[I

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_tPos:I

    .line 927
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    if-nez v0, :cond_5c

    .line 928
    sget-object v0, Lorg/apache/tools/bzip2/BZip2Constants;->rNums:[I

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rTPos:I

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    .line 929
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rTPos:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_49

    .line 930
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rTPos:I

    .line 935
    :cond_49
    :goto_49
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    .line 936
    iput v5, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 937
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    if-ne v0, v3, :cond_58

    .line 938
    iget-char v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_z:C

    xor-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_z:C

    .line 940
    :cond_58
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupRandPartC()V

    goto :goto_11

    .line 933
    :cond_5c
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_rNToGo:I

    goto :goto_49

    .line 942
    :cond_61
    iput v4, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 943
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupRandPartA()V

    goto :goto_11
.end method

.method private setupRandPartC()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 948
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_z:C

    if-ge v0, v1, :cond_16

    .line 949
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentChar:I

    .line 950
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/tools/bzip2/CRC;->updateCRC(I)V

    .line 951
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_j2:I

    .line 958
    :goto_15
    return-void

    .line 953
    :cond_16
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->currentState:I

    .line 954
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_i2:I

    .line 955
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->su_count:I

    .line 956
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->setupRandPartA()V

    goto :goto_15
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 401
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    .line 402
    if-eqz v0, :cond_10

    .line 404
    :try_start_5
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_c

    .line 405
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_11

    .line 408
    :cond_c
    iput-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 409
    iput-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    .line 412
    :cond_10
    return-void

    .line 408
    :catchall_11
    move-exception v0

    iput-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->data:Lorg/apache/tools/bzip2/CBZip2InputStream$Data;

    .line 409
    iput-object v2, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    .line 410
    throw v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 171
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->read0()I

    move-result v0

    return v0

    .line 173
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    if-ltz p2, :cond_75

    .line 188
    if-ltz p3, :cond_59

    .line 191
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2c

    .line 196
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2InputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_24

    move v0, p2

    .line 202
    :goto_e
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1e

    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->read0()I

    move-result v1

    if-ltz v1, :cond_1e

    .line 203
    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 206
    :cond_1e
    if-ne v0, p2, :cond_22

    const/4 v0, -0x1

    :goto_21
    return v0

    :cond_22
    sub-int/2addr v0, p2

    goto :goto_21

    .line 197
    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offs("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") + len("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") > dest.length("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "len("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") < 0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offs("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") < 0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
