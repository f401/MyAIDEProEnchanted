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
    .registers 6

    const/4 v0, -0x1

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Qz;->j6(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    if-eqz p3, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
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
