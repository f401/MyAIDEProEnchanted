.class final Lcom/google/android/gms/internal/ads/Fx;
.super Ljava/lang/Object;


# static fields
.field static j6:Lcom/google/android/gms/internal/ads/tq;


# direct methods
.method static j6(Lcom/google/android/gms/internal/ads/Ax;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/Fx;->j6:Lcom/google/android/gms/internal/ads/tq;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->fP:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    if-nez p0, :cond_2

    move-object v0, v3

    :goto_1
    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "phpjyfBMe8u7C5auGMsy22WXoT6iMDb5qqttOP4sXOBlc73QdE1wdYLJ++PsHndY"

    const-string v4, "86B2wkBiSbEIJu45HO/BQ/RpWXZRq9YpFeIER87ao7I="

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v3

    goto :goto_1

    :cond_3
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/Dv;->j6(Ljava/lang/String;Z)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zq;->j6([B)Lcom/google/android/gms/internal/ads/vq;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/Rq;->j6:Lcom/google/android/gms/internal/ads/vs;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/pq;->j6(Lcom/google/android/gms/internal/ads/vs;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Uq;->j6(Lcom/google/android/gms/internal/ads/vq;)Lcom/google/android/gms/internal/ads/tq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Fx;->j6:Lcom/google/android/gms/internal/ads/tq;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v0, Lcom/google/android/gms/internal/ads/Fx;->j6:Lcom/google/android/gms/internal/ads/tq;

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_5
    :goto_2
    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method
