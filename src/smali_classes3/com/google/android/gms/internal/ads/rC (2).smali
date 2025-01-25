.class public final Lcom/google/android/gms/internal/ads/rC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/qC;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Lz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Lz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rC;->j6:Lcom/google/android/gms/internal/ads/Lz;

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final DW(I)Lcom/google/android/gms/internal/ads/BC;
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rC;->j6:Lcom/google/android/gms/internal/ads/Lz;

    new-instance v7, Lcom/google/android/gms/internal/ads/BC;

    const/4 v2, 0x0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Lz;->FH:[J

    aget-wide v3, v1, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Lz;->DW:[I

    aget p1, v0, p1

    int-to-long v5, p1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    return-object v7
.end method

.method public final j6(J)I
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rC;->j6:Lcom/google/android/gms/internal/ads/Lz;

    iget p1, p1, Lcom/google/android/gms/internal/ads/Lz;->j6:I

    return p1
.end method

.method public final j6(JJ)I
    .registers 5

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/rC;->j6:Lcom/google/android/gms/internal/ads/Lz;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/Lz;->DW(J)I

    move-result p1

    return p1
.end method

.method public final j6(I)J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rC;->j6:Lcom/google/android/gms/internal/ads/Lz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Lz;->v5:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final j6(IJ)J
    .registers 4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rC;->j6:Lcom/google/android/gms/internal/ads/Lz;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/Lz;->Hw:[J

    aget-wide p1, p2, p1

    return-wide p1
.end method

.method public final j6()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
