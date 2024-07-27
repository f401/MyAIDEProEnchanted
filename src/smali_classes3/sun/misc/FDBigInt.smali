.class Lsun/misc/FDBigInt;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field data:[I

.field nWords:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 2414
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x1

    .line 2419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2420
    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 2421
    new-array v0, v0, [I

    iput-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    .line 2422
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 2423
    return-void
.end method

.method public constructor <init>(J)V
    .registers 10

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 2425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2426
    new-array v2, v1, [I

    iput-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    .line 2427
    const/4 v3, 0x0

    long-to-int v4, p1

    aput v4, v2, v3

    .line 2428
    const/16 v3, 0x20

    ushr-long v4, p1, v3

    long-to-int v3, v4

    aput v3, v2, v0

    .line 2429
    aget v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 2430
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(J[CII)V
    .registers 13

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 2442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2443
    add-int/lit8 v0, p5, 0x8

    div-int/lit8 v0, v0, 0x9

    .line 2444
    if-ge v0, v1, :cond_0

    move v0, v1

    .line 2445
    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    .line 2446
    long-to-int v4, p1

    aput v4, v0, v3

    .line 2447
    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v4, v4

    aput v4, v0, v2

    .line 2448
    aget v0, v0, v2

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iput v1, p0, Lsun/misc/FDBigInt;->nWords:I

    move v1, p4

    .line 2449
    :goto_0
    add-int/lit8 v0, p5, -0x5

    if-ge v1, v0, :cond_3

    .line 2453
    aget-char v0, p3, v1

    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v4, v1, 0x1

    .line 2455
    :goto_1
    add-int/lit8 v5, v1, 0x5

    if-ge v4, v5, :cond_2

    .line 2456
    mul-int/lit8 v0, v0, 0xa

    aget-char v5, p3, v4

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2458
    :cond_2
    const v1, 0x186a0

    invoke-virtual {p0, v1, v0}, Lsun/misc/FDBigInt;->multaddMe(II)V

    move v1, v4

    .line 2459
    goto :goto_0

    :cond_3
    move v0, v3

    move v4, v2

    .line 2462
    :goto_2
    if-ge v1, p5, :cond_4

    .line 2463
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p3, v1

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x30

    .line 2464
    mul-int/lit8 v3, v4, 0xa

    add-int/lit8 v1, v1, 0x1

    move v4, v3

    goto :goto_2

    .line 2466
    :cond_4
    if-eq v4, v2, :cond_5

    .line 2467
    invoke-virtual {p0, v4, v0}, Lsun/misc/FDBigInt;->multaddMe(II)V

    .line 2469
    :cond_5
    return-void
.end method

.method public constructor <init>(Lsun/misc/FDBigInt;)V
    .registers 6

    const/4 v3, 0x0

    .line 2432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2433
    iget v0, p1, Lsun/misc/FDBigInt;->nWords:I

    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    new-array v1, v0, [I

    iput-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    .line 2434
    iget-object v2, p1, Lsun/misc/FDBigInt;->data:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2435
    return-void
.end method

.method private constructor <init>([II)V
    .registers 3

    .line 2437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2438
    iput-object p1, p0, Lsun/misc/FDBigInt;->data:[I

    .line 2439
    iput p2, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 2440
    return-void
.end method

.method private static dataInRangeIsZero(IILsun/misc/FDBigInt;)Z
    .registers 4

    .line 2723
    :goto_0
    if-ge p0, p1, :cond_1

    .line 2724
    iget-object v0, p2, Lsun/misc/FDBigInt;->data:[I

    aget v0, v0, p0

    if-eqz v0, :cond_0

    .line 2725
    const/4 v0, 0x0

    .line 2726
    :goto_1
    return v0

    .line 2724
    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 2726
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;
    .registers 14

    .line 2661
    const-wide/16 v4, 0x0

    .line 2664
    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    iget v1, p1, Lsun/misc/FDBigInt;->nWords:I

    if-lt v0, v1, :cond_1

    .line 2665
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    .line 2666
    iget v1, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 2667
    iget-object v3, p1, Lsun/misc/FDBigInt;->data:[I

    .line 2668
    iget v2, p1, Lsun/misc/FDBigInt;->nWords:I

    .line 2675
    :goto_0
    new-array v7, v1, [I

    .line 2676
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_2

    .line 2677
    aget v8, v0, v6

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 2678
    if-ge v6, v2, :cond_0

    .line 2679
    aget v8, v3, v6

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 2681
    :cond_0
    long-to-int v8, v4

    aput v8, v7, v6

    .line 2682
    const/16 v8, 0x20

    shr-long/2addr v4, v8

    .line 2676
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2670
    :cond_1
    iget-object v0, p1, Lsun/misc/FDBigInt;->data:[I

    .line 2671
    iget v1, p1, Lsun/misc/FDBigInt;->nWords:I

    .line 2672
    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    .line 2673
    iget v2, p0, Lsun/misc/FDBigInt;->nWords:I

    goto :goto_0

    .line 2684
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_3

    .line 2686
    array-length v0, v7

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [I

    .line 2687
    const/4 v0, 0x0

    const/4 v2, 0x0

    array-length v3, v7

    invoke-static {v7, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2688
    long-to-int v0, v4

    aput v0, v1, v6

    .line 2689
    new-instance v0, Lsun/misc/FDBigInt;

    add-int/lit8 v2, v6, 0x1

    invoke-direct {v0, v1, v2}, Lsun/misc/FDBigInt;-><init>([II)V

    .line 2691
    :goto_2
    return-object v0

    :cond_3
    new-instance v0, Lsun/misc/FDBigInt;

    invoke-direct {v0, v7, v6}, Lsun/misc/FDBigInt;-><init>([II)V

    goto :goto_2
.end method

.method public cmp(Lsun/misc/FDBigInt;)I
    .registers 7

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 2738
    iget v3, p0, Lsun/misc/FDBigInt;->nWords:I

    iget v4, p1, Lsun/misc/FDBigInt;->nWords:I

    if-le v3, v4, :cond_2

    .line 2741
    add-int/lit8 v2, v3, -0x1

    :goto_0
    add-int/lit8 v3, v4, -0x1

    if-le v2, v3, :cond_5

    .line 2743
    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    aget v3, v3, v2

    if-eqz v3, :cond_1

    .line 2773
    :cond_0
    :goto_1
    return v0

    .line 2742
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2744
    :cond_2
    if-ge v3, v4, :cond_4

    .line 2747
    add-int/lit8 v2, v4, -0x1

    :goto_2
    add-int/lit8 v4, v3, -0x1

    if-le v2, v4, :cond_5

    .line 2749
    iget-object v4, p1, Lsun/misc/FDBigInt;->data:[I

    aget v4, v4, v2

    if-eqz v4, :cond_3

    move v0, v1

    goto :goto_1

    .line 2748
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 2751
    :cond_4
    add-int/lit8 v2, v3, -0x1

    .line 2753
    :cond_5
    :goto_3
    if-lez v2, :cond_6

    .line 2754
    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    aget v3, v3, v2

    iget-object v4, p1, Lsun/misc/FDBigInt;->data:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_7

    .line 2758
    :cond_6
    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    aget v3, v3, v2

    .line 2759
    iget-object v4, p1, Lsun/misc/FDBigInt;->data:[I

    aget v2, v4, v2

    .line 2760
    if-gez v3, :cond_8

    .line 2762
    if-gez v2, :cond_0

    .line 2763
    sub-int v0, v3, v2

    goto :goto_1

    .line 2753
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2769
    :cond_8
    if-gez v2, :cond_9

    move v0, v1

    .line 2771
    goto :goto_1

    .line 2773
    :cond_9
    sub-int v0, v3, v2

    goto :goto_1
.end method

.method public longValue()J
    .registers 9

    const-wide v6, 0xffffffffL

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2849
    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    if-ne v0, v1, :cond_0

    .line 2852
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    aget v0, v0, v4

    int-to-long v0, v0

    and-long/2addr v0, v6

    .line 2854
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    aget v1, v0, v1

    int-to-long v2, v1

    aget v0, v0, v4

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method public lshiftMe(I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2477
    if-gtz p1, :cond_2

    .line 2478
    if-nez p1, :cond_1

    .line 2514
    :cond_0
    return-void

    .line 2481
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative shift count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2483
    :cond_2
    shr-int/lit8 v3, p1, 0x5

    .line 2484
    and-int/lit8 v4, p1, 0x1f

    .line 2485
    rsub-int/lit8 v5, v4, 0x20

    .line 2486
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    .line 2487
    iget-object v6, p0, Lsun/misc/FDBigInt;->data:[I

    .line 2488
    iget v1, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int v2, v1, v3

    add-int/lit8 v2, v2, 0x1

    array-length v7, v0

    if-le v2, v7, :cond_3

    .line 2490
    add-int v0, v1, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 2492
    :cond_3
    iget v2, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int v7, v2, v3

    .line 2493
    add-int/lit8 v1, v2, -0x1

    .line 2494
    if-nez v4, :cond_4

    .line 2496
    invoke-static {v6, v9, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2497
    add-int/lit8 v1, v3, -0x1

    .line 2505
    :goto_0
    if-ltz v1, :cond_6

    .line 2506
    aput v9, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2499
    :cond_4
    add-int/lit8 v2, v7, -0x1

    aget v8, v6, v1

    ushr-int/2addr v8, v5

    aput v8, v0, v7

    .line 2500
    :goto_1
    if-lt v1, v10, :cond_5

    .line 2501
    aget v7, v6, v1

    add-int/lit8 v1, v1, -0x1

    shl-int/2addr v7, v4

    aget v8, v6, v1

    ushr-int/2addr v8, v5

    or-int/2addr v7, v8

    aput v7, v0, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2503
    :cond_5
    aget v1, v6, v1

    shl-int/2addr v1, v4

    aput v1, v0, v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 2508
    :cond_6
    iput-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    .line 2509
    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 2512
    :goto_2
    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    if-le v0, v10, :cond_0

    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-nez v1, :cond_0

    .line 2513
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    goto :goto_2
.end method

.method public mult(I)Lsun/misc/FDBigInt;
    .registers 14

    const-wide v10, 0xffffffffL

    const-wide/16 v2, 0x0

    .line 2579
    int-to-long v6, p1

    .line 2584
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v4, v0, -0x1

    aget v1, v1, v4

    int-to-long v4, v1

    and-long/2addr v4, v10

    mul-long/2addr v4, v6

    const-wide/32 v8, 0xfffffff

    cmp-long v1, v4, v8

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-array v5, v0, [I

    .line 2586
    const/4 v4, 0x0

    move-wide v0, v2

    :goto_0
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    if-ge v4, v8, :cond_1

    .line 2587
    iget-object v8, p0, Lsun/misc/FDBigInt;->data:[I

    aget v8, v8, v4

    int-to-long v8, v8

    and-long/2addr v8, v10

    mul-long/2addr v8, v6

    add-long/2addr v0, v8

    .line 2588
    long-to-int v8, v0

    aput v8, v5, v4

    .line 2589
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 2586
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2591
    :cond_1
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 2592
    new-instance v0, Lsun/misc/FDBigInt;

    iget v1, p0, Lsun/misc/FDBigInt;->nWords:I

    invoke-direct {v0, v5, v1}, Lsun/misc/FDBigInt;-><init>([II)V

    .line 2595
    :goto_1
    return-object v0

    .line 2594
    :cond_2
    long-to-int v0, v0

    aput v0, v5, v8

    .line 2595
    new-instance v0, Lsun/misc/FDBigInt;

    iget v1, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v5, v1}, Lsun/misc/FDBigInt;-><init>([II)V

    goto :goto_1
.end method

.method public mult(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;
    .registers 16

    .line 2631
    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    iget v1, p1, Lsun/misc/FDBigInt;->nWords:I

    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 2635
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lsun/misc/FDBigInt;->nWords:I

    if-ge v0, v1, :cond_1

    .line 2636
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    aget v1, v1, v0

    int-to-long v6, v1

    .line 2637
    const-wide/16 v2, 0x0

    .line 2639
    const/4 v1, 0x0

    :goto_1
    iget v5, p1, Lsun/misc/FDBigInt;->nWords:I

    if-ge v1, v5, :cond_0

    .line 2640
    add-int v5, v0, v1

    aget v5, v4, v5

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    iget-object v5, p1, Lsun/misc/FDBigInt;->data:[I

    aget v5, v5, v1

    int-to-long v10, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v6

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    add-long/2addr v2, v8

    .line 2641
    add-int v5, v0, v1

    long-to-int v8, v2

    aput v8, v4, v5

    .line 2642
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 2639
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2644
    :cond_0
    add-int/2addr v1, v0

    long-to-int v2, v2

    aput v2, v4, v1

    .line 2635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2647
    :cond_1
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lez v0, :cond_2

    .line 2648
    aget v1, v4, v0

    if-eqz v1, :cond_3

    .line 2650
    :cond_2
    new-instance v1, Lsun/misc/FDBigInt;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v4, v0}, Lsun/misc/FDBigInt;-><init>([II)V

    return-object v1

    .line 2647
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public multaddMe(II)V
    .registers 15

    const/16 v11, 0x20

    const/4 v10, 0x0

    const-wide v8, 0xffffffffL

    .line 2606
    int-to-long v4, p1

    .line 2610
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    aget v1, v0, v10

    int-to-long v2, v1

    and-long/2addr v2, v8

    mul-long/2addr v2, v4

    int-to-long v6, p2

    and-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 2611
    long-to-int v1, v2

    aput v1, v0, v10

    .line 2612
    ushr-long v0, v2, v11

    .line 2613
    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lsun/misc/FDBigInt;->nWords:I

    if-ge v2, v3, :cond_0

    .line 2614
    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    aget v6, v3, v2

    int-to-long v6, v6

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 2615
    long-to-int v6, v0

    aput v6, v3, v2

    .line 2616
    ushr-long/2addr v0, v11

    .line 2613
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2618
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 2619
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v0, v0

    aput v0, v2, v3

    .line 2620
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 2622
    :cond_1
    return-void
.end method

.method public normalizeMe()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/high16 v4, -0x10000000

    const/4 v0, 0x0

    .line 2530
    .line 2533
    iget v1, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v3, v1, -0x1

    move v2, v0

    move v1, v0

    :goto_0
    if-ltz v3, :cond_0

    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    aget v1, v1, v3

    if-nez v1, :cond_0

    .line 2534
    add-int/lit8 v2, v2, 0x1

    .line 2533
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2536
    :cond_0
    if-ltz v3, :cond_5

    .line 2546
    iget v3, p0, Lsun/misc/FDBigInt;->nWords:I

    sub-int v2, v3, v2

    iput v2, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 2552
    and-int v2, v1, v4

    if-eqz v2, :cond_1

    .line 2555
    const/16 v0, 0x20

    :goto_1
    and-int v2, v1, v4

    if-eqz v2, :cond_3

    .line 2556
    ushr-int/lit8 v1, v1, 0x1

    .line 2555
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2558
    :cond_1
    :goto_2
    const v2, 0xfffff

    if-gt v1, v2, :cond_2

    .line 2560
    shl-int/lit8 v1, v1, 0x8

    .line 2561
    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    .line 2563
    :cond_2
    :goto_3
    const v2, 0x7ffffff

    if-gt v1, v2, :cond_3

    .line 2564
    shl-int/lit8 v1, v1, 0x1

    .line 2565
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2568
    :cond_3
    if-eqz v0, :cond_4

    .line 2569
    invoke-virtual {p0, v0}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 2570
    :cond_4
    return v0

    .line 2538
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "zero value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public quoRemIteration(Lsun/misc/FDBigInt;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2794
    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    iget v1, p1, Lsun/misc/FDBigInt;->nWords:I

    if-ne v0, v1, :cond_4

    .line 2800
    add-int/lit8 v5, v0, -0x1

    .line 2801
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    aget v0, v0, v5

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iget-object v2, p1, Lsun/misc/FDBigInt;->data:[I

    aget v2, v2, v5

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 2802
    const-wide/16 v2, 0x0

    .line 2803
    const/4 v4, 0x0

    :goto_0
    if-gt v4, v5, :cond_0

    .line 2804
    iget-object v6, p0, Lsun/misc/FDBigInt;->data:[I

    aget v7, v6, v4

    int-to-long v8, v7

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    iget-object v7, p1, Lsun/misc/FDBigInt;->data:[I

    aget v7, v7, v4

    int-to-long v10, v7

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    mul-long/2addr v10, v0

    sub-long/2addr v8, v10

    add-long/2addr v2, v8

    .line 2805
    long-to-int v7, v2

    aput v7, v6, v4

    .line 2806
    const/16 v6, 0x20

    shr-long/2addr v2, v6

    .line 2803
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2808
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 2812
    const-wide/16 v2, 0x0

    .line 2813
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 2814
    const-wide/16 v2, 0x0

    .line 2815
    const/4 v4, 0x0

    :goto_2
    if-gt v4, v5, :cond_1

    .line 2816
    iget-object v6, p0, Lsun/misc/FDBigInt;->data:[I

    aget v7, v6, v4

    int-to-long v8, v7

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    iget-object v7, p1, Lsun/misc/FDBigInt;->data:[I

    aget v7, v7, v4

    int-to-long v10, v7

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    add-long/2addr v2, v8

    .line 2817
    long-to-int v7, v2

    aput v7, v6, v4

    .line 2818
    const/16 v6, 0x20

    shr-long/2addr v2, v6

    .line 2815
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2829
    :cond_1
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    goto :goto_1

    .line 2808
    :cond_2
    const-wide/16 v2, 0x0

    .line 2837
    const/4 v4, 0x0

    :goto_3
    if-gt v4, v5, :cond_3

    .line 2838
    iget-object v6, p0, Lsun/misc/FDBigInt;->data:[I

    aget v7, v6, v4

    int-to-long v8, v7

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const-wide/16 v10, 0xa

    mul-long/2addr v8, v10

    add-long/2addr v2, v8

    .line 2839
    long-to-int v7, v2

    aput v7, v6, v4

    .line 2840
    const/16 v6, 0x20

    shr-long/2addr v2, v6

    .line 2837
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2842
    :cond_3
    long-to-int v0, v0

    return v0

    .line 2795
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "disparate values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;
    .registers 14

    const-wide v10, 0xffffffffL

    const/4 v3, 0x0

    .line 2700
    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    new-array v5, v0, [I

    .line 2702
    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 2703
    iget v7, p1, Lsun/misc/FDBigInt;->nWords:I

    .line 2705
    const-wide/16 v0, 0x0

    move v4, v3

    move v2, v3

    .line 2706
    :goto_0
    if-ge v4, v6, :cond_2

    .line 2707
    iget-object v8, p0, Lsun/misc/FDBigInt;->data:[I

    aget v8, v8, v4

    int-to-long v8, v8

    and-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 2708
    if-ge v4, v7, :cond_0

    .line 2709
    iget-object v8, p1, Lsun/misc/FDBigInt;->data:[I

    aget v8, v8, v4

    int-to-long v8, v8

    and-long/2addr v8, v10

    sub-long/2addr v0, v8

    .line 2711
    :cond_0
    long-to-int v8, v0

    aput v8, v5, v4

    if-nez v8, :cond_1

    .line 2712
    add-int/lit8 v2, v2, 0x1

    .line 2715
    :goto_1
    const/16 v8, 0x20

    shr-long/2addr v0, v8

    .line 2706
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 2714
    goto :goto_1

    .line 2717
    :cond_2
    new-instance v0, Lsun/misc/FDBigInt;

    sub-int v1, v6, v2

    invoke-direct {v0, v5, v1}, Lsun/misc/FDBigInt;-><init>([II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 2861
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x1e

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2862
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2863
    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2864
    iget v2, p0, Lsun/misc/FDBigInt;->nWords:I

    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 2865
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/misc/FDBigInt;->nWords:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "!)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2867
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 2868
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2869
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2867
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2871
    :cond_1
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2872
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2873
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0
.end method
