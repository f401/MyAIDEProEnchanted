.class public final Lcom/google/android/gms/internal/ads/Jw;
.super Landroid/support/customtabs/m;


# instance fields
.field private j6:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ads/Kw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Kw;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/customtabs/m;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Jw;->j6:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final j6(Landroid/content/ComponentName;Landroid/support/customtabs/g;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jw;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Kw;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/Kw;->j6(Landroid/support/customtabs/g;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jw;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Kw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Kw;->j6()V

    :cond_0
    return-void
.end method
