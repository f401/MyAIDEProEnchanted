.class final Lcom/google/android/gms/internal/ads/Wt;
.super Lcom/google/android/gms/internal/ads/Vt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Vt",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method final DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/Yt",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Wt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yt;->FH()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Yt;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Wt;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Yt;)V

    :cond_0
    return-object v0
.end method

.method final FH(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Wt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yt;->Zo()V

    return-void
.end method

.method final j6(Ljava/util/Map$Entry;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/Yt",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/hu$c;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/hu$c;->zzfqa:Lcom/google/android/gms/internal/ads/Yt;

    return-object v0
.end method

.method final j6(Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Pu;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Ut;->j6(Lcom/google/android/gms/internal/ads/Pu;I)Lcom/google/android/gms/internal/ads/hu$d;

    move-result-object v0

    return-object v0
.end method

.method final j6(Lcom/google/android/gms/internal/ads/ev;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Yt;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/ev;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            "Lcom/google/android/gms/internal/ads/Yt",
            "<",
            "Ljava/lang/Object;",
            ">;TUB;",
            "Lcom/google/android/gms/internal/ads/xv",
            "<TUT;TUB;>;)TUB;"
        }
    .end annotation

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final j6(Lcom/google/android/gms/internal/ads/Tv;Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final j6(Lcom/google/android/gms/internal/ads/ev;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Yt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ev;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            "Lcom/google/android/gms/internal/ads/Yt",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final j6(Lcom/google/android/gms/internal/ads/yt;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Yt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/yt;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            "Lcom/google/android/gms/internal/ads/Yt",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Yt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/Yt",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/hu$c;

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/hu$c;->zzfqa:Lcom/google/android/gms/internal/ads/Yt;

    return-void
.end method

.method final j6(Lcom/google/android/gms/internal/ads/Pu;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/hu$c;

    return v0
.end method
