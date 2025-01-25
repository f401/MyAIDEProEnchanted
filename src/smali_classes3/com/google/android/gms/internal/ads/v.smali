.class public final Lcom/google/android/gms/internal/ads/v;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public static j6(Lcom/google/android/gms/internal/ads/D;)Lcom/google/android/gms/internal/ads/A;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/D;->j6()Lcom/google/android/gms/internal/ads/A;

    move-result-object p0

    return-object p0
.end method

.method public static varargs j6(Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_a
    :goto_a
    const/4 p0, 0x0

    return p0
.end method
