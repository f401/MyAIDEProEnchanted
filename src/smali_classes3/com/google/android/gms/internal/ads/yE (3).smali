.class public final Lcom/google/android/gms/internal/ads/yE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/cF;


# instance fields
.field private final DW:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/kk;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/kk;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yE;->j6:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yE;->DW:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yE;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yE;->DW:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public final FH()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yE;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/cF;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/xE;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yE;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yE;->DW:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/kk;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/xE;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/kk;)V

    return-object v0
.end method
