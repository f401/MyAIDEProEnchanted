.class public Lcom/google/android/gms/ads/formats/NativeAdView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Ka;

.field private final j6:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->j6:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6()Lcom/google/android/gms/internal/ads/Ka;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->DW:Lcom/google/android/gms/internal/ads/Ka;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->j6:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6()Lcom/google/android/gms/internal/ads/Ka;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->DW:Lcom/google/android/gms/internal/ads/Ka;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->j6:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6()Lcom/google/android/gms/internal/ads/Ka;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->DW:Lcom/google/android/gms/internal/ads/Ka;

    return-void
.end method

.method private final j6(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 4

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private final j6()Lcom/google/android/gms/internal/ads/Ka;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->j6:Landroid/widget/FrameLayout;

    const-string v1, "createDelegate must be called after mOverlayFrame has been created"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->DW()Lcom/google/android/gms/internal/ads/iH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->j6:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->j6:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/iH;->j6(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/Ka;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->j6:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->j6:Landroid/widget/FrameLayout;

    if-eq v0, p1, :cond_a

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method public getAdChoicesView()Lcom/google/android/gms/ads/formats/AdChoicesView;
    .registers 3

    const-string v0, "1098"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/ads/formats/AdChoicesView;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/google/android/gms/ads/formats/AdChoicesView;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final j6(Ljava/lang/String;)Landroid/view/View;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->DW:Lcom/google/android/gms/internal/ads/Ka;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Ka;->lg(Ljava/lang/String;)Labcd/ox;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    const-string v0, "Unable to call getAssetView on delegate"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final j6(Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->DW:Lcom/google/android/gms/internal/ads/Ka;

    invoke-static {p2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Ka;->j6(Ljava/lang/String;Labcd/ox;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    const-string p2, "Unable to call setAssetView on delegate"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->DW:Lcom/google/android/gms/internal/ads/Ka;

    if-eqz v0, :cond_15

    :try_start_7
    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Ka;->FH(Labcd/ox;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p1

    const-string p2, "Unable to call onVisibilityChanged on delegate"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    return-void
.end method

.method public removeAllViews()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->j6:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->j6:Landroid/widget/FrameLayout;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setAdChoicesView(Lcom/google/android/gms/ads/formats/AdChoicesView;)V
    .registers 3

    const-string v0, "1098"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->j6(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public setNativeAd(Lcom/google/android/gms/ads/formats/a;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdView;->DW:Lcom/google/android/gms/internal/ads/Ka;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/a;->j6()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/ox;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Ka;->Hw(Labcd/ox;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    const-string v0, "Unable to call setNativeAd on delegate"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
