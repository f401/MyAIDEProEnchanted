.class final Lcom/google/android/gms/internal/ads/ut;
.super Ljava/lang/Object;


# direct methods
.method static DW([BILcom/google/android/gms/internal/ads/vt;)I
    .registers 11

    const/4 v4, 0x7

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    int-to-long v2, v1

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/vt;->DW:J

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v5, v0, 0x1

    aget-byte v1, p0, v0

    const-wide/16 v6, 0x7f

    and-long/2addr v2, v6

    and-int/lit8 v0, v1, 0x7f

    int-to-long v6, v0

    shl-long/2addr v6, v4

    or-long/2addr v2, v6

    move v0, v5

    :goto_1
    if-gez v1, :cond_1

    aget-byte v1, p0, v0

    add-int/lit8 v4, v4, 0x7

    and-int/lit8 v5, v1, 0x7f

    int-to-long v6, v5

    shl-long/2addr v6, v4

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/vt;->DW:J

    goto :goto_0
.end method

.method static DW([BI)J
    .registers 20

    aget-byte v0, p0, p1

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    add-int/lit8 v6, p1, 0x3

    aget-byte v6, p0, v6

    int-to-long v6, v6

    add-int/lit8 v8, p1, 0x4

    aget-byte v8, p0, v8

    int-to-long v8, v8

    add-int/lit8 v10, p1, 0x5

    aget-byte v10, p0, v10

    int-to-long v10, v10

    add-int/lit8 v12, p1, 0x6

    aget-byte v12, p0, v12

    int-to-long v12, v12

    add-int/lit8 v14, p1, 0x7

    aget-byte v14, p0, v14

    int-to-long v14, v14

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x38

    shl-long v14, v14, v16

    const-wide/16 v16, 0xff

    and-long v0, v0, v16

    const-wide/16 v16, 0xff

    and-long v2, v2, v16

    const/16 v16, 0x8

    shl-long v2, v2, v16

    or-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v2, v8

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v2, v10

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    or-long/2addr v0, v14

    return-wide v0
.end method

.method static FH([BI)D
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/ut;->DW([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static FH([BILcom/google/android/gms/internal/ads/vt;)I
    .registers 7

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    iget v1, p2, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ltz v1, :cond_1

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, p2, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/ju;->j6:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, p2, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->DW()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0
.end method

.method static Hw([BI)F
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/ut;->j6([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static Hw([BILcom/google/android/gms/internal/ads/vt;)I
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    iget v1, p2, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ltz v1, :cond_1

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, p2, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Gv;->DW([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->DW()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0
.end method

.method static j6(I[BIILcom/google/android/gms/internal/ads/ou;Lcom/google/android/gms/internal/ads/vt;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/android/gms/internal/ads/ou",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/vt;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/android/gms/internal/ads/iu;

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v1

    iget v2, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ne p0, v2, :cond_0

    invoke-static {p1, v1, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    goto :goto_0

    :cond_0
    return v0
.end method

.method static j6(I[BIILcom/google/android/gms/internal/ads/vt;)I
    .registers 8

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_8

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p2, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Hw()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0

    :cond_2
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v2, v0, 0x4

    const/4 v1, 0x0

    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_3

    invoke-static {p1, v0, p4}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    iget v1, p4, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-eq v1, v2, :cond_3

    invoke-static {v1, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BIILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    goto :goto_1

    :cond_3
    if-gt v0, p3, :cond_4

    if-eq v1, v2, :cond_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0

    :cond_5
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    iget v1, p4, Lcom/google/android/gms/internal/ads/vt;->j6:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_6
    add-int/lit8 v0, p2, 0x8

    goto :goto_0

    :cond_7
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Hw()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0
.end method

.method static j6(I[BIILcom/google/android/gms/internal/ads/yv;Lcom/google/android/gms/internal/ads/vt;)I
    .registers 13

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_b

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/ut;->j6([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    add-int/lit8 v0, p2, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Hw()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/yv;->Hw()Lcom/google/android/gms/internal/ads/yv;

    move-result-object v4

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v6, v0, 0x4

    const/4 v0, 0x0

    move v1, p2

    :goto_1
    if-ge v1, p3, :cond_3

    invoke-static {p1, v1, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    iget v0, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-eq v0, v6, :cond_2

    move-object v1, p1

    move v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BIILcom/google/android/gms/internal/ads/yv;Lcom/google/android/gms/internal/ads/vt;)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    if-gt v1, p3, :cond_4

    if-ne v0, v6, :cond_4

    invoke-virtual {p4, p0, v4}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0

    :cond_5
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ltz v1, :cond_8

    array-length v2, p1

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_7

    if-nez v1, :cond_6

    sget-object v2, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    invoke-virtual {p4, p0, v2}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    :goto_2
    add-int/2addr v0, v1

    goto :goto_0

    :cond_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/yt;->j6([BII)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    invoke-virtual {p4, p0, v2}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->DW()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0

    :cond_9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/ut;->DW([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    add-int/lit8 v0, p2, 0x8

    goto :goto_0

    :cond_a
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    iget-wide v2, p5, Lcom/google/android/gms/internal/ads/vt;->DW:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, p0, v1}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    goto :goto_0

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Hw()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0
.end method

.method static j6(I[BILcom/google/android/gms/internal/ads/vt;)I
    .registers 8

    and-int/lit8 v1, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte v2, p1, p2

    if-ltz v2, :cond_0

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/gms/internal/ads/vt;->j6:I

    :goto_0
    return v0

    :cond_0
    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v2, v1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr v0, v2

    iput v0, p3, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move v0, v1

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move v0, v2

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int v3, v0, v1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p1, v2

    if-ltz v2, :cond_4

    shl-int/lit8 v1, v2, 0x1c

    or-int/2addr v1, v3

    iput v1, p3, Lcom/google/android/gms/internal/ads/vt;->j6:I

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    and-int/lit8 v0, v2, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr v0, v3

    iput v0, p3, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move v0, v1

    goto :goto_0
.end method

.method static j6([BI)I
    .registers 6

    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method static j6([BILcom/google/android/gms/internal/ads/ou;Lcom/google/android/gms/internal/ads/vt;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/ads/ou",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/vt;",
            ")I"
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/ads/iu;

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    iget v1, p3, Lcom/google/android/gms/internal/ads/vt;->j6:I

    add-int/2addr v1, v0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p0, v0, p3}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    iget v2, p3, Lcom/google/android/gms/internal/ads/vt;->j6:I

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0
.end method

.method static j6([BILcom/google/android/gms/internal/ads/vt;)I
    .registers 5

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    if-ltz v1, :cond_0

    iput v1, p2, Lcom/google/android/gms/internal/ads/vt;->j6:I

    :goto_0
    return v0

    :cond_0
    invoke-static {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    goto :goto_0
.end method

.method static v5([BILcom/google/android/gms/internal/ads/vt;)I
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    iget v1, p2, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ltz v1, :cond_2

    array-length v2, p0

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    iput-object v1, p2, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/yt;->j6([BII)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    iput-object v2, p2, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->DW()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0
.end method
