.class final Lcom/google/android/gms/internal/ads/ut;
.super Ljava/lang/Object;


# direct methods
.method static DW([BILcom/google/android/gms/internal/ads/vt;)I
    .registers 11

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_e

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/vt;->DW:J

    return v0

    :cond_e
    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x7

    :goto_1c
    if-gez v0, :cond_29

    aget-byte v0, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, v0, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    :cond_29
    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/vt;->DW:J

    return p1
.end method

.method static DW([BI)J
    .registers 21

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

    const/16 v18, 0x38

    shl-long v14, v14, v18

    and-long v0, v0, v16

    and-long v2, v2, v16

    const/16 v18, 0x8

    shl-long v2, v2, v18

    or-long/2addr v0, v2

    and-long v2, v4, v16

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    and-long v2, v6, v16

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    and-long v2, v8, v16

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    and-long v2, v10, v16

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    and-long v2, v12, v16

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    or-long/2addr v0, v14

    return-wide v0
.end method

.method static FH([BI)D
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/ut;->DW([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method static FH([BILcom/google/android/gms/internal/ads/vt;)I
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ltz v0, :cond_1a

    if-nez v0, :cond_f

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    return p1

    :cond_f
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/ju;->j6:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->DW()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    throw p0
.end method

.method static Hw([BI)F
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/ut;->j6([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method static Hw([BILcom/google/android/gms/internal/ads/vt;)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ltz v0, :cond_17

    if-nez v0, :cond_f

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    return p1

    :cond_f
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Gv;->DW([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->DW()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    throw p0
.end method

.method static j6(I[BIILcom/google/android/gms/internal/ads/ou;Lcom/google/android/gms/internal/ads/vt;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/android/gms/internal/ads/ou<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/vt;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/android/gms/internal/ads/iu;

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p2

    :goto_6
    iget v0, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    if-ge p2, p3, :cond_1a

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ne p0, v1, :cond_1a

    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p2

    goto :goto_6

    :cond_1a
    return p2
.end method

.method static j6(I[BIILcom/google/android/gms/internal/ads/vt;)I
    .registers 7

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_4a

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_45

    const/4 v1, 0x1

    if-eq v0, v1, :cond_42

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    const/4 p0, 0x5

    if-ne v0, p0, :cond_17

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Hw()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    throw p0

    :cond_1c
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_21
    if-ge p2, p3, :cond_30

    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p2

    iget v0, p4, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-eq v0, p0, :cond_30

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BIILcom/google/android/gms/internal/ads/vt;)I

    move-result p2

    goto :goto_21

    :cond_30
    if-gt p2, p3, :cond_35

    if-ne v0, p0, :cond_35

    return p2

    :cond_35
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    throw p0

    :cond_3a
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p0

    iget p1, p4, Lcom/google/android/gms/internal/ads/vt;->j6:I

    add-int/2addr p0, p1

    return p0

    :cond_42
    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_45
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p0

    return p0

    :cond_4a
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Hw()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    goto :goto_50

    :goto_4f
    throw p0

    :goto_50
    goto :goto_4f
.end method

.method static j6(I[BIILcom/google/android/gms/internal/ads/yv;Lcom/google/android/gms/internal/ads/vt;)I
    .registers 15

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_95

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_87

    const/4 v1, 0x1

    if-eq v0, v1, :cond_79

    const/4 v1, 0x2

    if-eq v0, v1, :cond_55

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    const/4 p3, 0x5

    if-ne v0, p3, :cond_22

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/ut;->j6([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Hw()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    throw p0

    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/ads/yv;->Hw()Lcom/google/android/gms/internal/ads/yv;

    move-result-object v6

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v7, v0, 0x4

    const/4 v0, 0x0

    :goto_30
    if-ge p2, p3, :cond_48

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    iget p2, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move v0, p2

    if-eq p2, v7, :cond_47

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BIILcom/google/android/gms/internal/ads/yv;Lcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    move v8, v0

    move v0, p2

    move p2, v8

    goto :goto_30

    :cond_47
    move p2, v2

    :cond_48
    if-gt p2, p3, :cond_50

    if-ne v0, v7, :cond_50

    invoke-virtual {p4, p0, v6}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    return p2

    :cond_50
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    throw p0

    :cond_55
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p2

    iget p3, p5, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ltz p3, :cond_74

    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_6f

    if-nez p3, :cond_66

    sget-object p1, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    goto :goto_6a

    :cond_66
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/yt;->j6([BII)Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    :goto_6a
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    add-int/2addr p2, p3

    return p2

    :cond_6f
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    throw p0

    :cond_74
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->DW()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    throw p0

    :cond_79
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/ut;->DW([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_87
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p1

    iget-wide p2, p5, Lcom/google/android/gms/internal/ads/vt;->DW:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    return p1

    :cond_95
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->Hw()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    goto :goto_9b

    :goto_9a
    throw p0

    :goto_9b
    goto :goto_9a
.end method

.method static j6(I[BILcom/google/android/gms/internal/ads/vt;)I
    .registers 6

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_e

    shl-int/lit8 p1, p2, 0x7

    :goto_a
    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/ads/vt;->j6:I

    return v0

    :cond_e
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_1f

    shl-int/lit8 p1, v0, 0xe

    :goto_1b
    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/ads/vt;->j6:I

    return p2

    :cond_1f
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_2d

    shl-int/lit8 p1, p2, 0x15

    goto :goto_a

    :cond_2d
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_3b

    shl-int/lit8 p1, v0, 0x1c

    goto :goto_1b

    :cond_3b
    :goto_3b
    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_49

    and-int/lit8 p1, v0, 0x7f

    shl-int/lit8 p1, p1, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/ads/vt;->j6:I

    return v1

    :cond_49
    move p2, v1

    goto :goto_3b
.end method

.method static j6([BI)I
    .registers 5

    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    and-int/lit16 p1, v0, 0xff

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    and-int/lit16 v0, v2, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method static j6([BILcom/google/android/gms/internal/ads/ou;Lcom/google/android/gms/internal/ads/vt;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/ads/ou<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/vt;",
            ")I"
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/ads/iu;

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p1

    iget v0, p3, Lcom/google/android/gms/internal/ads/vt;->j6:I

    add-int/2addr v0, p1

    :goto_9
    if-ge p1, v0, :cond_15

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p1

    iget v1, p3, Lcom/google/android/gms/internal/ads/vt;->j6:I

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    goto :goto_9

    :cond_15
    if-ne p1, v0, :cond_18

    return p1

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    goto :goto_1e

    :goto_1d
    throw p0

    :goto_1e
    goto :goto_1d
.end method

.method static j6([BILcom/google/android/gms/internal/ads/vt;)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_9

    iput p1, p2, Lcom/google/android/gms/internal/ads/vt;->j6:I

    return v0

    :cond_9
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BILcom/google/android/gms/internal/ads/vt;)I

    move-result p0

    return p0
.end method

.method static v5([BILcom/google/android/gms/internal/ads/vt;)I
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ltz v0, :cond_20

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1b

    if-nez v0, :cond_13

    sget-object p0, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    return p1

    :cond_13
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/yt;->j6([BII)Lcom/google/android/gms/internal/ads/yt;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    throw p0

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->DW()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p0

    throw p0
.end method
