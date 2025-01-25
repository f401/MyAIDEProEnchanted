.class public final Lcom/google/android/gms/internal/ads/IC;
.super Lcom/google/android/gms/internal/ads/HC;


# instance fields
.field final VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/BC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/BC;JJIJLjava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/BC;",
            "JJIJ",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/KC;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/BC;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/internal/ads/HC;-><init>(Lcom/google/android/gms/internal/ads/BC;JJIJLjava/util/List;)V

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/IC;->VH:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final j6(J)I
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/IC;->VH:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/CC;I)Lcom/google/android/gms/internal/ads/BC;
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/IC;->VH:Ljava/util/List;

    iget v0, p0, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    sub-int/2addr p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/BC;

    return-object p1
.end method

.method public final j6()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
