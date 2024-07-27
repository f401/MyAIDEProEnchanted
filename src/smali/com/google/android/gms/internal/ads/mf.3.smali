.class public final Lcom/google/android/gms/internal/ads/mf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public static j6(Labcd/ax;)I
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gms/internal/ads/nf;->DW:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_2

    if-eq v2, v0, :cond_1

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/zzwb;Z)Lcom/google/ads/mediation/a;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v1, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    sget-object v2, Labcd/bx;->j6:Labcd/bx;

    :goto_1
    new-instance v0, Lcom/google/ads/mediation/a;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/mediation/a;-><init>(Ljava/util/Date;Labcd/bx;Ljava/util/Set;ZLandroid/location/Location;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Labcd/bx;->FH:Labcd/bx;

    goto :goto_1

    :cond_2
    sget-object v2, Labcd/bx;->DW:Labcd/bx;

    goto :goto_1
.end method
