.class public final Lcom/google/android/gms/ads/formats/NativeContentAdView;
.super Lcom/google/android/gms/ads/formats/NativeAdView;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/formats/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/formats/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getAdvertiserView()Landroid/view/View;
    .registers 2

    const-string v0, "1004"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getBodyView()Landroid/view/View;
    .registers 2

    const-string v0, "1002"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getCallToActionView()Landroid/view/View;
    .registers 2

    const-string v0, "1003"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadlineView()Landroid/view/View;
    .registers 2

    const-string v0, "1001"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getImageView()Landroid/view/View;
    .registers 2

    const-string v0, "1005"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getLogoView()Landroid/view/View;
    .registers 2

    const-string v0, "1006"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaView()Lcom/google/android/gms/ads/formats/MediaView;
    .registers 3

    const-string v0, "1009"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/ads/formats/MediaView;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/google/android/gms/ads/formats/MediaView;

    return-object v0

    :cond_d
    if-eqz v0, :cond_14

    const-string v0, "View is not an instance of MediaView"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setAdvertiserView(Landroid/view/View;)V
    .registers 3

    const-string v0, "1004"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setBodyView(Landroid/view/View;)V
    .registers 3

    const-string v0, "1002"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setCallToActionView(Landroid/view/View;)V
    .registers 3

    const-string v0, "1003"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setHeadlineView(Landroid/view/View;)V
    .registers 3

    const-string v0, "1001"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setImageView(Landroid/view/View;)V
    .registers 3

    const-string v0, "1005"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setLogoView(Landroid/view/View;)V
    .registers 3

    const-string v0, "1006"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setMediaView(Lcom/google/android/gms/ads/formats/MediaView;)V
    .registers 3

    const-string v0, "1009"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
