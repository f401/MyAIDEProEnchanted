.class public final Lcom/google/android/gms/internal/ads/JC;
.super Lcom/google/android/gms/internal/ads/HC;


# instance fields
.field final VH:Lcom/google/android/gms/internal/ads/OC;

.field final gn:Lcom/google/android/gms/internal/ads/OC;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/BC;JJIJLjava/util/List;Lcom/google/android/gms/internal/ads/OC;Lcom/google/android/gms/internal/ads/OC;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/BC;",
            "JJIJ",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/KC;",
            ">;",
            "Lcom/google/android/gms/internal/ads/OC;",
            "Lcom/google/android/gms/internal/ads/OC;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/internal/ads/HC;-><init>(Lcom/google/android/gms/internal/ads/BC;JJIJLjava/util/List;)V

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/JC;->VH:Lcom/google/android/gms/internal/ads/OC;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/JC;->gn:Lcom/google/android/gms/internal/ads/OC;

    return-void
.end method


# virtual methods
.method public final j6(J)I
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_9
    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_22

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/HC;->v5:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/GC;->DW:J

    div-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    return p2

    :cond_22
    const/4 p1, -0x1

    return p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/CC;)Lcom/google/android/gms/internal/ads/BC;
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/JC;->VH:Lcom/google/android/gms/internal/ads/OC;

    if-eqz v0, :cond_1c

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/CC;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    new-instance v7, Lcom/google/android/gms/internal/ads/BC;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/OC;->j6(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    return-object v7

    :cond_1c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/GC;->j6(Lcom/google/android/gms/internal/ads/CC;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/CC;I)Lcom/google/android/gms/internal/ads/BC;
    .registers 17

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    if-eqz v1, :cond_12

    iget v2, v0, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    sub-int v2, p2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/KC;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/KC;->j6:J

    goto :goto_1b

    :cond_12
    iget v1, v0, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    sub-int v1, p2, v1

    int-to-long v1, v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/HC;->v5:J

    mul-long v1, v1, v3

    :goto_1b
    move-wide v5, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/JC;->gn:Lcom/google/android/gms/internal/ads/OC;

    move-object v2, p1

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/CC;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    new-instance v13, Lcom/google/android/gms/internal/ads/BC;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    move-object v2, v3

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/OC;->j6(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    return-object v13
.end method
