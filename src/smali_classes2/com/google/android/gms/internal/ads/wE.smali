.class public final Lcom/google/android/gms/internal/ads/wE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/cF;


# instance fields
.field private j6:Lcom/google/android/gms/internal/ads/ia;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wE;->j6:Lcom/google/android/gms/internal/ads/ia;

    return-void
.end method


# virtual methods
.method public final DW()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wE;->j6:Lcom/google/android/gms/internal/ads/ia;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final FH()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wE;->j6:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->RW()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/cF;
    .locals 0

    return-object p0
.end method
