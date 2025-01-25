.class public final Lcom/google/android/gms/internal/ads/Jw;
.super Landroid/support/customtabs/m;


# instance fields
.field private j6:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
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
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jw;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Kw;

    if-eqz p1, :cond_d

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Kw;->j6(Landroid/support/customtabs/g;)V

    :cond_d
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jw;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Kw;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Kw;->j6()V

    :cond_d
    return-void
.end method
