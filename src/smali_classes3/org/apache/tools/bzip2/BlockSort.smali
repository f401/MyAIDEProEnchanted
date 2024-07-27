.class Lorg/apache/tools/bzip2/BlockSort;
.super Ljava/lang/Object;
.source "BlockSort.java"


# static fields
.field private static final CLEARMASK:I = -0x200001

.field private static final DEPTH_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_SMALL_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_STACK_SIZE:I = 0x64

.field private static final INCS:[I

.field private static final QSORT_STACK_SIZE:I = 0x3e8

.field private static final SETMASK:I = 0x200000

.field private static final SMALL_THRESH:I = 0x14

.field private static final STACK_SIZE:I = 0x3e8

.field private static final WORK_FACTOR:I = 0x1e


# instance fields
.field private eclass:[I

.field private firstAttempt:Z

.field private final ftab:[I

.field private final mainSort_bigDone:[Z

.field private final mainSort_copy:[I

.field private final mainSort_runningOrder:[I

.field private final quadrant:[C

.field private final stack_dd:[I

.field private final stack_hh:[I

.field private final stack_ll:[I

.field private workDone:I

.field private workLimit:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 586
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/tools/bzip2/BlockSort;->INCS:[I

    return-void

    :array_0
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

.method constructor <init>(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;)V
    .registers 5

    const/16 v2, 0x3e8

    const/16 v1, 0x100

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->stack_ll:[I

    .line 134
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->stack_hh:[I

    .line 135
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->stack_dd:[I

    .line 137
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->mainSort_runningOrder:[I

    .line 138
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->mainSort_copy:[I

    .line 139
    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->mainSort_bigDone:[Z

    .line 141
    const v0, 0x10001

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->ftab:[I

    .line 151
    iget-object v0, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sfmap:[C

    iput-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->quadrant:[C

    .line 152
    return-void
.end method

.method private fallbackQSort3([I[III)V
    .registers 20

    .line 351
    const-wide/16 v2, 0x0

    .line 352
    const/4 v6, 0x1

    const/4 v4, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v4, v0, v1}, Lorg/apache/tools/bzip2/BlockSort;->fpush(III)V

    move-wide v4, v2

    .line 355
    :goto_0
    if-lez v6, :cond_c

    .line 356
    add-int/lit8 v12, v6, -0x1

    invoke-direct {p0, v12}, Lorg/apache/tools/bzip2/BlockSort;->fpop(I)[I

    move-result-object v2

    .line 357
    const/4 v3, 0x0

    aget v7, v2, v3

    .line 358
    const/4 v3, 0x1

    aget v8, v2, v3

    .line 360
    sub-int v2, v8, v7

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 361
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v7, v8}, Lorg/apache/tools/bzip2/BlockSort;->fallbackSimpleSort([I[III)V

    move v6, v12

    .line 362
    goto :goto_0

    .line 372
    :cond_0
    const-wide/16 v2, 0x1dc5

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/32 v4, 0x8000

    rem-long v10, v2, v4

    .line 373
    const-wide/16 v2, 0x3

    rem-long v2, v10, v2

    .line 374
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 375
    aget v2, p1, v7

    aget v2, p2, v2

    int-to-long v2, v2

    :goto_1
    move v6, v7

    move v5, v8

    move v4, v8

    move v9, v7

    .line 389
    :goto_2
    if-le v9, v4, :cond_5

    .line 400
    :cond_1
    :goto_3
    if-le v9, v4, :cond_7

    .line 416
    :cond_2
    if-le v9, v4, :cond_b

    .line 421
    if-ge v5, v6, :cond_9

    move-wide v4, v10

    move v6, v12

    .line 429
    goto :goto_0

    .line 376
    :cond_3
    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 377
    add-int v2, v7, v8

    ushr-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    aget v2, p2, v2

    int-to-long v2, v2

    goto :goto_1

    .line 379
    :cond_4
    aget v2, p1, v8

    aget v2, p2, v2

    int-to-long v2, v2

    goto :goto_1

    .line 392
    :cond_5
    aget v13, p1, v9

    aget v13, p2, v13

    long-to-int v14, v2

    sub-int/2addr v13, v14

    .line 393
    if-nez v13, :cond_6

    .line 394
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v6}, Lorg/apache/tools/bzip2/BlockSort;->fswap([III)V

    .line 395
    add-int/lit8 v6, v6, 0x1

    .line 396
    add-int/lit8 v9, v9, 0x1

    .line 397
    goto :goto_2

    .line 399
    :cond_6
    if-gtz v13, :cond_1

    .line 402
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 408
    :cond_7
    aget v13, p1, v4

    aget v13, p2, v13

    long-to-int v14, v2

    sub-int/2addr v13, v14

    .line 409
    if-nez v13, :cond_8

    .line 410
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v4, v5}, Lorg/apache/tools/bzip2/BlockSort;->fswap([III)V

    .line 411
    add-int/lit8 v5, v5, -0x1

    .line 412
    add-int/lit8 v4, v4, -0x1

    .line 413
    goto :goto_3

    .line 415
    :cond_8
    if-ltz v13, :cond_2

    .line 418
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 432
    :cond_9
    sub-int v2, v6, v7

    sub-int v3, v9, v6

    invoke-direct {p0, v2, v3}, Lorg/apache/tools/bzip2/BlockSort;->fmin(II)I

    move-result v2

    .line 433
    sub-int v3, v9, v2

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v7, v3, v2}, Lorg/apache/tools/bzip2/BlockSort;->fvswap([IIII)V

    .line 434
    sub-int v2, v8, v5

    sub-int v3, v5, v4

    invoke-direct {p0, v2, v3}, Lorg/apache/tools/bzip2/BlockSort;->fmin(II)I

    move-result v2

    .line 435
    add-int/lit8 v3, v4, 0x1

    sub-int v13, v8, v2

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3, v13, v2}, Lorg/apache/tools/bzip2/BlockSort;->fvswap([IIII)V

    .line 437
    add-int v2, v7, v9

    sub-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x1

    .line 438
    sub-int v3, v5, v4

    sub-int v3, v8, v3

    add-int/lit8 v3, v3, 0x1

    .line 440
    sub-int v4, v2, v7

    sub-int v5, v8, v3

    if-le v4, v5, :cond_a

    .line 441
    add-int/lit8 v4, v12, 0x1

    invoke-direct {p0, v12, v7, v2}, Lorg/apache/tools/bzip2/BlockSort;->fpush(III)V

    .line 442
    invoke-direct {p0, v4, v3, v8}, Lorg/apache/tools/bzip2/BlockSort;->fpush(III)V

    add-int/lit8 v2, v4, 0x1

    :goto_4
    move-wide v4, v10

    move v6, v2

    .line 447
    goto/16 :goto_0

    .line 444
    :cond_a
    add-int/lit8 v4, v12, 0x1

    invoke-direct {p0, v12, v3, v8}, Lorg/apache/tools/bzip2/BlockSort;->fpush(III)V

    .line 445
    invoke-direct {p0, v4, v7, v2}, Lorg/apache/tools/bzip2/BlockSort;->fpush(III)V

    add-int/lit8 v2, v4, 0x1

    goto :goto_4

    .line 423
    :cond_b
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v4}, Lorg/apache/tools/bzip2/BlockSort;->fswap([III)V

    .line 424
    add-int/lit8 v9, v9, 0x1

    .line 425
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_2

    .line 448
    :cond_c
    return-void
.end method

.method private fallbackSimpleSort([I[III)V
    .registers 11

    .line 272
    if-ne p3, p4, :cond_1

    .line 297
    :cond_0
    return-void

    .line 277
    :cond_1
    sub-int v0, p4, p3

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 278
    add-int/lit8 v0, p4, -0x4

    move v1, v0

    :goto_0
    if-lt v1, p3, :cond_3

    .line 279
    aget v2, p1, v1

    .line 280
    aget v3, p2, v2

    .line 281
    add-int/lit8 v0, v1, 0x4

    :goto_1
    if-gt v0, p4, :cond_2

    aget v4, p1, v0

    aget v4, p2, v4

    if-le v3, v4, :cond_2

    .line 283
    add-int/lit8 v4, v0, -0x4

    aget v5, p1, v0

    aput v5, p1, v4

    .line 282
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 285
    :cond_2
    add-int/lit8 v0, v0, -0x4

    aput v2, p1, v0

    .line 278
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 289
    :cond_3
    add-int/lit8 v0, p4, -0x1

    move v1, v0

    :goto_2
    if-lt v1, p3, :cond_0

    .line 290
    aget v2, p1, v1

    .line 291
    aget v3, p2, v2

    .line 292
    add-int/lit8 v0, v1, 0x1

    :goto_3
    if-gt v0, p4, :cond_4

    aget v4, p1, v0

    aget v4, p2, v4

    if-le v3, v4, :cond_4

    .line 293
    add-int/lit8 v4, v0, -0x1

    aget v5, p1, v0

    aput v5, p1, v4

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 295
    :cond_4
    add-int/lit8 v0, v0, -0x1

    aput v2, p1, v0

    .line 289
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2
.end method

.method private fmin(II)I
    .registers 3

    .line 323
    if-ge p1, p2, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private fpop(I)[I
    .registers 5

    .line 332
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/tools/bzip2/BlockSort;->stack_ll:[I

    aget v2, v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/tools/bzip2/BlockSort;->stack_hh:[I

    aget v2, v2, p1

    aput v2, v0, v1

    return-object v0
.end method

.method private fpush(III)V
    .registers 5

    .line 327
    iget-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->stack_ll:[I

    aput p2, v0, p1

    .line 328
    iget-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->stack_hh:[I

    aput p3, v0, p1

    .line 329
    return-void
.end method

.method private fswap([III)V
    .registers 6

    .line 305
    aget v0, p1, p2

    .line 306
    aget v1, p1, p3

    aput v1, p1, p2

    .line 307
    aput v0, p1, p3

    .line 308
    return-void
.end method

.method private fvswap([IIII)V
    .registers 5

    .line 314
    :goto_0
    if-lez p4, :cond_0

    .line 315
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/bzip2/BlockSort;->fswap([III)V

    .line 316
    add-int/lit8 p2, p2, 0x1

    .line 317
    add-int/lit8 p3, p3, 0x1

    .line 318
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method

.method private getEclass()[I
    .registers 2

    .line 456
    iget-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->eclass:[I

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->quadrant:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->eclass:[I

    .line 459
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/bzip2/BlockSort;->eclass:[I

    return-object v0
.end method

.method private mainQSort3(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;IIII)V
    .registers 24

    .line 801
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/tools/bzip2/BlockSort;->stack_ll:[I

    .line 802
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/tools/bzip2/BlockSort;->stack_hh:[I

    .line 803
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/tools/bzip2/BlockSort;->stack_dd:[I

    .line 804
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    .line 805
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    .line 807
    const/4 v1, 0x0

    aput p2, v11, v1

    .line 808
    const/4 v1, 0x0

    aput p3, v12, v1

    .line 809
    const/4 v1, 0x0

    aput p4, v13, v1

    .line 811
    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v7, v1, -0x1

    if-ltz v7, :cond_1

    .line 812
    aget v3, v11, v7

    .line 813
    aget v4, v12, v7

    .line 814
    aget v5, v13, v7

    .line 816
    sub-int v1, v4, v3

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    const/16 v1, 0xa

    if-le v5, v1, :cond_2

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p5

    .line 817
    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/bzip2/BlockSort;->mainSimpleSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;IIII)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 901
    :cond_1
    return-void

    .line 821
    :cond_2
    add-int/lit8 v16, v5, 0x1

    .line 822
    aget v1, v14, v3

    add-int v1, v1, v16

    aget-byte v1, v15, v1

    aget v2, v14, v4

    add-int v2, v2, v16

    aget-byte v2, v15, v2

    add-int v6, v3, v4

    ushr-int/lit8 v6, v6, 0x1

    aget v6, v14, v6

    add-int v6, v6, v16

    aget-byte v6, v15, v6

    invoke-static {v1, v2, v6}, Lorg/apache/tools/bzip2/BlockSort;->med3(BBB)B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    move/from16 v17, v0

    move v1, v3

    move v9, v4

    move v10, v3

    move v6, v4

    .line 831
    :goto_1
    if-gt v10, v6, :cond_4

    .line 832
    aget v2, v14, v10

    add-int v2, v2, v16

    aget-byte v2, v15, v2

    and-int/lit16 v2, v2, 0xff

    sub-int v2, v2, v17

    .line 834
    if-nez v2, :cond_3

    .line 835
    aget v2, v14, v10

    .line 836
    aget v8, v14, v1

    aput v8, v14, v10

    .line 837
    aput v2, v14, v1

    .line 838
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v10, 0x1

    :goto_2
    move v10, v2

    .line 843
    goto :goto_1

    .line 838
    :cond_3
    if-gez v2, :cond_4

    .line 839
    add-int/lit8 v2, v10, 0x1

    goto :goto_2

    :cond_4
    move v8, v6

    move v2, v9

    .line 831
    :goto_3
    if-gt v10, v8, :cond_6

    .line 846
    aget v6, v14, v8

    add-int v6, v6, v16

    aget-byte v6, v15, v6

    and-int/lit16 v6, v6, 0xff

    sub-int v6, v6, v17

    .line 848
    if-nez v6, :cond_5

    .line 849
    aget v6, v14, v8

    .line 850
    aget v9, v14, v2

    aput v9, v14, v8

    .line 851
    aput v6, v14, v2

    .line 852
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v6, v8, -0x1

    :goto_4
    move v8, v6

    .line 857
    goto :goto_3

    .line 852
    :cond_5
    if-lez v6, :cond_6

    .line 853
    add-int/lit8 v6, v8, -0x1

    goto :goto_4

    .line 859
    :cond_6
    if-gt v10, v8, :cond_7

    .line 860
    aget v6, v14, v10

    .line 861
    aget v9, v14, v8

    aput v9, v14, v10

    .line 862
    aput v6, v14, v8

    .line 863
    add-int/lit8 v6, v8, -0x1

    add-int/lit8 v8, v10, 0x1

    move v9, v2

    move v10, v8

    goto :goto_1

    .line 868
    :cond_7
    if-ge v2, v1, :cond_8

    .line 869
    aput v3, v11, v7

    .line 870
    aput v4, v12, v7

    .line 871
    aput v16, v13, v7

    .line 872
    add-int/lit8 v1, v7, 0x1

    goto/16 :goto_0

    .line 874
    :cond_8
    sub-int v6, v1, v3

    sub-int v9, v10, v1

    if-ge v6, v9, :cond_9

    sub-int v6, v1, v3

    .line 876
    :goto_5
    sub-int v9, v10, v6

    invoke-static {v14, v3, v9, v6}, Lorg/apache/tools/bzip2/BlockSort;->vswap([IIII)V

    .line 877
    sub-int v6, v4, v2

    sub-int v9, v2, v8

    if-ge v6, v9, :cond_a

    sub-int v6, v4, v2

    .line 879
    :goto_6
    sub-int v9, v4, v6

    add-int/lit8 v9, v9, 0x1

    invoke-static {v14, v10, v9, v6}, Lorg/apache/tools/bzip2/BlockSort;->vswap([IIII)V

    .line 881
    add-int v6, v3, v10

    sub-int v1, v6, v1

    add-int/lit8 v1, v1, -0x1

    .line 882
    sub-int/2addr v2, v8

    sub-int v2, v4, v2

    add-int/lit8 v2, v2, 0x1

    .line 884
    aput v3, v11, v7

    .line 885
    aput v1, v12, v7

    .line 886
    aput v5, v13, v7

    .line 887
    add-int/lit8 v3, v7, 0x1

    .line 889
    add-int/lit8 v1, v1, 0x1

    aput v1, v11, v3

    .line 890
    add-int/lit8 v1, v2, -0x1

    aput v1, v12, v3

    .line 891
    aput v16, v13, v3

    .line 892
    add-int/lit8 v1, v3, 0x1

    .line 894
    aput v2, v11, v1

    .line 895
    aput v4, v12, v1

    .line 896
    aput v5, v13, v1

    .line 897
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 875
    :cond_9
    sub-int v6, v10, v1

    goto :goto_5

    .line 878
    :cond_a
    sub-int v6, v2, v8

    goto :goto_6

    :cond_b
    move v1, v7

    .line 817
    goto/16 :goto_0
.end method

.method private mainSimpleSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;IIII)Z
    .registers 28

    .line 603
    const/4 v1, 0x1

    sub-int v2, p3, p2

    add-int/lit8 v2, v2, 0x1

    .line 604
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 605
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/tools/bzip2/BlockSort;->firstAttempt:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/tools/bzip2/BlockSort;->workDone:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/tools/bzip2/BlockSort;->workLimit:I

    if-le v2, v3, :cond_0

    .line 766
    :goto_0
    return v1

    .line 605
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 608
    :cond_1
    const/4 v1, 0x0

    .line 609
    :goto_1
    sget-object v3, Lorg/apache/tools/bzip2/BlockSort;->INCS:[I

    aget v3, v3, v1

    if-ge v3, v2, :cond_2

    .line 610
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 613
    :cond_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    .line 614
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/tools/bzip2/BlockSort;->quadrant:[C

    .line 615
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    .line 616
    add-int/lit8 v15, p5, 0x1

    .line 617
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/tools/bzip2/BlockSort;->firstAttempt:Z

    move/from16 v16, v0

    .line 618
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/tools/bzip2/BlockSort;->workLimit:I

    move/from16 v17, v0

    .line 619
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/tools/bzip2/BlockSort;->workDone:I

    .line 624
    :goto_2
    add-int/lit8 v11, v1, -0x1

    if-ltz v11, :cond_1c

    .line 625
    sget-object v1, Lorg/apache/tools/bzip2/BlockSort;->INCS:[I

    aget v18, v1, v11

    .line 626
    add-int v9, p2, v18

    move v3, v2

    :cond_3
    move/from16 v0, p3

    if-gt v9, v0, :cond_19

    .line 630
    const/4 v1, 0x3

    move v2, v1

    :goto_3
    move/from16 v0, p3

    if-gt v9, v0, :cond_18

    add-int/lit8 v10, v2, -0x1

    if-ltz v10, :cond_18

    .line 631
    aget v19, v12, v9

    .line 632
    add-int v20, v19, p4

    .line 645
    const/4 v1, 0x0

    .line 646
    const/4 v4, 0x0

    move v5, v4

    move v2, v9

    .line 649
    :goto_4
    if-eqz v1, :cond_4

    .line 650
    aput v5, v12, v2

    .line 651
    sub-int v2, v2, v18

    add-int v4, p2, v18

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_5

    move v1, v3

    .line 755
    :goto_5
    aput v19, v12, v2

    .line 630
    add-int/lit8 v9, v9, 0x1

    move v2, v10

    move v3, v1

    goto :goto_3

    .line 655
    :cond_4
    const/4 v1, 0x1

    .line 658
    :cond_5
    sub-int v4, v2, v18

    aget v8, v12, v4

    .line 659
    add-int v4, v8, p4

    .line 660
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v14, v5

    add-int/lit8 v6, v20, 0x1

    aget-byte v6, v14, v6

    if-ne v5, v6, :cond_16

    .line 665
    add-int/lit8 v5, v4, 0x2

    aget-byte v5, v14, v5

    add-int/lit8 v6, v20, 0x2

    aget-byte v6, v14, v6

    if-ne v5, v6, :cond_15

    .line 666
    add-int/lit8 v5, v4, 0x3

    aget-byte v5, v14, v5

    add-int/lit8 v6, v20, 0x3

    aget-byte v6, v14, v6

    if-ne v5, v6, :cond_14

    .line 667
    add-int/lit8 v5, v4, 0x4

    aget-byte v5, v14, v5

    add-int/lit8 v6, v20, 0x4

    aget-byte v6, v14, v6

    if-ne v5, v6, :cond_13

    .line 668
    add-int/lit8 v5, v4, 0x5

    aget-byte v5, v14, v5

    add-int/lit8 v6, v20, 0x5

    aget-byte v6, v14, v6

    if-ne v5, v6, :cond_12

    .line 669
    add-int/lit8 v5, v4, 0x6

    aget-byte v4, v14, v5

    add-int/lit8 v7, v20, 0x6

    aget-byte v6, v14, v7

    if-ne v4, v6, :cond_11

    move/from16 v6, p5

    move v4, v3

    .line 671
    :goto_6
    if-lez v6, :cond_a

    .line 672
    add-int/lit8 v3, v5, 0x1

    aget-byte v3, v14, v3

    add-int/lit8 v21, v7, 0x1

    aget-byte v21, v14, v21

    move/from16 v0, v21

    if-ne v3, v0, :cond_10

    .line 675
    aget-char v3, v13, v5

    aget-char v21, v13, v7

    move/from16 v0, v21

    if-ne v3, v0, :cond_f

    .line 676
    add-int/lit8 v3, v5, 0x2

    aget-byte v3, v14, v3

    add-int/lit8 v21, v7, 0x2

    aget-byte v21, v14, v21

    move/from16 v0, v21

    if-ne v3, v0, :cond_e

    .line 677
    add-int/lit8 v3, v5, 0x1

    aget-char v3, v13, v3

    add-int/lit8 v21, v7, 0x1

    aget-char v21, v13, v21

    move/from16 v0, v21

    if-ne v3, v0, :cond_d

    .line 678
    add-int/lit8 v3, v5, 0x3

    aget-byte v3, v14, v3

    add-int/lit8 v21, v7, 0x3

    aget-byte v21, v14, v21

    move/from16 v0, v21

    if-ne v3, v0, :cond_c

    .line 679
    add-int/lit8 v3, v5, 0x2

    aget-char v3, v13, v3

    add-int/lit8 v21, v7, 0x2

    aget-char v21, v13, v21

    move/from16 v0, v21

    if-ne v3, v0, :cond_b

    .line 680
    add-int/lit8 v3, v5, 0x4

    aget-byte v3, v14, v3

    add-int/lit8 v21, v7, 0x4

    aget-byte v21, v14, v21

    move/from16 v0, v21

    if-ne v3, v0, :cond_9

    .line 681
    add-int/lit8 v3, v5, 0x3

    aget-char v3, v13, v3

    add-int/lit8 v21, v7, 0x3

    aget-char v21, v13, v21

    move/from16 v0, v21

    if-ne v3, v0, :cond_7

    .line 682
    add-int/lit8 v3, v5, 0x4

    if-lt v3, v15, :cond_1b

    .line 683
    sub-int/2addr v3, v15

    move v5, v3

    .line 685
    :goto_7
    add-int/lit8 v3, v7, 0x4

    if-lt v3, v15, :cond_6

    .line 686
    sub-int/2addr v3, v15

    .line 685
    :cond_6
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, -0x4

    move v7, v3

    goto :goto_6

    .line 689
    :cond_7
    add-int/lit8 v3, v5, 0x3

    aget-char v3, v13, v3

    add-int/lit8 v5, v7, 0x3

    aget-char v5, v13, v5

    if-le v3, v5, :cond_a

    :cond_8
    :goto_8
    move v5, v8

    move v3, v4

    .line 725
    goto/16 :goto_4

    .line 694
    :cond_9
    add-int/lit8 v3, v5, 0x4

    aget-byte v3, v14, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v7, 0x4

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-gt v3, v5, :cond_8

    :cond_a
    move v1, v4

    goto/16 :goto_5

    .line 699
    :cond_b
    add-int/lit8 v3, v5, 0x2

    aget-char v3, v13, v3

    add-int/lit8 v5, v7, 0x2

    aget-char v5, v13, v5

    if-le v3, v5, :cond_a

    goto :goto_8

    .line 704
    :cond_c
    add-int/lit8 v3, v5, 0x3

    aget-byte v3, v14, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v7, 0x3

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-le v3, v5, :cond_a

    goto :goto_8

    .line 709
    :cond_d
    add-int/lit8 v3, v5, 0x1

    aget-char v3, v13, v3

    add-int/lit8 v5, v7, 0x1

    aget-char v5, v13, v5

    if-le v3, v5, :cond_a

    goto :goto_8

    .line 714
    :cond_e
    add-int/lit8 v3, v5, 0x2

    aget-byte v3, v14, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v7, 0x2

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-le v3, v5, :cond_a

    goto :goto_8

    .line 719
    :cond_f
    aget-char v3, v13, v5

    aget-char v5, v13, v7

    if-le v3, v5, :cond_a

    goto :goto_8

    .line 724
    :cond_10
    add-int/lit8 v3, v5, 0x1

    aget-byte v3, v14, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v7, 0x1

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-le v3, v5, :cond_a

    goto :goto_8

    .line 733
    :cond_11
    aget-byte v4, v14, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, v14, v7

    and-int/lit16 v5, v5, 0xff

    if-gt v4, v5, :cond_17

    move v1, v3

    .line 734
    goto/16 :goto_5

    .line 736
    :cond_12
    add-int/lit8 v4, v4, 0x5

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v20, 0x5

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-gt v4, v5, :cond_17

    move v1, v3

    .line 737
    goto/16 :goto_5

    .line 739
    :cond_13
    add-int/lit8 v4, v4, 0x4

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v20, 0x4

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-gt v4, v5, :cond_17

    move v1, v3

    .line 740
    goto/16 :goto_5

    .line 742
    :cond_14
    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v20, 0x3

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-gt v4, v5, :cond_17

    move v1, v3

    .line 743
    goto/16 :goto_5

    .line 745
    :cond_15
    add-int/lit8 v4, v4, 0x2

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v20, 0x2

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-gt v4, v5, :cond_17

    move v1, v3

    .line 746
    goto/16 :goto_5

    .line 748
    :cond_16
    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v20, 0x1

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    if-gt v4, v5, :cond_17

    move v1, v3

    .line 749
    goto/16 :goto_5

    :cond_17
    move v5, v8

    .line 752
    goto/16 :goto_4

    .line 630
    :cond_18
    if-eqz v16, :cond_3

    move/from16 v0, p3

    if-gt v9, v0, :cond_3

    move/from16 v0, v17

    if-le v3, v0, :cond_3

    move v1, v3

    .line 624
    :goto_9
    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/tools/bzip2/BlockSort;->workDone:I

    .line 766
    if-eqz v16, :cond_1a

    move/from16 v0, v17

    if-le v1, v0, :cond_1a

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_19
    move v1, v11

    move v2, v3

    .line 763
    goto/16 :goto_2

    .line 766
    :cond_1a
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_1b
    move v5, v3

    goto/16 :goto_7

    :cond_1c
    move v1, v2

    goto :goto_9
.end method

.method private static med3(BBB)B
    .registers 3

    .line 787
    if-ge p0, p1, :cond_3

    if-ge p1, p2, :cond_2

    :cond_0
    move p0, p1

    .line 788
    :cond_1
    :goto_0
    return p0

    .line 787
    :cond_2
    if-ge p0, p2, :cond_1

    :goto_1
    move p0, p2

    goto :goto_0

    :cond_3
    if-gt p1, p2, :cond_0

    if-le p0, p2, :cond_1

    goto :goto_1
.end method

.method private static vswap([IIII)V
    .registers 7

    .line 778
    move v0, p1

    .line 779
    :goto_0
    add-int v1, p3, p1

    if-ge v0, v1, :cond_0

    .line 780
    aget v1, p0, v0

    .line 781
    aget v2, p0, p2

    aput v2, p0, v0

    .line 782
    aput v1, p0, p2

    .line 783
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 784
    :cond_0
    return-void
.end method


# virtual methods
.method blockSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;I)V
    .registers 6

    const/4 v0, 0x0

    .line 155
    mul-int/lit8 v1, p2, 0x1e

    iput v1, p0, Lorg/apache/tools/bzip2/BlockSort;->workLimit:I

    .line 156
    iput v0, p0, Lorg/apache/tools/bzip2/BlockSort;->workDone:I

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/tools/bzip2/BlockSort;->firstAttempt:Z

    .line 159
    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_2

    .line 160
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/bzip2/BlockSort;->fallbackSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;I)V

    .line 169
    :cond_0
    :goto_0
    iget-object v1, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    .line 170
    const/4 v2, -0x1

    iput v2, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->origPtr:I

    .line 171
    :goto_1
    if-gt v0, p2, :cond_1

    .line 172
    aget v2, v1, v0

    if-nez v2, :cond_3

    .line 173
    iput v0, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->origPtr:I

    .line 179
    :cond_1
    return-void

    .line 162
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/bzip2/BlockSort;->mainSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;I)V

    .line 164
    iget-boolean v1, p0, Lorg/apache/tools/bzip2/BlockSort;->firstAttempt:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/tools/bzip2/BlockSort;->workDone:I

    iget v2, p0, Lorg/apache/tools/bzip2/BlockSort;->workLimit:I

    if-le v1, v2, :cond_0

    .line 165
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/bzip2/BlockSort;->fallbackSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;I)V

    goto :goto_0

    .line 171
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method final fallbackSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;I)V
    .registers 7

    const/4 v0, 0x0

    .line 188
    iget-object v1, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    iget-object v2, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    add-int/lit8 v3, p2, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 189
    iget-object v1, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    iget-object v2, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/tools/bzip2/BlockSort;->fallbackSort([I[BI)V

    move v1, v0

    .line 190
    :goto_0
    add-int/lit8 v2, p2, 0x1

    if-ge v1, v2, :cond_1

    .line 191
    iget-object v2, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_2

    .line 194
    iget-object v1, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 195
    iget-object v1, p1, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    aput p2, v1, v0

    .line 199
    :cond_2
    return-void
.end method

.method final fallbackSort([I[BI)V
    .registers 14

    const/16 v7, 0x101

    const/4 v0, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 480
    new-array v2, v7, [I

    .line 484
    invoke-direct {p0}, Lorg/apache/tools/bzip2/BlockSort;->getEclass()[I

    move-result-object v8

    move v1, v5

    .line 486
    :goto_0
    if-ge v1, p3, :cond_0

    .line 487
    aput v5, v8, v1

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v5

    .line 493
    :goto_1
    if-ge v1, p3, :cond_1

    .line 494
    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    aget v6, v2, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v3

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 496
    :goto_2
    if-ge v1, v7, :cond_2

    .line 497
    aget v3, v2, v1

    add-int/lit8 v6, v1, -0x1

    aget v6, v2, v6

    add-int/2addr v3, v6

    aput v3, v2, v1

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v5

    .line 500
    :goto_3
    if-ge v1, p3, :cond_3

    .line 501
    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    .line 502
    aget v6, v2, v3

    add-int/lit8 v6, v6, -0x1

    .line 503
    aput v6, v2, v3

    .line 504
    aput v1, p1, v6

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 507
    :cond_3
    new-instance v9, Ljava/util/BitSet;

    add-int/lit8 v1, p3, 0x40

    invoke-direct {v9, v1}, Ljava/util/BitSet;-><init>(I)V

    move v1, v5

    .line 509
    :goto_4
    const/16 v3, 0x100

    if-ge v1, v3, :cond_4

    .line 510
    aget v3, v2, v1

    invoke-virtual {v9, v3}, Ljava/util/BitSet;->set(I)V

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v5

    .line 520
    :goto_5
    const/16 v2, 0x20

    if-ge v1, v2, :cond_5

    .line 521
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p3

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->set(I)V

    .line 522
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->clear(I)V

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    move v1, v5

    move v2, v5

    .line 530
    :goto_6
    if-ge v2, p3, :cond_8

    .line 531
    invoke-virtual {v9, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    .line 534
    :cond_6
    aget v3, p1, v2

    sub-int/2addr v3, v0

    .line 535
    if-gez v3, :cond_7

    .line 536
    add-int/2addr v3, p3

    .line 538
    :cond_7
    aput v1, v8, v3

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    move v1, v4

    move v2, v5

    .line 546
    :cond_9
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v1

    .line 548
    add-int/lit8 v3, v1, -0x1

    .line 549
    if-lt v3, p3, :cond_c

    .line 555
    :cond_a
    mul-int/lit8 v0, v0, 0x2

    .line 576
    if-gt v0, p3, :cond_b

    if-nez v2, :cond_5

    .line 577
    :cond_b
    return-void

    .line 552
    :cond_c
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .line 553
    add-int/lit8 v1, v1, -0x1

    .line 554
    if-ge v1, p3, :cond_a

    .line 559
    if-le v1, v3, :cond_9

    .line 560
    sub-int v6, v1, v3

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v2, v6

    .line 561
    invoke-direct {p0, p1, v8, v3, v1}, Lorg/apache/tools/bzip2/BlockSort;->fallbackQSort3([I[III)V

    move v6, v4

    move v7, v3

    .line 565
    :goto_7
    if-gt v7, v1, :cond_9

    .line 566
    aget v3, p1, v7

    aget v3, v8, v3

    .line 567
    if-eq v6, v3, :cond_d

    .line 568
    invoke-virtual {v9, v7}, Ljava/util/BitSet;->set(I)V

    .line 565
    :goto_8
    add-int/lit8 v7, v7, 0x1

    move v6, v3

    goto :goto_7

    :cond_d
    move v3, v6

    goto :goto_8
.end method

.method final mainSort(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;I)V
    .registers 24

    .line 908
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/tools/bzip2/BlockSort;->mainSort_runningOrder:[I

    .line 909
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/tools/bzip2/BlockSort;->mainSort_copy:[I

    .line 910
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/tools/bzip2/BlockSort;->mainSort_bigDone:[Z

    .line 911
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/tools/bzip2/BlockSort;->ftab:[I

    .line 912
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    .line 913
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    .line 914
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/tools/bzip2/BlockSort;->quadrant:[C

    .line 915
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/tools/bzip2/BlockSort;->workLimit:I

    move/from16 v16, v0

    .line 916
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/tools/bzip2/BlockSort;->firstAttempt:Z

    move/from16 v17, v0

    .line 919
    const v1, 0x10001

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 920
    const/4 v2, 0x0

    aput v2, v12, v1

    goto :goto_0

    .line 928
    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 929
    add-int v2, p2, v1

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, p2, 0x1

    rem-int v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v13, v3

    aput-byte v3, v13, v2

    .line 928
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 931
    :cond_1
    add-int/lit8 v1, p2, 0x14

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 932
    const/4 v2, 0x0

    aput-char v2, v15, v1

    goto :goto_2

    .line 934
    :cond_2
    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, v13, v2

    aput-byte v2, v13, v1

    .line 938
    const/4 v1, 0x0

    aget-byte v1, v13, v1

    and-int/lit16 v1, v1, 0xff

    .line 939
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    move/from16 v0, p2

    if-gt v3, v0, :cond_3

    .line 940
    add-int/lit8 v2, v3, 0x1

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    .line 941
    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    aget v4, v12, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, v12, v1

    .line 939
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    goto :goto_3

    .line 945
    :cond_3
    const/4 v1, 0x1

    :goto_4
    const/high16 v2, 0x10000

    if-gt v1, v2, :cond_4

    .line 946
    aget v2, v12, v1

    add-int/lit8 v3, v1, -0x1

    aget v3, v12, v3

    add-int/2addr v2, v3

    aput v2, v12, v1

    .line 945
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 949
    :cond_4
    const/4 v1, 0x1

    aget-byte v1, v13, v1

    and-int/lit16 v2, v1, 0xff

    .line 950
    const/4 v1, 0x0

    :goto_5
    move/from16 v0, p2

    if-ge v1, v0, :cond_5

    .line 951
    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v13, v3

    and-int/lit16 v3, v3, 0xff

    .line 952
    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    aget v4, v12, v2

    add-int/lit8 v4, v4, -0x1

    aput v4, v12, v2

    aput v1, v14, v4

    .line 950
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_5

    .line 956
    :cond_5
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, v13, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    aget v2, v12, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v12, v1

    aput p2, v14, v2

    .line 962
    const/16 v1, 0x100

    :goto_6
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    .line 963
    const/4 v2, 0x0

    aput-boolean v2, v11, v1

    .line 964
    aput v1, v9, v1

    goto :goto_6

    .line 967
    :cond_6
    const/16 v4, 0x16c

    :cond_7
    const/4 v1, 0x1

    if-eq v4, v1, :cond_a

    .line 968
    div-int/lit8 v4, v4, 0x3

    move v3, v4

    .line 969
    :goto_7
    const/16 v1, 0xff

    if-gt v3, v1, :cond_7

    .line 970
    aget v5, v9, v3

    .line 971
    add-int/lit8 v1, v5, 0x1

    shl-int/lit8 v1, v1, 0x8

    aget v6, v12, v1

    shl-int/lit8 v1, v5, 0x8

    aget v7, v12, v1

    .line 974
    sub-int v1, v3, v4

    aget v1, v9, v1

    move v2, v3

    :goto_8
    add-int/lit8 v8, v1, 0x1

    shl-int/lit8 v8, v8, 0x8

    aget v8, v12, v8

    shl-int/lit8 v18, v1, 0x8

    aget v18, v12, v18

    sub-int v8, v8, v18

    sub-int v18, v6, v7

    move/from16 v0, v18

    if-le v8, v0, :cond_8

    .line 976
    aput v1, v9, v2

    .line 977
    sub-int/2addr v2, v4

    .line 978
    add-int/lit8 v1, v4, -0x1

    if-gt v2, v1, :cond_9

    .line 982
    :cond_8
    aput v5, v9, v2

    .line 969
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 974
    :cond_9
    sub-int v1, v2, v4

    aget v1, v9, v1

    goto :goto_8

    .line 967
    :cond_a
    const/4 v1, 0x0

    move v8, v1

    :goto_9
    const/16 v1, 0xff

    if-gt v8, v1, :cond_b

    .line 993
    aget v18, v9, v8

    .line 1002
    const/4 v1, 0x0

    move v7, v1

    :goto_a
    const/16 v1, 0xff

    if-gt v7, v1, :cond_e

    .line 1003
    shl-int/lit8 v1, v18, 0x8

    add-int v19, v1, v7

    .line 1004
    aget v20, v12, v19

    .line 1005
    const/high16 v1, 0x200000

    and-int v1, v1, v20

    const/high16 v2, 0x200000

    if-eq v1, v2, :cond_d

    .line 1006
    const v1, -0x200001

    and-int v3, v20, v1

    .line 1007
    add-int/lit8 v1, v19, 0x1

    aget v1, v12, v1

    const v2, -0x200001

    and-int/2addr v1, v2

    add-int/lit8 v4, v1, -0x1

    .line 1008
    if-le v4, v3, :cond_c

    .line 1009
    const/4 v5, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/bzip2/BlockSort;->mainQSort3(Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;IIII)V

    .line 1010
    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/tools/bzip2/BlockSort;->workDone:I

    move/from16 v0, v16

    if-le v1, v0, :cond_c

    .line 1070
    :cond_b
    return-void

    .line 1008
    :cond_c
    const/high16 v1, 0x200000

    or-int v1, v1, v20

    aput v1, v12, v19

    .line 1005
    :cond_d
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_a

    .line 1023
    :cond_e
    const/4 v1, 0x0

    :goto_b
    const/16 v2, 0xff

    if-gt v1, v2, :cond_f

    .line 1024
    shl-int/lit8 v2, v1, 0x8

    add-int v2, v2, v18

    aget v2, v12, v2

    const v3, -0x200001

    and-int/2addr v2, v3

    aput v2, v10, v1

    .line 1023
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1027
    :cond_f
    shl-int/lit8 v1, v18, 0x8

    aget v1, v12, v1

    const v2, -0x200001

    and-int/2addr v1, v2

    add-int/lit8 v2, v18, 0x1

    shl-int/lit8 v2, v2, 0x8

    aget v3, v12, v2

    move v2, v1

    :goto_c
    const v1, -0x200001

    and-int/2addr v1, v3

    if-ge v2, v1, :cond_12

    .line 1028
    aget v1, v14, v2

    .line 1029
    aget-byte v4, v13, v1

    and-int/lit16 v4, v4, 0xff

    .line 1030
    aget-boolean v5, v11, v4

    if-nez v5, :cond_10

    .line 1031
    aget v5, v10, v4

    if-nez v1, :cond_11

    move/from16 v1, p2

    :goto_d
    aput v1, v14, v5

    .line 1032
    aget v1, v10, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, v10, v4

    .line 1027
    :cond_10
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_c

    .line 1031
    :cond_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1036
    :cond_12
    const/16 v1, 0x100

    :goto_e
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_13

    .line 1037
    shl-int/lit8 v2, v1, 0x8

    add-int v2, v2, v18

    aget v3, v12, v2

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    aput v3, v12, v2

    goto :goto_e

    .line 1048
    :cond_13
    const/4 v1, 0x1

    aput-boolean v1, v11, v18

    .line 1050
    const/16 v1, 0xff

    if-ge v8, v1, :cond_16

    .line 1051
    shl-int/lit8 v1, v18, 0x8

    aget v1, v12, v1

    const v2, -0x200001

    and-int v3, v1, v2

    .line 1052
    const v1, -0x200001

    add-int/lit8 v2, v18, 0x1

    shl-int/lit8 v2, v2, 0x8

    aget v2, v12, v2

    and-int/2addr v1, v2

    sub-int v4, v1, v3

    .line 1053
    const/4 v1, 0x0

    move v2, v1

    .line 1055
    :goto_f
    shr-int v1, v4, v2

    const v5, 0xfffe

    if-le v1, v5, :cond_14

    .line 1056
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_f

    .line 1059
    :cond_14
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v4, :cond_16

    .line 1060
    add-int v5, v3, v1

    aget v5, v14, v5

    .line 1061
    shr-int v6, v1, v2

    int-to-char v6, v6

    .line 1062
    aput-char v6, v15, v5

    .line 1063
    const/16 v7, 0x14

    if-ge v5, v7, :cond_15

    .line 1064
    add-int v5, v5, p2

    add-int/lit8 v5, v5, 0x1

    aput-char v6, v15, v5

    .line 1059
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1050
    :cond_16
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_9
.end method
