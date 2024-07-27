.class final Lcom/google/android/gms/internal/ads/Ce;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Ae;

.field private final j6:Lcom/google/android/gms/internal/ads/Hm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ae;Lcom/google/android/gms/internal/ads/Hm;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ce;->DW:Lcom/google/android/gms/internal/ads/Ae;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ce;->j6:Lcom/google/android/gms/internal/ads/Hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ce;->DW:Lcom/google/android/gms/internal/ads/Ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ae;->v5(Lcom/google/android/gms/internal/ads/Ae;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Hm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ce;->j6:Lcom/google/android/gms/internal/ads/Hm;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ce;->DW:Lcom/google/android/gms/internal/ads/Ae;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ae;->v5(Lcom/google/android/gms/internal/ads/Ae;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/te;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/te;->j6()V

    goto :goto_0

    :cond_1
    return-void
.end method
