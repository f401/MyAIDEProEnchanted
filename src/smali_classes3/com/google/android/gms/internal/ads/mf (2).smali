.class public final Lcom/google/android/gms/internal/ads/mf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public static j6(Labcd/ax;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/nf;->DW:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v1, 0x3

    if-eq p0, v1, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    return v1

    :cond_14
    return v0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/zzwb;Z)Lcom/google/ads/mediation/a;
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    if-eqz v0, :cond_a

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    move-object v5, v1

    new-instance v3, Ljava/util/Date;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    sget-object v0, Labcd/bx;->j6:Labcd/bx;

    goto :goto_23

    :cond_1e
    sget-object v0, Labcd/bx;->FH:Labcd/bx;

    goto :goto_23

    :cond_21
    sget-object v0, Labcd/bx;->DW:Labcd/bx;

    :goto_23
    move-object v4, v0

    new-instance v0, Lcom/google/ads/mediation/a;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    move-object v2, v0

    move v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/mediation/a;-><init>(Ljava/util/Date;Labcd/bx;Ljava/util/Set;ZLandroid/location/Location;)V

    return-object v0
.end method
