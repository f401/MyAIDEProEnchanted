.class public final Lcom/google/android/gms/internal/ads/EC;
.super Lcom/google/android/gms/internal/ads/CC;

# interfaces
.implements Lcom/google/android/gms/internal/ads/qC;


# instance fields
.field private final gn:Lcom/google/android/gms/internal/ads/HC;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/HC;Ljava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/gms/internal/ads/zzfs;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/HC;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/zC;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v2, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/CC;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/GC;Ljava/util/List;Lcom/google/android/gms/internal/ads/DC;)V

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    iget v0, v0, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    return v0
.end method

.method public final DW(I)Lcom/google/android/gms/internal/ads/BC;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/HC;->j6(Lcom/google/android/gms/internal/ads/CC;I)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v0

    return-object v0
.end method

.method public final FH()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final Zo()Lcom/google/android/gms/internal/ads/qC;
    .registers 1

    return-object p0
.end method

.method public final j6(J)I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/HC;->j6(J)I

    move-result v0

    return v0
.end method

.method public final j6(JJ)I
    .registers 16

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    iget v0, v4, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    invoke-virtual {v4, p3, p4}, Lcom/google/android/gms/internal/ads/HC;->j6(J)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    if-nez v1, :cond_3

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/HC;->v5:J

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    iget-wide v8, v4, Lcom/google/android/gms/internal/ads/GC;->DW:J

    div-long/2addr v6, v8

    iget v1, v4, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    div-long v4, p1, v6

    long-to-int v3, v4

    add-int/2addr v1, v3

    if-lt v1, v0, :cond_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_3
    add-int v1, v2, v0

    add-int/lit8 v3, v1, -0x1

    move v2, v0

    :goto_1
    if-gt v2, v3, :cond_6

    sub-int v1, v3, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/HC;->j6(I)J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-gez v5, :cond_4

    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_4
    cmp-long v3, v6, p1

    if-lez v3, :cond_5

    add-int/lit8 v3, v1, -0x1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    if-ne v2, v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_0
.end method

.method public final j6(I)J
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/HC;->j6(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j6(IJ)J
    .registers 10

    const-wide/32 v4, 0xf4240

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v2, v1, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    sub-int v2, p1, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/KC;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/KC;->DW:J

    mul-long/2addr v2, v4

    iget-wide v0, v1, Lcom/google/android/gms/internal/ads/GC;->DW:J

    div-long v0, v2, v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/ads/HC;->j6(J)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, v1, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/HC;->j6(I)J

    move-result-wide v0

    sub-long v0, p2, v0

    goto :goto_0

    :cond_1
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/HC;->v5:J

    mul-long/2addr v2, v4

    iget-wide v0, v1, Lcom/google/android/gms/internal/ads/GC;->DW:J

    div-long v0, v2, v0

    goto :goto_0
.end method

.method public final j6()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EC;->gn:Lcom/google/android/gms/internal/ads/HC;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/HC;->j6()Z

    move-result v0

    return v0
.end method

.method public final v5()Lcom/google/android/gms/internal/ads/BC;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
