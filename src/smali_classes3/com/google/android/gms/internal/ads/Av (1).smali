.class public final Lcom/google/android/gms/internal/ads/Av;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/google/android/gms/internal/ads/yu;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/ads/yu;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/yu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yu;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Av;->j6:Lcom/google/android/gms/internal/ads/yu;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Av;)Lcom/google/android/gms/internal/ads/yu;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Av;->j6:Lcom/google/android/gms/internal/ads/yu;

    return-object p0
.end method


# virtual methods
.method public final Hw(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Av;->j6:Lcom/google/android/gms/internal/ads/yu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/yu;->Hw(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a8()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Av;->j6:Lcom/google/android/gms/internal/ads/yu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yu;->a8()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Av;->j6:Lcom/google/android/gms/internal/ads/yu;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/Cv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Cv;-><init>(Lcom/google/android/gms/internal/ads/Av;)V

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yt;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final lg()Lcom/google/android/gms/internal/ads/yu;
    .registers 1

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/Bv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/Bv;-><init>(Lcom/google/android/gms/internal/ads/Av;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Av;->j6:Lcom/google/android/gms/internal/ads/yu;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
