.class public final Lcom/google/common/math/Quantiles$ScaleAndIndexes;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaleAndIndexes"
.end annotation


# instance fields
.field private final indexes:[I

.field private final scale:I


# direct methods
.method private constructor <init>(I[I)V
    .registers 6

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p2, v0

    .line 319
    invoke-static {v2, p1}, Lcom/google/common/math/Quantiles;->access$300(II)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_0
    iput p1, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    .line 322
    iput-object p2, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    .line 323
    return-void
.end method

.method synthetic constructor <init>(I[ILcom/google/common/math/Quantiles$1;)V
    .registers 4

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;-><init>(I[I)V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/Collection;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 335
    invoke-static {p1}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([D)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 347
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 372
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$500([I)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs compute([J)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 360
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$400([J)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs computeInPlace([D)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 384
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Cannot calculate quantiles of an empty dataset"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 385
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$600([D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 387
    iget-object v3, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget v1, v3, v0

    .line 388
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 390
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 436
    :goto_2
    return-object v0

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v1, v0

    new-array v9, v1, [I

    .line 399
    array-length v1, v0

    new-array v10, v1, [I

    .line 401
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 402
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 406
    aget v3, v3, v1

    int-to-long v4, v3

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    int-to-long v6, v3

    mul-long/2addr v4, v6

    .line 411
    iget v3, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-long v6, v3

    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v4, v5, v6, v7, v3}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v6

    long-to-int v3, v6

    .line 412
    int-to-long v6, v3

    iget v8, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-long v12, v8

    mul-long/2addr v6, v12

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 413
    aput v3, v9, v1

    .line 414
    aput v4, v10, v1

    .line 415
    aput v3, v0, v2

    .line 416
    add-int/lit8 v2, v2, 0x1

    .line 417
    if-eqz v4, :cond_3

    .line 418
    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 419
    add-int/lit8 v2, v2, 0x1

    .line 403
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 422
    :cond_4
    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 423
    const/4 v1, 0x0

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x0

    array-length v3, p1

    add-int/lit8 v5, v3, -0x1

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/Quantiles;->access$900([III[DII)V

    .line 425
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 426
    const/4 v0, 0x0

    move v8, v0

    :goto_4
    iget-object v0, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    array-length v1, v0

    if-ge v8, v1, :cond_6

    .line 427
    aget v2, v9, v8

    .line 428
    aget v4, v10, v8

    .line 429
    if-nez v4, :cond_5

    .line 430
    aget v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-wide v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :goto_5
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_4

    .line 432
    :cond_5
    aget v12, v0, v8

    .line 433
    aget-wide v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, p1, v2

    int-to-double v4, v4

    iget v6, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    int-to-double v6, v6

    invoke-static/range {v0 .. v7}, Lcom/google/common/math/Quantiles;->access$800(DDDD)D

    move-result-wide v0

    .line 432
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 436
    :cond_6
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_2
.end method
