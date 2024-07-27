.class public final Lcom/google/android/gms/internal/ads/_h;
.super Lcom/google/android/gms/internal/ads/gi;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final j6:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ads/Qh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Qh;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gi;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/_h;->j6:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/zzasm;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_h;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Qh;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Qh;->j6(Lcom/google/android/gms/internal/ads/zzasm;)V

    :cond_0
    return-void
.end method
