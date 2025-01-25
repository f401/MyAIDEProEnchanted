.class final Lcom/google/android/gms/internal/ads/hc;
.super Lcom/google/android/gms/internal/ads/yH;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/gc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hc;->j6:Lcom/google/android/gms/internal/ads/gc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yH;-><init>()V

    return-void
.end method


# virtual methods
.method public final Cz()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hc;->j6:Lcom/google/android/gms/internal/ads/gc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gc;->j6(Lcom/google/android/gms/internal/ads/gc;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/kc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/kc;-><init>(Lcom/google/android/gms/internal/ads/hc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final Gj()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hc;->j6:Lcom/google/android/gms/internal/ads/gc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gc;->j6(Lcom/google/android/gms/internal/ads/gc;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/mc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/mc;-><init>(Lcom/google/android/gms/internal/ads/hc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final J0()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hc;->j6:Lcom/google/android/gms/internal/ads/gc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gc;->j6(Lcom/google/android/gms/internal/ads/gc;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/oc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/oc;-><init>(Lcom/google/android/gms/internal/ads/hc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final QO()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hc;->j6:Lcom/google/android/gms/internal/ads/gc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gc;->j6(Lcom/google/android/gms/internal/ads/gc;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/lc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/lc;-><init>(Lcom/google/android/gms/internal/ads/hc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pooled interstitial loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    return-void
.end method

.method public final Zo(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hc;->j6:Lcom/google/android/gms/internal/ads/gc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gc;->j6(Lcom/google/android/gms/internal/ads/gc;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/jc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/jc;-><init>(Lcom/google/android/gms/internal/ads/hc;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "Pooled interstitial failed to load."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    return-void
.end method

.method public final a5()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hc;->j6:Lcom/google/android/gms/internal/ads/gc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gc;->j6(Lcom/google/android/gms/internal/ads/gc;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ic;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ic;-><init>(Lcom/google/android/gms/internal/ads/hc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final pN()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hc;->j6:Lcom/google/android/gms/internal/ads/gc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gc;->j6(Lcom/google/android/gms/internal/ads/gc;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/nc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/nc;-><init>(Lcom/google/android/gms/internal/ads/hc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
