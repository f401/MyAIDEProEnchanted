.class public final Lcom/google/common/math/Quantiles$ScaleAndIndex;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaleAndIndex"
.end annotation


# instance fields
.field private final index:I

.field private final scale:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-static {p2, p1}, Lcom/google/common/math/Quantiles;->access$300(II)V

    .line 220
    iput p1, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    .line 221
    iput p2, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->index:I

    .line 222
    return-void
.end method

.method synthetic constructor <init>(IILcom/google/common/math/Quantiles$1;)V
    .registers 4

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/Quantiles$ScaleAndIndex;-><init>(II)V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/Collection;)D
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .line 233
    invoke-static {p1}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([D)D
    .registers 4

    .line 244
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([I)D
    .registers 4

    .line 267
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$500([I)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([J)D
    .registers 4

    .line 256
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$400([J)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs computeInPlace([D)D
    .registers 12

    const/4 v1, 0x0

    .line 278
    array-length v0, p1

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_5
    const-string v2, "Cannot calculate quantiles of an empty dataset"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 279
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$600([D)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 280
    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    .line 301
    :goto_12
    return-wide v0

    :cond_13
    move v0, v1

    .line 278
    goto :goto_5

    .line 290
    :cond_15
    iget v0, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->index:I

    int-to-long v2, v0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-long v4, v0

    mul-long/2addr v2, v4

    .line 294
    iget v0, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    int-to-long v4, v0

    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v2, v3, v4, v5, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v4

    long-to-int v4, v4

    .line 295
    int-to-long v6, v4

    iget v0, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    int-to-long v8, v0

    mul-long/2addr v6, v8

    sub-long/2addr v2, v6

    long-to-int v5, v2

    .line 296
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, p1, v1, v0}, Lcom/google/common/math/Quantiles;->access$700(I[DII)V

    .line 297
    if-nez v5, :cond_39

    .line 298
    aget-wide v0, p1, v4

    goto :goto_12

    .line 300
    :cond_39
    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v1, v4, 0x1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, p1, v1, v2}, Lcom/google/common/math/Quantiles;->access$700(I[DII)V

    .line 301
    aget-wide v0, p1, v4

    add-int/lit8 v2, v4, 0x1

    aget-wide v2, p1, v2

    int-to-double v4, v5

    iget v6, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    int-to-double v6, v6

    invoke-static/range {v0 .. v7}, Lcom/google/common/math/Quantiles;->access$800(DDDD)D

    move-result-wide v0

    goto :goto_12
.end method
