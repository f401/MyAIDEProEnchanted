.class public final Lcom/google/common/math/Quantiles;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/Quantiles$Scale;,
        Lcom/google/common/math/Quantiles$ScaleAndIndex;,
        Lcom/google/common/math/Quantiles$ScaleAndIndexes;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(II)V
    .registers 2

    .line 131
    invoke-static {p0, p1}, Lcom/google/common/math/Quantiles;->checkIndex(II)V

    return-void
.end method

.method static synthetic access$400([J)[D
    .registers 2

    .line 131
    invoke-static {p0}, Lcom/google/common/math/Quantiles;->longsToDoubles([J)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500([I)[D
    .registers 2

    .line 131
    invoke-static {p0}, Lcom/google/common/math/Quantiles;->intsToDoubles([I)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600([D)Z
    .registers 2

    .line 131
    invoke-static {p0}, Lcom/google/common/math/Quantiles;->containsNaN([D)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(I[DII)V
    .registers 4

    .line 131
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/math/Quantiles;->selectInPlace(I[DII)V

    return-void
.end method

.method static synthetic access$800(DDDD)D
    .registers 10

    .line 131
    invoke-static/range {p0 .. p7}, Lcom/google/common/math/Quantiles;->interpolate(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900([III[DII)V
    .registers 6

    .line 131
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    return-void
.end method

.method private static checkIndex(II)V
    .registers 4

    .line 472
    if-ltz p0, :cond_5

    if-gt p0, p1, :cond_5

    .line 476
    return-void

    .line 473
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Quantile indexes must be between 0 and the scale, which is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static chooseNextSelection([IIIII)I
    .registers 10

    .line 645
    if-ne p1, p2, :cond_3

    .line 675
    :goto_2
    return p1

    .line 651
    :cond_3
    add-int v0, p3, p4

    ushr-int/lit8 v3, v0, 0x1

    move v0, p1

    move v2, p2

    .line 660
    :goto_9
    add-int/lit8 v1, v0, 0x1

    if-le v2, v1, :cond_1f

    .line 661
    add-int v1, v0, v2

    ushr-int/lit8 v1, v1, 0x1

    .line 662
    aget v4, p0, v1

    if-le v4, v3, :cond_17

    move v2, v1

    .line 663
    goto :goto_9

    .line 664
    :cond_17
    aget v0, p0, v1

    if-ge v0, v3, :cond_1d

    move v0, v1

    .line 665
    goto :goto_9

    :cond_1d
    move p1, v1

    .line 667
    goto :goto_2

    .line 672
    :cond_1f
    add-int v1, p3, p4

    aget v3, p0, v0

    sub-int/2addr v1, v3

    aget v3, p0, v2

    sub-int/2addr v1, v3

    if-lez v1, :cond_2b

    move p1, v2

    .line 673
    goto :goto_2

    :cond_2b
    move p1, v0

    .line 675
    goto :goto_2
.end method

.method private static varargs containsNaN([D)Z
    .registers 7

    const/4 v0, 0x0

    .line 442
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-wide v4, p0, v1

    .line 443
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 444
    const/4 v0, 0x1

    .line 447
    :cond_e
    return v0

    .line 442
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private static interpolate(DDDD)D
    .registers 14

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    const-wide/high16 v2, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    .line 456
    cmpl-double v4, p0, v0

    if-nez v4, :cond_f

    .line 457
    cmpl-double v2, p2, v2

    if-nez v2, :cond_e

    .line 459
    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    .line 468
    :cond_e
    :goto_e
    return-wide v0

    .line 464
    :cond_f
    cmpl-double v0, p2, v2

    if-nez v0, :cond_15

    move-wide v0, v2

    .line 466
    goto :goto_e

    .line 468
    :cond_15
    sub-double v0, p2, p0

    mul-double/2addr v0, p4

    div-double/2addr v0, p6

    add-double/2addr v0, p0

    goto :goto_e
.end method

.method private static intsToDoubles([I)[D
    .registers 7

    .line 488
    array-length v1, p0

    .line 489
    new-array v2, v1, [D

    .line 490
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_e

    .line 491
    aget v3, p0, v0

    int-to-double v4, v3

    aput-wide v4, v2, v0

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 493
    :cond_e
    return-object v2
.end method

.method private static longsToDoubles([J)[D
    .registers 7

    .line 479
    array-length v1, p0

    .line 480
    new-array v2, v1, [D

    .line 481
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_e

    .line 482
    aget-wide v4, p0, v0

    long-to-double v4, v4

    aput-wide v4, v2, v0

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 484
    :cond_e
    return-object v2
.end method

.method public static median()Lcom/google/common/math/Quantiles$ScaleAndIndex;
    .registers 2

    .line 135
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/math/Quantiles$Scale;->index(I)Lcom/google/common/math/Quantiles$ScaleAndIndex;

    move-result-object v0

    return-object v0
.end method

.method private static movePivotToStartOfSlice([DII)V
    .registers 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 583
    add-int v0, p1, p2

    ushr-int/lit8 v4, v0, 0x1

    .line 588
    aget-wide v6, p0, p2

    aget-wide v8, p0, v4

    cmpg-double v0, v6, v8

    if-gez v0, :cond_26

    move v0, v1

    .line 589
    :goto_f
    aget-wide v6, p0, v4

    aget-wide v8, p0, p1

    cmpg-double v3, v6, v8

    if-gez v3, :cond_28

    move v3, v1

    .line 590
    :goto_18
    aget-wide v6, p0, p2

    aget-wide v8, p0, p1

    cmpg-double v5, v6, v8

    if-gez v5, :cond_2a

    .line 591
    :goto_20
    if-ne v0, v3, :cond_2c

    .line 593
    invoke-static {p0, v4, p1}, Lcom/google/common/math/Quantiles;->swap([DII)V

    .line 599
    :cond_25
    :goto_25
    return-void

    :cond_26
    move v0, v2

    .line 588
    goto :goto_f

    :cond_28
    move v3, v2

    .line 589
    goto :goto_18

    :cond_2a
    move v1, v2

    .line 590
    goto :goto_20

    .line 594
    :cond_2c
    if-eq v0, v1, :cond_25

    .line 596
    invoke-static {p0, p1, p2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    goto :goto_25
.end method

.method private static partition([DII)I
    .registers 9

    .line 556
    invoke-static {p0, p1, p2}, Lcom/google/common/math/Quantiles;->movePivotToStartOfSlice([DII)V

    .line 557
    aget-wide v2, p0, p1

    move v0, p2

    move v1, p2

    .line 562
    :goto_7
    if-le v1, p1, :cond_18

    .line 563
    aget-wide v4, p0, v1

    cmpl-double v4, v4, v2

    if-lez v4, :cond_14

    .line 564
    invoke-static {p0, v0, v1}, Lcom/google/common/math/Quantiles;->swap([DII)V

    .line 565
    add-int/lit8 v0, v0, -0x1

    .line 562
    :cond_14
    add-int/lit8 p2, v1, -0x1

    move v1, p2

    goto :goto_7

    .line 572
    :cond_18
    invoke-static {p0, p1, v0}, Lcom/google/common/math/Quantiles;->swap([DII)V

    .line 573
    return v0
.end method

.method public static percentiles()Lcom/google/common/math/Quantiles$Scale;
    .registers 1

    .line 145
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    return-object v0
.end method

.method public static quartiles()Lcom/google/common/math/Quantiles$Scale;
    .registers 1

    .line 140
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    return-object v0
.end method

.method public static scale(I)Lcom/google/common/math/Quantiles$Scale;
    .registers 3

    .line 155
    new-instance v0, Lcom/google/common/math/Quantiles$Scale;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/math/Quantiles$Scale;-><init>(ILcom/google/common/math/Quantiles$1;)V

    return-object v0
.end method

.method private static selectAllInPlace([III[DII)V
    .registers 14

    .line 609
    invoke-static {p0, p1, p2, p4, p5}, Lcom/google/common/math/Quantiles;->chooseNextSelection([IIIII)I

    move-result v6

    .line 610
    aget v7, p0, v6

    .line 613
    invoke-static {v7, p3, p4, p5}, Lcom/google/common/math/Quantiles;->selectInPlace(I[DII)V

    .line 616
    add-int/lit8 v2, v6, -0x1

    .line 617
    :goto_b
    if-lt v2, p1, :cond_14

    aget v0, p0, v2

    if-ne v0, v7, :cond_14

    .line 618
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 620
    :cond_14
    if-lt v2, p1, :cond_1f

    .line 621
    add-int/lit8 v5, v7, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    .line 625
    :cond_1f
    add-int/lit8 v1, v6, 0x1

    .line 626
    :goto_21
    if-gt v1, p2, :cond_2a

    aget v0, p0, v1

    if-ne v0, v7, :cond_2a

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 629
    :cond_2a
    if-gt v1, p2, :cond_35

    .line 630
    add-int/lit8 v4, v7, 0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    .line 632
    :cond_35
    return-void
.end method

.method private static selectInPlace(I[DII)V
    .registers 10

    .line 520
    if-ne p0, p2, :cond_28

    .line 522
    add-int/lit8 v1, p2, 0x1

    move v0, p2

    :goto_5
    if-gt v1, p3, :cond_13

    .line 523
    aget-wide v2, p1, v0

    aget-wide v4, p1, v1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_10

    move v0, v1

    .line 522
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 527
    :cond_13
    if-eq v0, p2, :cond_18

    .line 528
    invoke-static {p1, v0, p2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    .line 544
    :cond_18
    return-void

    .line 535
    :cond_19
    :goto_19
    if-le v1, v0, :cond_18

    .line 536
    invoke-static {p1, v0, v1}, Lcom/google/common/math/Quantiles;->partition([DII)I

    move-result v2

    .line 537
    if-lt v2, p0, :cond_23

    .line 538
    add-int/lit8 v1, v2, -0x1

    .line 540
    :cond_23
    if-gt v2, p0, :cond_19

    .line 541
    add-int/lit8 v0, v2, 0x1

    goto :goto_19

    :cond_28
    move v1, p3

    move v0, p2

    goto :goto_19
.end method

.method private static swap([DII)V
    .registers 7

    .line 681
    aget-wide v0, p0, p1

    .line 682
    aget-wide v2, p0, p2

    aput-wide v2, p0, p1

    .line 683
    aput-wide v0, p0, p2

    .line 684
    return-void
.end method
