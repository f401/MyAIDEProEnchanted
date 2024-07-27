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
    .registers 8

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/rC;->j6:Lcom/google/android/gms/internal/ads/Lz;

    new-instance v0, Lcom/google/android/gms/internal/ads/BC;

    const/4 v1, 0x0

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/Lz;->FH:[J

    aget-wide v2, v2, p1

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Lz;->DW:[I

    aget v4, v4, p1

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public final j6(J)I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rC;->j6:Lcom/google/android/gms/internal/ads/Lz;

    iget v0, v0, Lcom/google/android/gms/internal/ads/Lz;->j6:I

    return v0
.end method

.method public final j6(JJ)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rC;->j6:Lcom/google/android/gms/internal/ads/Lz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Lz;->DW(J)I

    move-result v0

    return v0
.end method

.method public final j6(I)J
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rC;->j6:Lcom/google/android/gms/internal/ads/Lz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Lz;->v5:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final j6(IJ)J
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rC;->j6:Lcom/google/android/gms/internal/ads/Lz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Lz;->Hw:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final j6()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
