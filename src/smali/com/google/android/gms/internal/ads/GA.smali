.class public final Lcom/google/android/gms/internal/ads/GA;
.super Ljava/lang/Object;


# direct methods
.method public static j6([B)Ljava/util/UUID;
    .registers 11

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v1, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_4

    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/ads/kA;->ca:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v2

    if-le v2, v9, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported pssh version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "PsshAtomUtil"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/UUID;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v2, v9, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v4

    if-ne v2, v4, :cond_0

    new-array v4, v2, [B

    invoke-virtual {v1, v4, v8, v2}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/UUID;

    goto :goto_2
.end method

.method public static j6(Ljava/util/UUID;[B)[B
    .registers 6

    array-length v0, p1

    add-int/lit8 v0, v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget v0, Lcom/google/android/gms/internal/ads/kA;->ca:I

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    array-length v0, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
