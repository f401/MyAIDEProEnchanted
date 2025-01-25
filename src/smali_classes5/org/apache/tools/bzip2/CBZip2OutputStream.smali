.class public Lorg/apache/tools/bzip2/CBZip2OutputStream;
.super Ljava/io/OutputStream;
.source "CBZip2OutputStream.java"

# interfaces
.implements Lorg/apache/tools/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;
    }
.end annotation


# static fields
.field protected static final CLEARMASK:I = -0x200001

.field protected static final DEPTH_THRESH:I = 0xa

.field protected static final GREATER_ICOST:I = 0xf

.field private static final INCS:[I

.field protected static final LESSER_ICOST:I = 0x0

.field public static final MAX_BLOCKSIZE:I = 0x9

.field public static final MIN_BLOCKSIZE:I = 0x1

.field protected static final QSORT_STACK_SIZE:I = 0x3e8

.field protected static final SETMASK:I = 0x200000

.field protected static final SMALL_THRESH:I = 0x14

.field protected static final WORK_FACTOR:I = 0x1e


# instance fields
.field private final allowableBlockSize:I

.field private blockCRC:I

.field private final blockSize100k:I

.field private blockSorter:Lorg/apache/tools/bzip2/BlockSort;

.field private bsBuff:I

.field private bsLive:I

.field private combinedCRC:I

.field private final crc:Lorg/apache/tools/bzip2/CRC;

.field private currentChar:I

.field private data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

.field private last:I

.field private nInUse:I

.field private nMTF:I

.field private out:Ljava/io/OutputStream;

.field private runLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 207
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->INCS:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x4
        0xd
        0x28
        0x79
        0x16c
        0x445
        0xcd0
        0x2671
        0x7354
        0x159fd
        0x40df8
        0xc29e9
        0x247dbc
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 597
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 541
    new-instance v0, Lorg/apache/tools/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/tools/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    .line 547
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->currentChar:I

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    .line 628
    const/4 v0, 0x1

    if-lt p2, v0, :cond_43

    .line 632
    const/16 v0, 0x9

    if-gt p2, v0, :cond_27

    .line 637
    iput p2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSize100k:I

    .line 638
    iput-object p1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 641
    const v0, 0x186a0

    mul-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->allowableBlockSize:I

    .line 642
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->init()V

    .line 643
    return-void

    .line 633
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") > 9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") < 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blockSort()V
    .registers 4

    .line 1403
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSorter:Lorg/apache/tools/bzip2/BlockSort;

    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/bzip2/BlockSort;->blockSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;I)V

    .line 1404
    return-void
.end method

.method private bsFinishedWithStream()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 922
    :goto_0
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    if-lez v0, :cond_1a

    .line 923
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 924
    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    shr-int/lit8 v0, v0, 0x18

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 925
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 926
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    goto :goto_0

    .line 928
    :cond_1a
    return-void
.end method

.method private bsPutInt(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x8

    .line 950
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 951
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 952
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 953
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 954
    return-void
.end method

.method private bsPutUByte(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 946
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 947
    return-void
.end method

.method private bsW(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    iget-object v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 932
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 933
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 935
    :goto_6
    const/16 v3, 0x8

    if-lt v1, v3, :cond_14

    .line 936
    shr-int/lit8 v3, v0, 0x18

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 937
    shl-int/lit8 v0, v0, 0x8

    .line 938
    add-int/lit8 v1, v1, -0x8

    goto :goto_6

    .line 941
    :cond_14
    rsub-int/lit8 v2, v1, 0x20

    sub-int/2addr v2, p1

    shl-int v2, p2, v2

    or-int/2addr v0, v2

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 942
    add-int v0, v1, p1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 943
    return-void
.end method

.method public static chooseBlockSize(J)I
    .registers 6

    .line 574
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_16

    const-wide/32 v0, 0x203a0

    div-long v0, p0, v0

    .line 575
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x9

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 574
    :goto_15
    return v0

    .line 575
    :cond_16
    const/16 v0, 0x9

    goto :goto_15
.end method

.method private endBlock()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x59

    .line 791
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/tools/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockCRC:I

    .line 792
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->combinedCRC:I

    ushr-int/lit8 v2, v1, 0x1f

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->combinedCRC:I

    .line 793
    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->combinedCRC:I

    .line 796
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 829
    :goto_1b
    return-void

    .line 801
    :cond_1c
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSort()V

    .line 814
    const/16 v0, 0x31

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 815
    const/16 v0, 0x41

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 816
    invoke-direct {p0, v3}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 817
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 818
    const/16 v0, 0x53

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 819
    invoke-direct {p0, v3}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 822
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockCRC:I

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutInt(I)V

    .line 825
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 828
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->moveToFrontCodeAndSend()V

    goto :goto_1b
.end method

.method private endCompression()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 839
    const/16 v0, 0x72

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 840
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 841
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 842
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 843
    const/16 v0, 0x90

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 845
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->combinedCRC:I

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutInt(I)V

    .line 846
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsFinishedWithStream()V

    .line 847
    return-void
.end method

.method private generateMTFValues()V
    .registers 16

    .line 1414
    iget v7, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    .line 1415
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 1416
    iget-object v2, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->inUse:[Z

    .line 1417
    iget-object v8, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    .line 1418
    iget-object v9, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    .line 1419
    iget-object v10, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sfmap:[C

    .line 1420
    iget-object v11, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->mtfFreq:[I

    .line 1421
    iget-object v12, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->unseqToSeq:[B

    .line 1422
    iget-object v13, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->generateMTFValues_yy:[B

    .line 1425
    const/4 v0, 0x0

    .line 1426
    const/4 v1, 0x0

    :goto_14
    const/16 v3, 0x100

    if-ge v1, v3, :cond_24

    .line 1427
    aget-boolean v3, v2, v1

    if-eqz v3, :cond_21

    .line 1428
    int-to-byte v3, v0

    aput-byte v3, v12, v1

    .line 1429
    add-int/lit8 v0, v0, 0x1

    .line 1426
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1432
    :cond_24
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nInUse:I

    .line 1434
    add-int/lit8 v6, v0, 0x1

    move v1, v6

    .line 1436
    :goto_29
    if-ltz v1, :cond_31

    .line 1437
    const/4 v2, 0x0

    aput v2, v11, v1

    .line 1436
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 1440
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_39

    .line 1441
    int-to-byte v1, v0

    aput-byte v1, v13, v0

    goto :goto_31

    .line 1444
    :cond_39
    const/4 v1, 0x0

    .line 1445
    const/4 v0, 0x0

    .line 1447
    const/4 v2, 0x0

    move v5, v2

    :goto_3d
    if-gt v5, v7, :cond_9c

    .line 1448
    aget v2, v9, v5

    aget-byte v2, v8, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v14, v12, v2

    .line 1449
    const/4 v2, 0x0

    aget-byte v3, v13, v2

    .line 1450
    const/4 v2, 0x0

    .line 1452
    :goto_4b
    if-eq v14, v3, :cond_55

    .line 1453
    add-int/lit8 v2, v2, 0x1

    .line 1454
    aget-byte v4, v13, v2

    .line 1456
    aput-byte v3, v13, v2

    move v3, v4

    .line 1457
    goto :goto_4b

    .line 1458
    :cond_55
    const/4 v4, 0x0

    aput-byte v3, v13, v4

    .line 1460
    if-nez v2, :cond_60

    .line 1461
    add-int/lit8 v0, v0, 0x1

    .line 1447
    :goto_5c
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3d

    .line 1463
    :cond_60
    if-lez v0, :cond_8c

    .line 1464
    add-int/lit8 v0, v0, -0x1

    .line 1466
    :goto_64
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_7d

    .line 1467
    const/4 v3, 0x0

    aput-char v3, v10, v1

    .line 1468
    add-int/lit8 v1, v1, 0x1

    .line 1469
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v11, v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v11, v3

    .line 1476
    :goto_75
    const/4 v3, 0x2

    if-lt v0, v3, :cond_8b

    .line 1477
    add-int/lit8 v0, v0, -0x2

    shr-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 1471
    :cond_7d
    const/4 v3, 0x1

    aput-char v3, v10, v1

    .line 1472
    add-int/lit8 v1, v1, 0x1

    .line 1473
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget v4, v11, v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v11, v3

    goto :goto_75

    .line 1482
    :cond_8b
    const/4 v0, 0x0

    .line 1463
    :cond_8c
    add-int/lit8 v3, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v10, v1

    .line 1485
    add-int/lit8 v1, v1, 0x1

    .line 1486
    add-int/lit8 v2, v2, 0x1

    aget v3, v11, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v11, v2

    goto :goto_5c

    .line 1490
    :cond_9c
    if-lez v0, :cond_c7

    .line 1491
    add-int/lit8 v0, v0, -0x1

    .line 1493
    :goto_a0
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_b9

    .line 1494
    const/4 v2, 0x0

    aput-char v2, v10, v1

    .line 1495
    add-int/lit8 v1, v1, 0x1

    .line 1496
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v11, v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v11, v2

    .line 1503
    :goto_b1
    const/4 v2, 0x2

    if-lt v0, v2, :cond_c7

    .line 1504
    add-int/lit8 v0, v0, -0x2

    shr-int/lit8 v0, v0, 0x1

    goto :goto_a0

    .line 1498
    :cond_b9
    const/4 v2, 0x1

    aput-char v2, v10, v1

    .line 1499
    add-int/lit8 v1, v1, 0x1

    .line 1500
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v11, v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v11, v2

    goto :goto_b1

    .line 1511
    :cond_c7
    int-to-char v0, v6

    aput-char v0, v10, v1

    .line 1512
    aget v0, v11, v6

    add-int/lit8 v0, v0, 0x1

    aput v0, v11, v6

    .line 1513
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nMTF:I

    .line 1514
    return-void
.end method

.method private static hbAssignCodes([I[BIII)V
    .registers 9

    const/4 v2, 0x0

    .line 909
    move v0, v2

    .line 910
    :goto_2
    if-gt p2, p3, :cond_19

    move v1, v2

    .line 911
    :goto_5
    if-ge v1, p4, :cond_14

    .line 912
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    if-ne v3, p2, :cond_11

    .line 913
    aput v0, p0, v1

    .line 914
    add-int/lit8 v0, v0, 0x1

    .line 911
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 917
    :cond_14
    shl-int/lit8 v0, v0, 0x1

    .line 910
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 919
    :cond_19
    return-void
.end method

.method private static hbMakeCodeLengths([B[ILorg/apache/tools/bzip2/CBZip2OutputStream$Data;II)V
    .registers 19

    .line 384
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->heap:[I

    .line 385
    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->weight:[I

    .line 386
    move-object/from16 v0, p2

    iget-object v7, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->parent:[I

    move/from16 v1, p3

    .line 388
    :goto_e
    add-int/lit8 v2, v1, -0x1

    const/4 v1, 0x1

    if-ltz v2, :cond_22

    .line 389
    aget v3, p1, v2

    if-nez v3, :cond_1f

    :goto_17
    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v1, v1, 0x8

    aput v1, v6, v3

    move v1, v2

    goto :goto_e

    :cond_1f
    aget v1, p1, v2

    goto :goto_17

    .line 392
    :cond_22
    const/4 v4, 0x1

    :cond_23
    if-eqz v4, :cond_135

    .line 393
    const/4 v4, 0x0

    .line 396
    const/4 v2, 0x0

    .line 397
    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v5, v1

    .line 398
    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v6, v1

    .line 399
    const/4 v1, 0x0

    const/4 v3, -0x2

    aput v3, v7, v1

    .line 401
    const/4 v1, 0x1

    move v3, v1

    :goto_35
    move/from16 v0, p3

    if-gt v3, v0, :cond_138

    .line 402
    const/4 v1, -0x1

    aput v1, v7, v3

    .line 403
    add-int/lit8 v2, v2, 0x1

    .line 404
    aput v3, v5, v2

    .line 407
    aget v8, v5, v2

    move v1, v2

    .line 408
    :goto_43
    aget v9, v6, v8

    shr-int/lit8 v10, v1, 0x1

    aget v10, v5, v10

    aget v10, v6, v10

    if-ge v9, v10, :cond_56

    .line 409
    shr-int/lit8 v9, v1, 0x1

    aget v9, v5, v9

    aput v9, v5, v1

    .line 410
    shr-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 412
    :cond_56
    aput v8, v5, v1

    .line 401
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_35

    .line 499
    :cond_5c
    aput v8, v5, v1

    .line 415
    :goto_5e
    const/4 v1, 0x1

    if-le v2, v1, :cond_103

    .line 416
    const/4 v1, 0x1

    aget v8, v5, v1

    .line 417
    const/4 v1, 0x1

    aget v9, v5, v2

    aput v9, v5, v1

    .line 418
    add-int/lit8 v9, v2, -0x1

    .line 420
    const/4 v1, 0x1

    .line 422
    const/4 v2, 0x1

    aget v10, v5, v2

    move v2, v1

    .line 425
    :goto_70
    shl-int/lit8 v1, v2, 0x1

    .line 427
    if-le v1, v9, :cond_c4

    .line 437
    :cond_74
    aput v10, v5, v2

    .line 446
    const/4 v1, 0x1

    aget v10, v5, v1

    .line 447
    const/4 v1, 0x1

    aget v2, v5, v9

    aput v2, v5, v1

    .line 448
    add-int/lit8 v9, v9, -0x1

    .line 450
    const/4 v1, 0x1

    .line 452
    const/4 v2, 0x1

    aget v11, v5, v2

    move v2, v1

    .line 455
    :goto_85
    shl-int/lit8 v1, v2, 0x1

    .line 457
    if-le v1, v9, :cond_e2

    .line 467
    :cond_89
    aput v11, v5, v2

    .line 475
    add-int/lit8 v3, v3, 0x1

    .line 476
    aput v3, v7, v10

    aput v3, v7, v8

    .line 478
    aget v2, v6, v8

    .line 479
    aget v8, v6, v10

    .line 480
    and-int/lit16 v1, v2, 0xff

    and-int/lit16 v10, v8, 0xff

    if-le v1, v10, :cond_100

    .line 484
    and-int/lit16 v1, v2, 0xff

    .line 485
    :goto_9d
    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v2, v2, -0x100

    and-int/lit16 v8, v8, -0x100

    add-int/2addr v2, v8

    or-int/2addr v1, v2

    aput v1, v6, v3

    .line 487
    const/4 v1, -0x1

    aput v1, v7, v3

    .line 488
    add-int/lit8 v2, v9, 0x1

    .line 489
    aput v3, v5, v2

    .line 493
    aget v8, v5, v2

    .line 494
    aget v9, v6, v8

    move v1, v2

    .line 495
    :goto_b3
    shr-int/lit8 v10, v1, 0x1

    aget v10, v5, v10

    aget v10, v6, v10

    if-ge v9, v10, :cond_5c

    .line 496
    shr-int/lit8 v10, v1, 0x1

    aget v10, v5, v10

    aput v10, v5, v1

    .line 497
    shr-int/lit8 v1, v1, 0x1

    goto :goto_b3

    .line 431
    :cond_c4
    if-ge v1, v9, :cond_d4

    add-int/lit8 v11, v1, 0x1

    aget v11, v5, v11

    aget v11, v6, v11

    aget v12, v5, v1

    aget v12, v6, v12

    if-ge v11, v12, :cond_d4

    .line 433
    add-int/lit8 v1, v1, 0x1

    .line 436
    :cond_d4
    aget v11, v6, v10

    aget v12, v5, v1

    aget v12, v6, v12

    if-lt v11, v12, :cond_74

    .line 440
    aget v11, v5, v1

    aput v11, v5, v2

    move v2, v1

    .line 441
    goto :goto_70

    .line 461
    :cond_e2
    if-ge v1, v9, :cond_f2

    add-int/lit8 v12, v1, 0x1

    aget v12, v5, v12

    aget v12, v6, v12

    aget v13, v5, v1

    aget v13, v6, v13

    if-ge v12, v13, :cond_f2

    .line 463
    add-int/lit8 v1, v1, 0x1

    .line 466
    :cond_f2
    aget v12, v6, v11

    aget v13, v5, v1

    aget v13, v6, v13

    if-lt v12, v13, :cond_89

    .line 470
    aget v12, v5, v1

    aput v12, v5, v2

    move v2, v1

    .line 471
    goto :goto_85

    .line 485
    :cond_100
    and-int/lit16 v1, v8, 0xff

    goto :goto_9d

    .line 503
    :cond_103
    const/4 v2, 0x1

    :goto_104
    move/from16 v0, p3

    if-gt v2, v0, :cond_11f

    .line 504
    const/4 v3, 0x0

    move v1, v2

    .line 507
    :goto_10a
    aget v1, v7, v1

    if-ltz v1, :cond_111

    .line 508
    add-int/lit8 v3, v3, 0x1

    goto :goto_10a

    .line 512
    :cond_111
    add-int/lit8 v1, v2, -0x1

    int-to-byte v8, v3

    aput-byte v8, p0, v1

    .line 513
    move/from16 v0, p4

    if-le v3, v0, :cond_136

    .line 514
    const/4 v1, 0x1

    .line 503
    :goto_11b
    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_104

    .line 518
    :cond_11f
    if-eqz v4, :cond_23

    .line 519
    const/4 v1, 0x1

    :goto_122
    move/from16 v0, p3

    if-ge v1, v0, :cond_23

    .line 520
    aget v2, v6, v1

    .line 521
    shr-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x8

    aput v2, v6, v1

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_122

    .line 392
    :cond_135
    return-void

    :cond_136
    move v1, v4

    goto :goto_11b

    :cond_138
    move/from16 v3, p3

    goto/16 :goto_5e
.end method

.method protected static hbMakeCodeLengths([C[III)V
    .registers 18

    .line 227
    const/16 v1, 0x204

    new-array v7, v1, [I

    .line 228
    const/16 v1, 0x204

    new-array v8, v1, [I

    .line 229
    const/16 v1, 0x204

    new-array v9, v1, [I

    move/from16 v1, p2

    .line 231
    :goto_e
    const/4 v3, -0x1

    add-int/lit8 v2, v1, -0x1

    const/4 v1, 0x1

    if-ltz v2, :cond_23

    .line 232
    aget v3, p1, v2

    if-nez v3, :cond_20

    :goto_18
    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v1, v1, 0x8

    aput v1, v8, v3

    move v1, v2

    goto :goto_e

    :cond_20
    aget v1, p1, v2

    goto :goto_18

    .line 235
    :cond_23
    const/4 v4, 0x1

    :goto_24
    if-eqz v4, :cond_13a

    .line 236
    const/4 v4, 0x0

    .line 239
    const/4 v2, 0x0

    .line 240
    const/4 v1, 0x0

    const/4 v5, 0x0

    aput v5, v7, v1

    .line 241
    const/4 v1, 0x0

    const/4 v5, 0x0

    aput v5, v8, v1

    .line 242
    const/4 v1, 0x0

    const/4 v5, -0x2

    aput v5, v9, v1

    .line 244
    const/4 v1, 0x1

    move v5, v1

    :goto_36
    move/from16 v0, p2

    if-gt v5, v0, :cond_13d

    .line 245
    aput v3, v9, v5

    .line 246
    add-int/lit8 v2, v2, 0x1

    .line 247
    aput v5, v7, v2

    .line 250
    aget v6, v7, v2

    move v1, v2

    .line 251
    :goto_43
    aget v10, v8, v6

    shr-int/lit8 v11, v1, 0x1

    aget v11, v7, v11

    aget v11, v8, v11

    if-ge v10, v11, :cond_56

    .line 252
    shr-int/lit8 v10, v1, 0x1

    aget v10, v7, v10

    aput v10, v7, v1

    .line 253
    shr-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 255
    :cond_56
    aput v6, v7, v1

    .line 244
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_36

    .line 346
    :cond_5c
    aput v5, v7, v1

    move v5, v3

    .line 260
    :goto_5f
    const/4 v1, 0x1

    if-le v2, v1, :cond_105

    .line 261
    const/4 v1, 0x1

    aget v3, v7, v1

    .line 262
    const/4 v1, 0x1

    aget v5, v7, v2

    aput v5, v7, v1

    .line 263
    add-int/lit8 v5, v2, -0x1

    .line 265
    const/4 v1, 0x1

    .line 267
    const/4 v2, 0x1

    aget v10, v7, v2

    move v2, v1

    .line 270
    :goto_71
    shl-int/lit8 v1, v2, 0x1

    .line 272
    if-le v1, v5, :cond_c6

    .line 282
    :cond_75
    aput v10, v7, v2

    .line 291
    const/4 v1, 0x1

    aget v10, v7, v1

    .line 292
    const/4 v1, 0x1

    aget v2, v7, v5

    aput v2, v7, v1

    .line 293
    add-int/lit8 v5, v5, -0x1

    .line 295
    const/4 v1, 0x1

    .line 297
    const/4 v2, 0x1

    aget v11, v7, v2

    move v2, v1

    .line 300
    :goto_86
    shl-int/lit8 v1, v2, 0x1

    .line 302
    if-le v1, v5, :cond_e4

    .line 312
    :cond_8a
    aput v11, v7, v2

    .line 320
    add-int/lit8 v6, v6, 0x1

    .line 321
    aput v6, v9, v10

    aput v6, v9, v3

    .line 323
    aget v2, v8, v3

    .line 324
    aget v3, v8, v10

    .line 325
    and-int/lit16 v1, v2, 0xff

    and-int/lit16 v10, v3, 0xff

    if-le v1, v10, :cond_102

    .line 330
    and-int/lit16 v1, v2, 0xff

    .line 331
    :goto_9e
    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v2, v2, -0x100

    and-int/lit16 v3, v3, -0x100

    add-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v8, v6

    .line 334
    const/4 v3, -0x1

    const/4 v1, -0x1

    aput v1, v9, v6

    .line 335
    add-int/lit8 v2, v5, 0x1

    .line 336
    aput v6, v7, v2

    .line 340
    aget v5, v7, v2

    .line 341
    aget v10, v8, v5

    move v1, v2

    .line 342
    :goto_b5
    shr-int/lit8 v11, v1, 0x1

    aget v11, v7, v11

    aget v11, v8, v11

    if-ge v10, v11, :cond_5c

    .line 343
    shr-int/lit8 v11, v1, 0x1

    aget v11, v7, v11

    aput v11, v7, v1

    .line 344
    shr-int/lit8 v1, v1, 0x1

    goto :goto_b5

    .line 276
    :cond_c6
    if-ge v1, v5, :cond_d6

    add-int/lit8 v11, v1, 0x1

    aget v11, v7, v11

    aget v11, v8, v11

    aget v12, v7, v1

    aget v12, v8, v12

    if-ge v11, v12, :cond_d6

    .line 278
    add-int/lit8 v1, v1, 0x1

    .line 281
    :cond_d6
    aget v11, v8, v10

    aget v12, v7, v1

    aget v12, v8, v12

    if-lt v11, v12, :cond_75

    .line 285
    aget v11, v7, v1

    aput v11, v7, v2

    move v2, v1

    .line 286
    goto :goto_71

    .line 306
    :cond_e4
    if-ge v1, v5, :cond_f4

    add-int/lit8 v12, v1, 0x1

    aget v12, v7, v12

    aget v12, v8, v12

    aget v13, v7, v1

    aget v13, v8, v13

    if-ge v12, v13, :cond_f4

    .line 308
    add-int/lit8 v1, v1, 0x1

    .line 311
    :cond_f4
    aget v12, v8, v11

    aget v13, v7, v1

    aget v13, v8, v13

    if-lt v12, v13, :cond_8a

    .line 315
    aget v12, v7, v1

    aput v12, v7, v2

    move v2, v1

    .line 316
    goto :goto_86

    .line 331
    :cond_102
    and-int/lit16 v1, v3, 0xff

    goto :goto_9e

    .line 352
    :cond_105
    const/4 v2, 0x1

    :goto_106
    move/from16 v0, p2

    if-gt v2, v0, :cond_121

    .line 353
    const/4 v3, 0x0

    move v1, v2

    .line 356
    :goto_10c
    aget v1, v9, v1

    if-ltz v1, :cond_113

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto :goto_10c

    .line 361
    :cond_113
    add-int/lit8 v1, v2, -0x1

    int-to-char v6, v3

    aput-char v6, p0, v1

    .line 362
    move/from16 v0, p3

    if-le v3, v0, :cond_13b

    .line 363
    const/4 v1, 0x1

    .line 352
    :goto_11d
    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_106

    .line 367
    :cond_121
    if-eqz v4, :cond_137

    .line 368
    const/4 v1, 0x1

    :goto_124
    move/from16 v0, p2

    if-ge v1, v0, :cond_137

    .line 369
    aget v2, v8, v1

    .line 370
    shr-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x8

    aput v2, v8, v1

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_124

    :cond_137
    move v3, v5

    .line 367
    goto/16 :goto_24

    .line 235
    :cond_13a
    return-void

    :cond_13b
    move v1, v4

    goto :goto_11d

    :cond_13d
    move v5, v3

    move/from16 v6, p2

    goto/16 :goto_5f
.end method

.method private init()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    new-instance v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSize100k:I

    invoke-direct {v0, v1}, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 765
    new-instance v0, Lorg/apache/tools/bzip2/BlockSort;

    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    invoke-direct {v0, v1}, Lorg/apache/tools/bzip2/BlockSort;-><init>(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;)V

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSorter:Lorg/apache/tools/bzip2/BlockSort;

    .line 771
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 772
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSize100k:I

    add-int/lit8 v0, v0, 0x30

    invoke-direct {p0, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsPutUByte(I)V

    .line 774
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->combinedCRC:I

    .line 775
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->initBlock()V

    .line 776
    return-void
.end method

.method private initBlock()V
    .registers 4

    .line 780
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/tools/bzip2/CRC;->initialiseCRC()V

    .line 781
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    .line 784
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v1, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->inUse:[Z

    .line 785
    const/16 v0, 0x100

    :goto_e
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_16

    .line 786
    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    goto :goto_e

    .line 788
    :cond_16
    return-void
.end method

.method private moveToFrontCodeAndSend()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1397
    const/16 v0, 0x18

    iget-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget v1, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->origPtr:I

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 1398
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->generateMTFValues()V

    .line 1399
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues()V

    .line 1400
    return-void
.end method

.method private sendMTFValues()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x6

    .line 957
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v5, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_len:[[B

    .line 958
    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nInUse:I

    const/4 v0, 0x2

    add-int/lit8 v3, v2, 0x2

    move v2, v1

    .line 960
    :goto_b
    add-int/lit8 v4, v2, -0x1

    if-ltz v4, :cond_1d

    .line 961
    aget-object v6, v5, v4

    move v2, v3

    .line 962
    :goto_12
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1b

    .line 963
    const/16 v7, 0xf

    aput-byte v7, v6, v2

    goto :goto_12

    :cond_1b
    move v2, v4

    .line 965
    goto :goto_b

    .line 969
    :cond_1d
    iget v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nMTF:I

    const/16 v4, 0xc8

    if-ge v2, v4, :cond_3d

    .line 973
    :goto_23
    invoke-direct {p0, v0, v3}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues0(II)V

    .line 978
    invoke-direct {p0, v0, v3}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues1(II)I

    move-result v1

    .line 981
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues2(II)V

    .line 984
    invoke-direct {p0, v0, v3}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues3(II)V

    .line 987
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues4()V

    .line 990
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues5(II)V

    .line 993
    invoke-direct {p0, v0, v3}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues6(II)V

    .line 996
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->sendMTFValues7()V

    .line 997
    return-void

    .line 969
    :cond_3d
    const/16 v0, 0x258

    if-ge v2, v0, :cond_43

    const/4 v0, 0x3

    goto :goto_23

    .line 970
    :cond_43
    const/16 v0, 0x4b0

    if-ge v2, v0, :cond_49

    const/4 v0, 0x4

    goto :goto_23

    :cond_49
    const/16 v0, 0x960

    if-ge v2, v0, :cond_4f

    const/4 v0, 0x5

    goto :goto_23

    :cond_4f
    move v0, v1

    goto :goto_23
.end method

.method private sendMTFValues0(II)V
    .registers 14

    const/4 v3, 0x0

    .line 1000
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v7, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_len:[[B

    .line 1001
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v8, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->mtfFreq:[I

    .line 1003
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nMTF:I

    move v4, v0

    move v5, v3

    move v6, p1

    .line 1006
    :goto_e
    if-lez v6, :cond_52

    .line 1007
    div-int v2, v4, v6

    .line 1008
    add-int/lit8 v0, v5, -0x1

    move v1, v3

    .line 1011
    :goto_15
    if-ge v1, v2, :cond_21

    add-int/lit8 v9, p2, -0x1

    if-ge v0, v9, :cond_21

    .line 1012
    add-int/lit8 v0, v0, 0x1

    aget v9, v8, v0

    add-int/2addr v1, v9

    goto :goto_15

    .line 1015
    :cond_21
    if-le v0, v5, :cond_33

    if-eq v6, p1, :cond_33

    const/4 v2, 0x1

    if-eq v6, v2, :cond_33

    sub-int v2, p1, v6

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_33

    .line 1016
    aget v2, v8, v0

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    .line 1019
    :cond_33
    add-int/lit8 v2, v6, -0x1

    aget-object v9, v7, v2

    move v2, p2

    .line 1020
    :goto_38
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_48

    .line 1021
    if-lt v2, v5, :cond_43

    if-gt v2, v0, :cond_43

    .line 1022
    aput-byte v3, v9, v2

    goto :goto_38

    .line 1024
    :cond_43
    const/16 v10, 0xf

    aput-byte v10, v9, v2

    goto :goto_38

    .line 1028
    :cond_48
    add-int/lit8 v2, v0, 0x1

    .line 1029
    sub-int v0, v4, v1

    .line 1006
    add-int/lit8 v1, v6, -0x1

    move v4, v0

    move v5, v2

    move v6, v1

    goto :goto_e

    .line 1031
    :cond_52
    return-void
.end method

.method private sendMTFValues1(II)I
    .registers 30

    .line 1034
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 1035
    iget-object v11, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_rfreq:[[I

    .line 1036
    iget-object v12, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_fave:[I

    .line 1037
    iget-object v13, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_cost:[S

    .line 1038
    iget-object v14, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sfmap:[C

    .line 1039
    iget-object v15, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->selector:[B

    .line 1040
    iget-object v0, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_len:[[B

    move-object/from16 v16, v0

    .line 1041
    const/4 v1, 0x0

    aget-object v17, v16, v1

    .line 1042
    const/4 v1, 0x1

    aget-object v18, v16, v1

    .line 1043
    const/4 v1, 0x2

    aget-object v19, v16, v1

    .line 1044
    const/4 v1, 0x3

    aget-object v20, v16, v1

    .line 1045
    const/4 v1, 0x4

    aget-object v21, v16, v1

    .line 1046
    const/4 v1, 0x5

    aget-object v22, v16, v1

    .line 1047
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nMTF:I

    move/from16 v23, v0

    .line 1049
    const/4 v1, 0x0

    .line 1051
    const/4 v2, 0x0

    :goto_2c
    const/4 v3, 0x4

    if-ge v2, v3, :cond_135

    move/from16 v1, p1

    .line 1052
    :goto_31
    add-int/lit8 v3, v1, -0x1

    if-ltz v3, :cond_46

    .line 1053
    const/4 v1, 0x0

    aput v1, v12, v3

    .line 1054
    aget-object v4, v11, v3

    move/from16 v1, p2

    .line 1055
    :goto_3c
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_44

    .line 1056
    const/4 v5, 0x0

    aput v5, v4, v1

    goto :goto_3c

    :cond_44
    move v1, v3

    .line 1058
    goto :goto_31

    .line 1060
    :cond_46
    const/4 v1, 0x0

    .line 1062
    const/4 v3, 0x0

    :goto_48
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nMTF:I

    if-ge v3, v4, :cond_11a

    .line 1070
    add-int/lit8 v4, v3, 0x32

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v23, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 1072
    const/4 v4, 0x6

    move/from16 v0, p1

    if-ne v0, v4, :cond_d2

    .line 1075
    const/4 v5, 0x0

    .line 1076
    const/4 v6, 0x0

    .line 1077
    const/4 v7, 0x0

    .line 1078
    const/4 v8, 0x0

    .line 1079
    const/4 v9, 0x0

    .line 1080
    const/4 v10, 0x0

    move v4, v3

    .line 1082
    :goto_64
    move/from16 v0, v24

    if-gt v4, v0, :cond_af

    .line 1083
    aget-char v25, v14, v4

    .line 1084
    aget-byte v26, v17, v25

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v5, v5, v26

    int-to-short v5, v5

    .line 1085
    aget-byte v26, v18, v25

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v6, v6, v26

    int-to-short v6, v6

    .line 1086
    aget-byte v26, v19, v25

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v7, v7, v26

    int-to-short v7, v7

    .line 1087
    aget-byte v26, v20, v25

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v8, v8, v26

    int-to-short v8, v8

    .line 1088
    aget-byte v26, v21, v25

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    add-int v9, v9, v26

    int-to-short v9, v9

    .line 1089
    aget-byte v25, v22, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    add-int v10, v10, v25

    int-to-short v10, v10

    .line 1082
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 1092
    :cond_af
    const/4 v4, 0x0

    aput-short v5, v13, v4

    .line 1093
    const/4 v4, 0x1

    aput-short v6, v13, v4

    .line 1094
    const/4 v4, 0x2

    aput-short v7, v13, v4

    .line 1095
    const/4 v4, 0x3

    aput-short v8, v13, v4

    .line 1096
    const/4 v4, 0x4

    aput-short v9, v13, v4

    .line 1097
    const/4 v4, 0x5

    aput-short v10, v13, v4

    .line 1116
    :cond_c1
    const/4 v4, -0x1

    .line 1117
    const v7, 0x3b9ac9ff

    move/from16 v5, p1

    :goto_c7
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_fa

    .line 1118
    aget-short v6, v13, v5

    .line 1119
    if-ge v6, v7, :cond_136

    move v4, v5

    :goto_d0
    move v7, v6

    .line 1123
    goto :goto_c7

    :cond_d2
    move/from16 v4, p1

    .line 1100
    :goto_d4
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_dc

    .line 1101
    const/4 v5, 0x0

    aput-short v5, v13, v4

    goto :goto_d4

    :cond_dc
    move v5, v3

    .line 1100
    :goto_dd
    move/from16 v0, v24

    if-gt v5, v0, :cond_c1

    .line 1105
    aget-char v6, v14, v5

    move/from16 v4, p1

    .line 1106
    :goto_e5
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_f6

    .line 1107
    aget-short v7, v13, v4

    aget-object v8, v16, v4

    aget-byte v8, v8, v6

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v13, v4

    goto :goto_e5

    .line 1104
    :cond_f6
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_dd

    .line 1117
    :cond_fa
    aget v5, v12, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v12, v4

    .line 1126
    int-to-byte v5, v4

    aput-byte v5, v15, v1

    .line 1127
    add-int/lit8 v1, v1, 0x1

    .line 1132
    aget-object v4, v11, v4

    .line 1133
    :goto_107
    move/from16 v0, v24

    if-gt v3, v0, :cond_116

    .line 1134
    aget-char v5, v14, v3

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 1133
    add-int/lit8 v3, v3, 0x1

    goto :goto_107

    .line 1137
    :cond_116
    add-int/lit8 v3, v24, 0x1

    .line 1138
    goto/16 :goto_48

    .line 1062
    :cond_11a
    const/4 v3, 0x0

    :goto_11b
    move/from16 v0, p1

    if-ge v3, v0, :cond_131

    .line 1144
    aget-object v4, v16, v3

    aget-object v5, v11, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    const/16 v7, 0x14

    move/from16 v0, p2

    invoke-static {v4, v5, v6, v0, v7}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->hbMakeCodeLengths([B[ILorg/apache/tools/bzip2/CBZip2OutputStream$Data;II)V

    .line 1143
    add-int/lit8 v3, v3, 0x1

    goto :goto_11b

    .line 1051
    :cond_131
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2c

    .line 1148
    :cond_135
    return v1

    :cond_136
    move v6, v7

    goto :goto_d0
.end method

.method private sendMTFValues2(II)V
    .registers 11

    const/4 v1, 0x0

    .line 1154
    iget-object v5, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 1155
    iget-object v6, v5, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues2_pos:[B

    .line 1157
    :goto_5
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_d

    .line 1158
    int-to-byte v0, p1

    aput-byte v0, v6, p1

    goto :goto_5

    :cond_d
    move v4, v1

    .line 1161
    :goto_e
    if-ge v4, p2, :cond_2c

    .line 1162
    iget-object v0, v5, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->selector:[B

    aget-byte v7, v0, v4

    .line 1163
    aget-byte v2, v6, v1

    move v0, v1

    .line 1166
    :goto_17
    if-eq v7, v2, :cond_21

    .line 1167
    add-int/lit8 v0, v0, 0x1

    .line 1168
    aget-byte v3, v6, v0

    .line 1170
    aput-byte v2, v6, v0

    move v2, v3

    .line 1171
    goto :goto_17

    .line 1173
    :cond_21
    aput-byte v2, v6, v1

    .line 1174
    iget-object v2, v5, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->selectorMtf:[B

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    .line 1161
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_e

    .line 1176
    :cond_2c
    return-void
.end method

.method private sendMTFValues3(II)V
    .registers 12

    const/4 v4, 0x0

    .line 1179
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v6, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_code:[[I

    .line 1180
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v7, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_len:[[B

    move v5, v4

    .line 1182
    :goto_a
    if-ge v5, p1, :cond_2c

    .line 1183
    const/16 v1, 0x20

    .line 1185
    aget-object v8, v7, v5

    move v3, p2

    move v2, v4

    .line 1186
    :goto_12
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_21

    .line 1187
    aget-byte v0, v8, v3

    and-int/lit16 v0, v0, 0xff

    .line 1188
    if-le v0, v2, :cond_1d

    move v2, v0

    .line 1191
    :cond_1d
    if-ge v0, v1, :cond_2d

    :goto_1f
    move v1, v0

    .line 1194
    goto :goto_12

    .line 1199
    :cond_21
    aget-object v0, v6, v5

    aget-object v3, v7, v5

    invoke-static {v0, v3, v1, v2, p2}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->hbAssignCodes([I[BIII)V

    .line 1182
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_a

    .line 1201
    :cond_2c
    return-void

    :cond_2d
    move v0, v1

    goto :goto_1f
.end method

.method private sendMTFValues4()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x10

    .line 1204
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v6, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->inUse:[Z

    .line 1205
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v7, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sentMTFValues4_inUse16:[Z

    move v0, v5

    .line 1207
    :goto_d
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_23

    .line 1208
    aput-boolean v3, v7, v1

    move v0, v5

    .line 1209
    :cond_14
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_21

    .line 1211
    mul-int/lit8 v2, v1, 0x10

    add-int/2addr v2, v0

    aget-boolean v2, v6, v2

    if-eqz v2, :cond_14

    .line 1212
    aput-boolean v10, v7, v1

    :cond_21
    move v0, v1

    .line 1216
    goto :goto_d

    :cond_23
    move v0, v3

    .line 1218
    :goto_24
    if-ge v0, v5, :cond_2e

    .line 1219
    aget-boolean v1, v7, v0

    invoke-direct {p0, v10, v1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 1218
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1222
    :cond_2e
    iget-object v8, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 1223
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 1224
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    move v4, v3

    .line 1226
    :goto_35
    if-ge v4, v5, :cond_63

    .line 1227
    aget-boolean v2, v7, v4

    if-eqz v2, :cond_5f

    move v2, v3

    .line 1228
    :goto_3c
    if-ge v2, v5, :cond_5f

    .line 1231
    :goto_3e
    const/16 v9, 0x8

    if-lt v1, v9, :cond_4c

    .line 1232
    shr-int/lit8 v9, v0, 0x18

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1233
    shl-int/lit8 v0, v0, 0x8

    .line 1234
    add-int/lit8 v1, v1, -0x8

    goto :goto_3e

    .line 1236
    :cond_4c
    mul-int/lit8 v9, v4, 0x10

    add-int/2addr v9, v2

    aget-boolean v9, v6, v9

    if-eqz v9, :cond_5a

    .line 1237
    rsub-int/lit8 v9, v1, 0x20

    add-int/lit8 v9, v9, -0x1

    shl-int v9, v10, v9

    or-int/2addr v0, v9

    .line 1239
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    .line 1229
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1226
    :cond_5f
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_35

    .line 1244
    :cond_63
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 1245
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 1246
    return-void
.end method

.method private sendMTFValues5(II)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x8

    const/4 v3, 0x0

    .line 1250
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 1251
    const/16 v0, 0xf

    invoke-direct {p0, v0, p2}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 1253
    iget-object v5, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 1254
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v6, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->selectorMtf:[B

    .line 1256
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 1257
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    move v4, v3

    .line 1259
    :goto_17
    if-ge v4, p2, :cond_4a

    .line 1260
    aget-byte v7, v6, v4

    move v2, v3

    :goto_1c
    and-int/lit16 v8, v7, 0xff

    if-ge v2, v8, :cond_38

    .line 1262
    :goto_20
    if-lt v0, v10, :cond_2c

    .line 1263
    shr-int/lit8 v8, v1, 0x18

    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write(I)V

    .line 1264
    shl-int/lit8 v1, v1, 0x8

    .line 1265
    add-int/lit8 v0, v0, -0x8

    goto :goto_20

    .line 1267
    :cond_2c
    const/4 v8, 0x1

    rsub-int/lit8 v9, v0, 0x20

    add-int/lit8 v9, v9, -0x1

    shl-int/2addr v8, v9

    or-int/2addr v1, v8

    .line 1268
    add-int/lit8 v0, v0, 0x1

    .line 1260
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1272
    :cond_38
    :goto_38
    if-lt v0, v10, :cond_44

    .line 1273
    shr-int/lit8 v2, v1, 0x18

    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1274
    shl-int/lit8 v1, v1, 0x8

    .line 1275
    add-int/lit8 v0, v0, -0x8

    goto :goto_38

    .line 1278
    :cond_44
    add-int/lit8 v0, v0, 0x1

    .line 1259
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_17

    .line 1281
    :cond_4a
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 1282
    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 1283
    return-void
.end method

.method private sendMTFValues6(II)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v12, 0x8

    .line 1287
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    iget-object v6, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_len:[[B

    .line 1288
    iget-object v7, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 1290
    iget v3, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 1291
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    move v5, v4

    .line 1293
    :goto_e
    if-ge v5, p1, :cond_7d

    .line 1294
    aget-object v8, v6, v5

    .line 1295
    aget-byte v0, v8, v4

    and-int/lit16 v2, v0, 0xff

    move v0, v1

    .line 1298
    :goto_17
    if-lt v3, v12, :cond_24

    .line 1299
    shr-int/lit8 v1, v0, 0x18

    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1300
    shl-int/lit8 v0, v0, 0x8

    .line 1301
    add-int/lit8 v1, v3, -0x8

    move v3, v1

    goto :goto_17

    .line 1303
    :cond_24
    rsub-int/lit8 v1, v3, 0x20

    add-int/lit8 v1, v1, -0x5

    shl-int v1, v2, v1

    or-int/2addr v1, v0

    .line 1304
    add-int/lit8 v0, v3, 0x5

    move v3, v4

    .line 1306
    :goto_2e
    if-ge v3, p2, :cond_78

    .line 1307
    aget-byte v9, v8, v3

    and-int/lit16 v9, v9, 0xff

    .line 1308
    :goto_34
    if-ge v2, v9, :cond_59

    .line 1310
    :goto_36
    if-lt v0, v12, :cond_42

    .line 1311
    shr-int/lit8 v10, v1, 0x18

    invoke-virtual {v7, v10}, Ljava/io/OutputStream;->write(I)V

    .line 1312
    shl-int/lit8 v1, v1, 0x8

    .line 1313
    add-int/lit8 v0, v0, -0x8

    goto :goto_36

    .line 1315
    :cond_42
    const/4 v10, 0x2

    rsub-int/lit8 v11, v0, 0x20

    add-int/lit8 v11, v11, -0x2

    shl-int/2addr v10, v11

    or-int/2addr v1, v10

    .line 1316
    add-int/lit8 v0, v0, 0x2

    .line 1318
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 1328
    :cond_4e
    const/4 v10, 0x3

    rsub-int/lit8 v11, v0, 0x20

    add-int/lit8 v11, v11, -0x2

    shl-int/2addr v10, v11

    or-int/2addr v1, v10

    .line 1329
    add-int/lit8 v0, v0, 0x2

    .line 1331
    add-int/lit8 v2, v2, -0x1

    .line 1321
    :cond_59
    if-le v2, v9, :cond_67

    .line 1323
    :goto_5b
    if-lt v0, v12, :cond_4e

    .line 1324
    shr-int/lit8 v10, v1, 0x18

    invoke-virtual {v7, v10}, Ljava/io/OutputStream;->write(I)V

    .line 1325
    shl-int/lit8 v1, v1, 0x8

    .line 1326
    add-int/lit8 v0, v0, -0x8

    goto :goto_5b

    .line 1335
    :cond_67
    :goto_67
    if-lt v0, v12, :cond_73

    .line 1336
    shr-int/lit8 v9, v1, 0x18

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1337
    shl-int/lit8 v1, v1, 0x8

    .line 1338
    add-int/lit8 v0, v0, -0x8

    goto :goto_67

    .line 1341
    :cond_73
    add-int/lit8 v0, v0, 0x1

    .line 1306
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 1293
    :cond_78
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v0

    goto :goto_e

    .line 1345
    :cond_7d
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 1346
    iput v3, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 1347
    return-void
.end method

.method private sendMTFValues7()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1350
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 1351
    iget-object v5, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_len:[[B

    .line 1352
    iget-object v6, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_code:[[I

    .line 1353
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 1354
    iget-object v8, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->selector:[B

    .line 1355
    iget-object v9, v1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sfmap:[C

    .line 1356
    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->nMTF:I

    .line 1358
    const/4 v4, 0x0

    .line 1360
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 1361
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 1363
    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v10, :cond_5a

    .line 1364
    add-int/lit8 v11, v3, 0x32

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v10, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1365
    aget-byte v12, v8, v4

    and-int/lit16 v12, v12, 0xff

    .line 1366
    aget-object v13, v6, v12

    .line 1367
    aget-object v12, v5, v12

    .line 1369
    :goto_32
    if-gt v3, v11, :cond_55

    .line 1370
    aget-char v14, v9, v3

    .line 1376
    :goto_36
    const/16 v15, 0x8

    if-lt v2, v15, :cond_44

    .line 1377
    shr-int/lit8 v15, v1, 0x18

    invoke-virtual {v7, v15}, Ljava/io/OutputStream;->write(I)V

    .line 1378
    shl-int/lit8 v1, v1, 0x8

    .line 1379
    add-int/lit8 v2, v2, -0x8

    goto :goto_36

    .line 1381
    :cond_44
    aget-byte v15, v12, v14

    and-int/lit16 v15, v15, 0xff

    .line 1382
    aget v14, v13, v14

    rsub-int/lit8 v16, v2, 0x20

    sub-int v16, v16, v15

    shl-int v14, v14, v16

    or-int/2addr v1, v14

    .line 1383
    add-int/2addr v2, v15

    .line 1385
    add-int/lit8 v3, v3, 0x1

    .line 1386
    goto :goto_32

    .line 1388
    :cond_55
    add-int/lit8 v3, v11, 0x1

    .line 1389
    add-int/lit8 v4, v4, 0x1

    .line 1390
    goto :goto_1e

    .line 1392
    :cond_5a
    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 1393
    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->bsLive:I

    .line 1394
    return-void
.end method

.method private write0(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    .line 886
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->currentChar:I

    if-eq v0, v2, :cond_25

    .line 887
    and-int/lit16 v1, p1, 0xff

    .line 888
    if-ne v0, v1, :cond_1c

    .line 889
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    const/16 v1, 0xfe

    if-le v0, v1, :cond_1b

    .line 890
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->writeRun()V

    .line 891
    iput v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->currentChar:I

    .line 892
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    .line 904
    :cond_1b
    :goto_1b
    return-void

    .line 896
    :cond_1c
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->writeRun()V

    .line 897
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    .line 898
    iput v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->currentChar:I

    goto :goto_1b

    .line 901
    :cond_25
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->currentChar:I

    .line 902
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    goto :goto_1b
.end method

.method private writeRun()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    .line 669
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    .line 671
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->allowableBlockSize:I

    if-ge v0, v1, :cond_63

    .line 672
    iget v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->currentChar:I

    .line 673
    iget-object v2, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 674
    iget-object v3, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->inUse:[Z

    aput-boolean v6, v3, v1

    .line 675
    int-to-byte v3, v1

    .line 677
    iget v4, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    .line 678
    iget-object v5, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->crc:Lorg/apache/tools/bzip2/CRC;

    invoke-virtual {v5, v1, v4}, Lorg/apache/tools/bzip2/CRC;->updateCRC(II)V

    .line 679
    iget-object v1, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    .line 681
    packed-switch v4, :pswitch_data_6e

    .line 698
    add-int/lit8 v4, v4, -0x4

    .line 699
    iget-object v2, v2, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->inUse:[Z

    aput-boolean v6, v2, v4

    .line 700
    add-int/lit8 v2, v0, 0x2

    aput-byte v3, v1, v2

    .line 701
    add-int/lit8 v2, v0, 0x3

    aput-byte v3, v1, v2

    .line 702
    add-int/lit8 v2, v0, 0x4

    aput-byte v3, v1, v2

    .line 703
    add-int/lit8 v2, v0, 0x5

    aput-byte v3, v1, v2

    .line 704
    add-int/lit8 v2, v0, 0x6

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    .line 705
    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    .line 713
    :goto_3b
    return-void

    .line 692
    :pswitch_3c  #0x3
    add-int/lit8 v2, v0, 0x2

    aput-byte v3, v1, v2

    .line 693
    add-int/lit8 v2, v0, 0x3

    aput-byte v3, v1, v2

    .line 694
    add-int/lit8 v2, v0, 0x4

    aput-byte v3, v1, v2

    .line 695
    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    goto :goto_3b

    .line 687
    :pswitch_4d  #0x2
    add-int/lit8 v2, v0, 0x2

    aput-byte v3, v1, v2

    .line 688
    add-int/lit8 v2, v0, 0x3

    aput-byte v3, v1, v2

    .line 689
    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    goto :goto_3b

    .line 683
    :pswitch_5a  #0x1
    add-int/lit8 v2, v0, 0x2

    aput-byte v3, v1, v2

    .line 684
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->last:I

    goto :goto_3b

    .line 709
    :cond_63
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->endBlock()V

    .line 710
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->initBlock()V

    .line 711
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->writeRun()V

    goto :goto_3b

    .line 681
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5a  #00000001
        :pswitch_4d  #00000002
        :pswitch_3c  #00000003
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_c

    .line 745
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 746
    invoke-virtual {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->finish()V

    .line 747
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 749
    :cond_c
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 720
    invoke-virtual {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->finish()V

    .line 721
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 722
    return-void
.end method

.method public finish()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 726
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1b

    .line 728
    :try_start_5
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->runLength:I

    if-lez v0, :cond_c

    .line 729
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->writeRun()V

    .line 731
    :cond_c
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->currentChar:I

    .line 732
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->endBlock()V

    .line 733
    invoke-direct {p0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->endCompression()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1c

    .line 735
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 736
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 737
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSorter:Lorg/apache/tools/bzip2/BlockSort;

    .line 740
    :cond_1b
    return-void

    .line 735
    :catchall_1c
    move-exception v0

    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 736
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->data:Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;

    .line 737
    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSorter:Lorg/apache/tools/bzip2/BlockSort;

    .line 738
    throw v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    .line 754
    if-eqz v0, :cond_7

    .line 755
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 757
    :cond_7
    return-void
.end method

.method public final getBlockSize()I
    .registers 2

    .line 855
    iget v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->blockSize100k:I

    return v0
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_8

    .line 649
    invoke-direct {p0, p1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->write0(I)V

    .line 653
    return-void

    .line 651
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    if-ltz p2, :cond_6b

    .line 864
    if-ltz p3, :cond_4f

    .line 867
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_22

    .line 872
    iget-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1a

    move v0, p2

    .line 876
    :goto_e
    add-int v1, p2, p3

    if-ge v0, v1, :cond_87

    .line 877
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;->write0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 873
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offs("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") + len("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") > buf.length("

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

    .line 865
    :cond_4f
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

    .line 862
    :cond_6b
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

    .line 879
    :cond_87
    return-void
.end method
