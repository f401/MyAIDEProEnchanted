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
            "Ljava/util/List",
            "<",
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
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/HC;->v5:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/GC;->DW:J

    div-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/CC;)Lcom/google/android/gms/internal/ads/BC;
    .registers 11

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/JC;->VH:Lcom/google/android/gms/internal/ads/OC;

    if-eqz v0, :cond_0

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/CC;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    new-instance v8, Lcom/google/android/gms/internal/ads/BC;

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/OC;->j6(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/GC;->j6(Lcom/google/android/gms/internal/ads/CC;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v0

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/CC;I)Lcom/google/android/gms/internal/ads/BC;
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/KC;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/KC;->j6:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/JC;->gn:Lcom/google/android/gms/internal/ads/OC;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/CC;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    new-instance v6, Lcom/google/android/gms/internal/ads/BC;

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/OC;->j6(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    return-object v6

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    sub-int v0, p2, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/HC;->v5:J

    mul-long v4, v0, v2

    goto :goto_0
.end method
