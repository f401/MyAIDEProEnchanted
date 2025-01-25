.class final Lcom/google/android/gms/internal/ads/At;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/ads/yt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/google/android/gms/internal/ads/yt;

    check-cast p2, Lcom/google/android/gms/internal/ads/yt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Ft;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/yt;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Ft;

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ft;->nextByte()B

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yt;->j6(B)I

    move-result v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ft;->nextByte()B

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/yt;->j6(B)I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/At$$ExternalSyntheticBackport0;->m(II)I

    move-result v2

    if-eqz v2, :cond_10

    return v2

    :cond_33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/At$$ExternalSyntheticBackport0;->m(II)I

    move-result p1

    return p1
.end method
