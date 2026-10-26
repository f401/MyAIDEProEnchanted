.class public Lcom/google/android/gms/internal/ads/cl;
.super Lcom/google/android/gms/internal/ads/_k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/_k;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final j6(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public j6(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Yk;->j6(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    const/4 v0, 0x1

    return v0
.end method
