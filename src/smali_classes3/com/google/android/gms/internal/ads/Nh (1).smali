.class public final Lcom/google/android/gms/internal/ads/Nh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method private static DW(Landroid/content/Context;Z)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string p1, "com.google.android.gms.ads.dynamite"

    invoke-static {p0, p1}, Lcom/google/android/gms/dynamite/DynamiteModule;->DW(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return v2

    :cond_e
    invoke-static {p0, p1}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-gt v1, p0, :cond_15

    return v0

    :cond_15
    return v2
.end method

.method static synthetic j6(Landroid/content/Context;Z)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Nh;->DW(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method
