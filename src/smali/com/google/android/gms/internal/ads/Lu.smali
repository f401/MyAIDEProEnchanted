.class final Lcom/google/android/gms/internal/ads/Lu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ku;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final DW(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/Ju;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ju;->j6()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final FH(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/Ju;

    return-object p1
.end method

.method public final Hw(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ju;->FH()Lcom/google/android/gms/internal/ads/Ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ju;->v5()Lcom/google/android/gms/internal/ads/Ju;

    move-result-object v0

    return-object v0
.end method

.method public final VH(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/Ju;

    return-object p1
.end method

.method public final Zo(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/Ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ju;->DW()V

    return-object p1
.end method

.method public final j6(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    const/4 v2, 0x0

    check-cast p2, Lcom/google/android/gms/internal/ads/Ju;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Ju;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public final j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/Ju;

    check-cast p2, Lcom/google/android/gms/internal/ads/Ju;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ju;->j6()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ju;->v5()Lcom/google/android/gms/internal/ads/Ju;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Ju;->j6(Lcom/google/android/gms/internal/ads/Ju;)V

    :cond_1
    return-object p1
.end method

.method public final v5(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Iu;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/Iu",
            "<**>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
