.class public final Lcom/google/android/gms/internal/ads/uE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/cF;


# instance fields
.field private j6:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/ia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ia;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uE;->j6:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uE;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final FH()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uE;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->RW()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/cF;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/wE;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uE;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ia;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/wE;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    return-object v0
.end method
