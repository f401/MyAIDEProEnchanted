.class public final Lcom/google/android/gms/internal/ads/xF;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method private static DW([Ljava/lang/String;II)J
    .registers 11

    const/4 p1, 0x0

    aget-object p1, p0, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uF;->j6(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    const-wide/32 v2, 0x7fffffff

    add-long/2addr v0, v2

    const-wide/32 v4, 0x4000ffff

    rem-long/2addr v0, v4

    const/4 p1, 0x1

    :goto_11
    if-ge p1, p2, :cond_27

    const-wide/32 v6, 0x1001fff

    mul-long v0, v0, v6

    rem-long/2addr v0, v4

    aget-object v6, p0, p1

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/uF;->j6(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    rem-long/2addr v6, v4

    add-long/2addr v0, v6

    rem-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_27
    return-wide v0
.end method

.method private static j6(JI)J
    .registers 8

    if-nez p2, :cond_5

    const-wide/16 p0, 0x1

    return-wide p0

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    return-wide p0

    :cond_9
    rem-int/lit8 v0, p2, 0x2

    const-wide/32 v1, 0x4000ffff

    if-nez v0, :cond_1b

    mul-long p0, p0, p0

    rem-long/2addr p0, v1

    div-int/lit8 p2, p2, 0x2

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/xF;->j6(JI)J

    move-result-wide p0

    :goto_19
    rem-long/2addr p0, v1

    return-wide p0

    :cond_1b
    mul-long v3, p0, p0

    rem-long/2addr v3, v1

    div-int/lit8 p2, p2, 0x2

    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/ads/xF;->j6(JI)J

    move-result-wide v3

    rem-long/2addr v3, v1

    mul-long p0, p0, v3

    goto :goto_19
.end method

.method private static j6([Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    array-length v0, p0

    add-int/2addr p2, p1

    if-ge v0, p2, :cond_c

    const-string p0, "Unable to construct shingle"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_11
    add-int/lit8 v1, p2, -0x1

    if-ge p1, v1, :cond_22

    aget-object v1, p0, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_22
    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6(IJLjava/lang/String;ILjava/util/PriorityQueue;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/PriorityQueue<",
            "Lcom/google/android/gms/internal/ads/yF;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/yF;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/yF;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->size()I

    move-result p1

    if-ne p1, p0, :cond_26

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/yF;

    iget p1, p1, Lcom/google/android/gms/internal/ads/yF;->FH:I

    iget p2, v0, Lcom/google/android/gms/internal/ads/yF;->FH:I

    if-gt p1, p2, :cond_25

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/yF;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/yF;->j6:J

    iget-wide p3, v0, Lcom/google/android/gms/internal/ads/yF;->j6:J

    cmp-long v1, p1, p3

    if-lez v1, :cond_26

    :cond_25
    return-void

    :cond_26
    invoke-virtual {p5, v0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    return-void

    :cond_2d
    invoke-virtual {p5, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->size()I

    move-result p1

    if-le p1, p0, :cond_39

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    :cond_39
    return-void
.end method

.method public static j6([Ljava/lang/String;IILjava/util/PriorityQueue;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/PriorityQueue<",
            "Lcom/google/android/gms/internal/ads/yF;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p2

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, v7, :cond_1b

    array-length v1, v0

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/xF;->DW([Ljava/lang/String;II)J

    move-result-wide v4

    array-length v1, v0

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/xF;->j6([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    array-length v7, v0

    move/from16 v3, p1

    move-object/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/xF;->j6(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    return-void

    :cond_1b
    invoke-static {v0, v2, v7}, Lcom/google/android/gms/internal/ads/xF;->DW([Ljava/lang/String;II)J

    move-result-wide v8

    invoke-static {v0, v2, v7}, Lcom/google/android/gms/internal/ads/xF;->j6([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    move/from16 v1, p1

    move-wide v2, v8

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/xF;->j6(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    add-int/lit8 v1, v7, -0x1

    const-wide/32 v2, 0x1001fff

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/xF;->j6(JI)J

    move-result-wide v4

    const/4 v1, 0x1

    const/4 v6, 0x1

    :goto_38
    array-length v10, v0

    sub-int/2addr v10, v7

    add-int/2addr v10, v1

    if-ge v6, v10, :cond_79

    add-int/lit8 v10, v6, -0x1

    aget-object v10, v0, v10

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/uF;->j6(Ljava/lang/String;)I

    move-result v10

    add-int v11, v6, v7

    sub-int/2addr v11, v1

    aget-object v11, v0, v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/uF;->j6(Ljava/lang/String;)I

    move-result v11

    const-wide/32 v12, 0x4000ffff

    add-long/2addr v8, v12

    int-to-long v14, v10

    const-wide/32 v16, 0x7fffffff

    add-long v14, v14, v16

    rem-long/2addr v14, v12

    mul-long v14, v14, v4

    rem-long/2addr v14, v12

    sub-long/2addr v8, v14

    rem-long/2addr v8, v12

    mul-long v8, v8, v2

    rem-long/2addr v8, v12

    int-to-long v10, v11

    add-long v10, v10, v16

    rem-long/2addr v10, v12

    add-long/2addr v8, v10

    rem-long/2addr v8, v12

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/xF;->j6([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v17

    array-length v10, v0

    move/from16 v14, p1

    move-wide v15, v8

    move/from16 v18, v10

    move-object/from16 v19, p3

    invoke-static/range {v14 .. v19}, Lcom/google/android/gms/internal/ads/xF;->j6(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    :cond_79
    return-void
.end method
