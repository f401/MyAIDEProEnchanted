.class public Lcom/google/android/gms/ads/MobileAdsInitProvider;
.super Landroid/content/ContentProvider;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/zzze;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzze;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->j6:Lcom/google/android/gms/internal/ads/zzze;

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->j6:Lcom/google/android/gms/internal/ads/zzze;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzze;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->j6:Lcom/google/android/gms/internal/ads/zzze;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzze;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->j6:Lcom/google/android/gms/internal/ads/zzze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzze;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->j6:Lcom/google/android/gms/internal/ads/zzze;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzze;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->j6:Lcom/google/android/gms/internal/ads/zzze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzze;->onCreate()Z

    move-result v0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->j6:Lcom/google/android/gms/internal/ads/zzze;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzze;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAdsInitProvider;->j6:Lcom/google/android/gms/internal/ads/zzze;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzze;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
