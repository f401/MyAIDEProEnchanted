.class public final Lcom/google/android/gms/internal/ads/GA;
.super Ljava/lang/Object;


# direct methods
.method public static j6([B)Ljava/util/UUID;
    .registers 10

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result p0

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-ge p0, v1, :cond_f

    goto :goto_6f

    :cond_f
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-eq v1, v3, :cond_20

    goto :goto_6f

    :cond_20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    sget v3, Lcom/google/android/gms/internal/ads/kA;->ca:I

    if-eq v1, v3, :cond_29

    goto :goto_6f

    :cond_29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/kA;->j6(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_4d

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported pssh version: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "PsshAtomUtil"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :cond_4d
    new-instance v4, Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v1, v3, :cond_65

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v3

    if-eq v1, v3, :cond_71

    :goto_6f
    move-object p0, v2

    goto :goto_7a

    :cond_71
    new-array v3, v1, [B

    invoke-virtual {v0, v3, p0, v1}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    :goto_7a
    if-nez p0, :cond_7d

    return-object v2

    :cond_7d
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/util/UUID;

    return-object p0
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

    array-length p0, p1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method
