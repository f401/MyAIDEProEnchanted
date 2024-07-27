.class final Lcom/google/android/gms/internal/ads/tc;
.super Lcom/google/android/gms/internal/ads/uH;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/gc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tc;->j6:Lcom/google/android/gms/internal/ads/gc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uH;-><init>()V

    return-void
.end method


# virtual methods
.method public final J0()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tc;->j6:Lcom/google/android/gms/internal/ads/gc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gc;->j6(Lcom/google/android/gms/internal/ads/gc;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/uc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/uc;-><init>(Lcom/google/android/gms/internal/ads/tc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
