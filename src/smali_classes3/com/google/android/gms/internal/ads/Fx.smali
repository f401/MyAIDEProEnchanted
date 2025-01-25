.class final Lcom/google/android/gms/internal/ads/Fx;
.super Ljava/lang/Object;


# static fields
.field static j6:Lcom/google/android/gms/internal/ads/tq;


# direct methods
.method static j6(Lcom/google/android/gms/internal/ads/Ax;)Z
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/Fx;->j6:Lcom/google/android/gms/internal/ads/tq;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->fP:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_36

    :cond_1b
    const/4 v0, 0x0

    if-nez p0, :cond_1f

    goto :goto_33

    :cond_1f
    const-string v3, "phpjyfBMe8u7C5auGMsy22WXoT6iMDb5qqttOP4sXOBlc73QdE1wdYLJ++PsHndY"

    const-string v4, "86B2wkBiSbEIJu45HO/BQ/RpWXZRq9YpFeIER87ao7I="

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_2a

    goto :goto_33

    :cond_2a
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_33
    if-nez v0, :cond_36

    return v2

    :cond_36
    :try_start_36
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Dv;->j6(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3a} :catch_4e

    :try_start_3a
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zq;->j6([B)Lcom/google/android/gms/internal/ads/vq;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/Rq;->j6:Lcom/google/android/gms/internal/ads/vs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pq;->j6(Lcom/google/android/gms/internal/ads/vs;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Uq;->j6(Lcom/google/android/gms/internal/ads/vq;)Lcom/google/android/gms/internal/ads/tq;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/Fx;->j6:Lcom/google/android/gms/internal/ads/tq;
    :try_end_49
    .catch Ljava/security/GeneralSecurityException; {:try_start_3a .. :try_end_49} :catch_4c

    if-eqz p0, :cond_4f

    return v1

    :catch_4c
    move-exception p0

    goto :goto_4f

    :catch_4e
    move-exception p0

    :cond_4f
    :goto_4f
    return v2
.end method
