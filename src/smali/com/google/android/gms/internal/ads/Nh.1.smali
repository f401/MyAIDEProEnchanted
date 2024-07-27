.class public final Lcom/google/android/gms/internal/ads/Nh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method private static DW(Landroid/content/Context;Z)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "com.google.android.gms.ads.dynamite"

    invoke-static {p0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->DW(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "com.google.android.gms.ads.dynamite"

    invoke-static {p0, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic j6(Landroid/content/Context;Z)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Nh;->DW(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method
