.class public Lcom/google/android/gms/internal/ads/bl;
.super Lcom/google/android/gms/internal/ads/al;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/al;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/view/View;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Vk;->j6(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method

.method public final v5()I
    .registers 2

    const/16 v0, 0xe

    return v0
.end method
