.class public final Lcom/google/android/gms/internal/ads/zq;
.super Ljava/lang/Object;


# direct methods
.method public static final j6([B)Lcom/google/android/gms/internal/ads/vq;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/hs;->j6([B)Lcom/google/android/gms/internal/ads/hs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hs;->J0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hs$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->J0()Lcom/google/android/gms/internal/ads/Yr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Yr;->Ws()Lcom/google/android/gms/internal/ads/Yr$b;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/Yr$b;->j6:Lcom/google/android/gms/internal/ads/Yr$b;

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->J0()Lcom/google/android/gms/internal/ads/Yr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Yr;->Ws()Lcom/google/android/gms/internal/ads/Yr$b;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/Yr$b;->DW:Lcom/google/android/gms/internal/ads/Yr$b;

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs$b;->J0()Lcom/google/android/gms/internal/ads/Yr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yr;->Ws()Lcom/google/android/gms/internal/ads/Yr$b;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/Yr$b;->FH:Lcom/google/android/gms/internal/ads/Yr$b;

    if-ne v0, v3, :cond_0

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "keyset contains secret key material"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vq;->j6(Lcom/google/android/gms/internal/ads/hs;)Lcom/google/android/gms/internal/ads/vq;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method
