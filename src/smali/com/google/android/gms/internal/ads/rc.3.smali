.class final Lcom/google/android/gms/internal/ads/rc;
.super Lcom/google/android/gms/internal/ads/K;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/gc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rc;->j6:Lcom/google/android/gms/internal/ads/gc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/G;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc;->j6:Lcom/google/android/gms/internal/ads/gc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gc;->j6(Lcom/google/android/gms/internal/ads/gc;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/sc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/sc;-><init>(Lcom/google/android/gms/internal/ads/rc;Lcom/google/android/gms/internal/ads/G;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
