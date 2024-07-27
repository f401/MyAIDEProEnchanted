.class final Lcom/google/android/gms/internal/ads/sc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Gc;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/G;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rc;Lcom/google/android/gms/internal/ads/G;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sc;->j6:Lcom/google/android/gms/internal/ads/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Hc;)V
    .registers 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Hc;->Hw:Lcom/google/android/gms/internal/ads/J;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sc;->j6:Lcom/google/android/gms/internal/ads/G;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/J;->j6(Lcom/google/android/gms/internal/ads/G;)V

    :cond_0
    return-void
.end method
