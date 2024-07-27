.class final Lcom/google/android/gms/internal/ads/uc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Gc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Hc;)V
    .registers 3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Hc;->v5:Lcom/google/android/gms/internal/ads/tH;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/tH;->J0()V

    :cond_0
    return-void
.end method
