.class public final Lcom/google/android/gms/internal/ads/Nz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Yz;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I
    .registers 4

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Qz;->j6(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_10

    if-eqz p3, :cond_a

    return p2

    :cond_a
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_10
    return p1
.end method

.method public final j6(JIIILcom/google/android/gms/internal/ads/Zz;)V
    .registers 7

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/LD;I)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 2

    return-void
.end method
