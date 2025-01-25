.class public final Lcom/google/common/cache/CacheStats;
.super Ljava/lang/Object;
.source "CacheStats.java"


# instance fields
.field private final evictionCount:J

.field private final hitCount:J

.field private final loadExceptionCount:J

.field private final loadSuccessCount:J

.field private final missCount:J

.field private final totalLoadTime:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .registers 20

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-ltz v2, :cond_51

    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 80
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-ltz v2, :cond_53

    const/4 v2, 0x1

    :goto_15
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 81
    const-wide/16 v4, 0x0

    cmp-long v2, p5, v4

    if-ltz v2, :cond_55

    const/4 v2, 0x1

    :goto_1f
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 82
    const-wide/16 v4, 0x0

    cmp-long v2, p7, v4

    if-ltz v2, :cond_57

    const/4 v2, 0x1

    :goto_29
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 83
    const-wide/16 v4, 0x0

    cmp-long v2, p9, v4

    if-ltz v2, :cond_59

    const/4 v2, 0x1

    :goto_33
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 84
    const-wide/16 v4, 0x0

    cmp-long v2, p11, v4

    if-ltz v2, :cond_5b

    move v2, v3

    :goto_3d
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 86
    iput-wide p1, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 87
    iput-wide p3, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 88
    iput-wide p5, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 89
    iput-wide p7, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 90
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 91
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 92
    return-void

    .line 79
    :cond_51
    const/4 v2, 0x0

    goto :goto_b

    .line 80
    :cond_53
    const/4 v2, 0x0

    goto :goto_15

    .line 81
    :cond_55
    const/4 v2, 0x0

    goto :goto_1f

    .line 82
    :cond_57
    const/4 v2, 0x0

    goto :goto_29

    .line 83
    :cond_59
    const/4 v2, 0x0

    goto :goto_33

    .line 84
    :cond_5b
    const/4 v2, 0x0

    goto :goto_3d
.end method


# virtual methods
.method public averageLoadPenalty()D
    .registers 5

    .line 202
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v0, v2

    .line 203
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    const-wide/16 v0, 0x0

    :goto_d
    return-wide v0

    :cond_e
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    long-to-double v2, v2

    long-to-double v0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v2, v0

    goto :goto_d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 253
    instance-of v1, p1, Lcom/google/common/cache/CacheStats;

    if-eqz v1, :cond_38

    .line 254
    check-cast p1, Lcom/google/common/cache/CacheStats;

    .line 255
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->hitCount:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->missCount:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->evictionCount:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_38

    const/4 v0, 0x1

    .line 262
    :cond_38
    return v0
.end method

.method public evictionCount()J
    .registers 3

    .line 211
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 15

    .line 247
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 248
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    iget-wide v4, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v6, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v8, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v10, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 247
    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v12, v0

    const/4 v0, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v12, v0

    const/4 v0, 0x4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v12, v0

    const/4 v0, 0x5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v12, v0

    invoke-static {v12}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hitCount()J
    .registers 3

    .line 104
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    return-wide v0
.end method

.method public hitRate()D
    .registers 5

    .line 113
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    .line 114
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    :goto_c
    return-wide v0

    :cond_d
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    long-to-double v2, v2

    long-to-double v0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v2, v0

    goto :goto_c
.end method

.method public loadCount()J
    .registers 5

    .line 147
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public loadExceptionCount()J
    .registers 3

    .line 175
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    return-wide v0
.end method

.method public loadExceptionRate()D
    .registers 7

    .line 184
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v0, v2

    .line 185
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_e

    const-wide/16 v0, 0x0

    :goto_d
    return-wide v0

    :cond_e
    long-to-double v2, v2

    long-to-double v0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v2, v0

    goto :goto_d
.end method

.method public loadSuccessCount()J
    .registers 3

    .line 161
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    return-wide v0
.end method

.method public minus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .registers 22

    .line 220
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 221
    const-wide/16 v6, 0x0

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 222
    const-wide/16 v8, 0x0

    sub-long/2addr v2, v6

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 223
    const-wide/16 v10, 0x0

    sub-long/2addr v2, v8

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 224
    const-wide/16 v12, 0x0

    sub-long/2addr v2, v10

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 225
    const-wide/16 v14, 0x0

    sub-long/2addr v2, v12

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    move-wide/from16 v16, v0

    .line 226
    new-instance v3, Lcom/google/common/cache/CacheStats;

    const-wide/16 v18, 0x0

    sub-long v14, v14, v16

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-direct/range {v3 .. v15}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    .line 220
    return-object v3
.end method

.method public missCount()J
    .registers 3

    .line 124
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    return-wide v0
.end method

.method public missRate()D
    .registers 5

    .line 137
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    .line 138
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    const-wide/16 v0, 0x0

    :goto_c
    return-wide v0

    :cond_d
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    long-to-double v2, v2

    long-to-double v0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v2, v0

    goto :goto_c
.end method

.method public plus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .registers 24

    .line 236
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    move-wide/from16 v20, v0

    new-instance v3, Lcom/google/common/cache/CacheStats;

    add-long/2addr v4, v6

    add-long v6, v10, v8

    add-long v8, v14, v12

    add-long v10, v18, v16

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    add-long v12, v12, v20

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-direct/range {v3 .. v15}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v3
.end method

.method public requestCount()J
    .registers 5

    .line 99
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 267
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 268
    const-string v1, "hitCount"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 269
    const-string v1, "missCount"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 270
    const-string v1, "loadSuccessCount"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 271
    const-string v1, "loadExceptionCount"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 272
    const-string v1, "totalLoadTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 273
    const-string v1, "evictionCount"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    return-object v0
.end method

.method public totalLoadTime()J
    .registers 3

    .line 194
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    return-wide v0
.end method
