.class final Lcom/google/android/gms/internal/ads/pc;
.super Lcom/google/android/gms/internal/ads/RH;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/gc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pc;->j6:Lcom/google/android/gms/internal/ads/gc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/RH;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pc;->j6:Lcom/google/android/gms/internal/ads/gc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gc;->j6(Lcom/google/android/gms/internal/ads/gc;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/qc;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/qc;-><init>(Lcom/google/android/gms/internal/ads/pc;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
