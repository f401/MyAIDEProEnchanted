.class public final Lcom/google/common/math/StatsAccumulator;
.super Ljava/lang/Object;
.source "StatsAccumulator.java"


# instance fields
.field private count:J

.field private max:D

.field private mean:D

.field private min:D

.field private sumOfSquaresOfDeltas:D


# direct methods
.method public constructor <init>()V
    .registers 7

    const-wide/high16 v4, 0x7ff8000000000000L  # Double.NaN

    const-wide/16 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 42
    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 43
    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 44
    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 45
    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    return-void
.end method

.method static calculateNewMeanNonFinite(DD)D
    .registers 6

    .line 363
    invoke-static {p0, p1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 371
    :goto_6
    return-wide p2

    .line 366
    :cond_7
    invoke-static {p2, p3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_11

    cmpl-double v0, p0, p2

    if-nez v0, :cond_13

    :cond_11
    move-wide p2, p0

    .line 368
    goto :goto_6

    .line 371
    :cond_13
    const-wide/high16 p2, 0x7ff8000000000000L  # Double.NaN

    goto :goto_6
.end method


# virtual methods
.method public add(D)V
    .registers 12

    const-wide/16 v6, 0x1

    const-wide/high16 v4, 0x7ff8000000000000L  # Double.NaN

    .line 49
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1d

    .line 50
    iput-wide v6, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 51
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 52
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 53
    iput-wide p1, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    .line 54
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 55
    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 71
    :cond_1c
    :goto_1c
    return-void

    .line 58
    :cond_1d
    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 59
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 61
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double v2, p1, v0

    .line 62
    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v2, v4

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 63
    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    sub-double v0, p1, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 68
    :goto_45
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 69
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    goto :goto_1c

    .line 65
    :cond_56
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 66
    iput-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    goto :goto_45
.end method

.method public addAll(Lcom/google/common/math/Stats;)V
    .registers 14

    const-wide/16 v2, 0x0

    .line 136
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 161
    :goto_a
    return-void

    .line 140
    :cond_b
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_30

    .line 141
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 142
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 143
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 144
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->min()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 145
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->max()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    goto :goto_a

    .line 147
    :cond_30
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    .line 148
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 150
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    sub-double/2addr v0, v2

    .line 151
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    iget-wide v6, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v4, v0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 152
    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 153
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v10

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v8

    mul-double/2addr v0, v6

    mul-double/2addr v0, v10

    add-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    .line 158
    :goto_7e
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->min()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    .line 159
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->max()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    goto/16 :goto_a

    .line 155
    :cond_98
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    .line 156
    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    iput-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    goto :goto_7e
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    goto :goto_4

    .line 83
    :cond_18
    return-void
.end method

.method public addAll(Ljava/util/Iterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 92
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    goto :goto_0

    .line 95
    :cond_14
    return-void
.end method

.method public varargs addAll([D)V
    .registers 6

    .line 103
    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_c

    aget-wide v2, p1, v0

    .line 104
    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 106
    :cond_c
    return-void
.end method

.method public varargs addAll([I)V
    .registers 6

    .line 114
    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_d

    aget v2, p1, v0

    .line 115
    int-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 117
    :cond_d
    return-void
.end method

.method public varargs addAll([J)V
    .registers 6

    .line 126
    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_d

    aget-wide v2, p1, v0

    .line 127
    long-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 129
    :cond_d
    return-void
.end method

.method public count()J
    .registers 3

    .line 170
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    return-wide v0
.end method

.method public max()D
    .registers 5

    .line 336
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 337
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    return-wide v0

    .line 336
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public mean()D
    .registers 5

    .line 192
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 193
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    return-wide v0

    .line 192
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public min()D
    .registers 5

    .line 318
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 319
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    return-wide v0

    .line 318
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final populationStandardDeviation()D
    .registers 3

    .line 255
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->populationVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final populationVariance()D
    .registers 5

    .line 228
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 229
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 230
    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    .line 235
    :goto_16
    return-wide v0

    .line 228
    :cond_17
    const/4 v0, 0x0

    goto :goto_9

    .line 232
    :cond_19
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 233
    const-wide/16 v0, 0x0

    goto :goto_16

    .line 235
    :cond_24
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    goto :goto_16
.end method

.method public final sampleStandardDeviation()D
    .registers 3

    .line 301
    invoke-virtual {p0}, Lcom/google/common/math/StatsAccumulator;->sampleVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final sampleVariance()D
    .registers 7

    const-wide/16 v4, 0x1

    .line 275
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_17

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 276
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 277
    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    .line 279
    :goto_16
    return-wide v0

    .line 275
    :cond_17
    const/4 v0, 0x0

    goto :goto_9

    .line 279
    :cond_19
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    goto :goto_16
.end method

.method public snapshot()Lcom/google/common/math/Stats;
    .registers 13

    .line 165
    new-instance v1, Lcom/google/common/math/Stats;

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    iget-wide v4, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v6, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    iget-wide v8, p0, Lcom/google/common/math/StatsAccumulator;->min:D

    iget-wide v10, p0, Lcom/google/common/math/StatsAccumulator;->max:D

    invoke-direct/range {v1 .. v11}, Lcom/google/common/math/Stats;-><init>(JDDDD)V

    return-object v1
.end method

.method public final sum()D
    .registers 5

    .line 209
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->mean:D

    iget-wide v2, p0, Lcom/google/common/math/StatsAccumulator;->count:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method sumOfSquaresOfDeltas()D
    .registers 3

    .line 341
    iget-wide v0, p0, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas:D

    return-wide v0
.end method
