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
    .registers 3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Hc;->Hw:Lcom/google/android/gms/internal/ads/J;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sc;->j6:Lcom/google/android/gms/internal/ads/G;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/J;->j6(Lcom/google/android/gms/internal/ads/G;)V

    :cond_9
    return-void
.end method
