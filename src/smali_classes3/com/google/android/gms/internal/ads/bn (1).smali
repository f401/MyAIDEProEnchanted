.class abstract Lcom/google/android/gms/internal/ads/bn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
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
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bn;->j6:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final FH()Landroid/view/ViewTreeObserver;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bn;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_1a

    :cond_19
    return-object v0

    :cond_1a
    :goto_1a
    return-object v1
.end method


# virtual methods
.method public final DW()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bn;->FH()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/bn;->DW(Landroid/view/ViewTreeObserver;)V

    :cond_9
    return-void
.end method

.method protected abstract DW(Landroid/view/ViewTreeObserver;)V
.end method

.method public final j6()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bn;->FH()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/bn;->j6(Landroid/view/ViewTreeObserver;)V

    :cond_9
    return-void
.end method

.method protected abstract j6(Landroid/view/ViewTreeObserver;)V
.end method
