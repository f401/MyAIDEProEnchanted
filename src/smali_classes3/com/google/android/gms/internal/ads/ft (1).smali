.class abstract Lcom/google/android/gms/internal/ads/ft;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/nq;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/et;

.field private final FH:Lcom/google/android/gms/internal/ads/et;

.field private final j6:[B


# direct methods
.method constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ft;->j6:[B

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ft;->j6([BI)Lcom/google/android/gms/internal/ads/et;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ft;->DW:Lcom/google/android/gms/internal/ads/et;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ft;->j6([BI)Lcom/google/android/gms/internal/ads/et;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ft;->FH:Lcom/google/android/gms/internal/ads/et;

    return-void
.end method


# virtual methods
.method abstract j6([BI)Lcom/google/android/gms/internal/ads/et;
.end method

.method public j6([B[B)[B
    .registers 9

    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ft;->DW:Lcom/google/android/gms/internal/ads/et;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/et;->j6()I

    const v1, 0x7fffffe3

    if-gt v0, v1, :cond_b9

    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ft;->DW:Lcom/google/android/gms/internal/ads/et;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/et;->j6()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, p1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ft;->DW:Lcom/google/android/gms/internal/ads/et;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/et;->j6()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x10

    if-lt v1, v2, :cond_b1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ft;->DW:Lcom/google/android/gms/internal/ads/et;

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/internal/ads/et;->j6(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ft;->DW:Lcom/google/android/gms/internal/ads/et;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/et;->j6()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    if-nez p2, :cond_4e

    new-array p2, v1, [B

    :cond_4e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ft;->FH:Lcom/google/android/gms/internal/ads/et;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/ads/et;->j6([BI)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v1, 0x20

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    array-length p1, p2

    rem-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_62

    array-length p1, p2

    goto :goto_69

    :cond_62
    array-length p1, p2

    add-int/lit8 p1, p1, 0x10

    array-length v2, p2

    rem-int/lit8 v2, v2, 0x10

    sub-int/2addr p1, v2

    :goto_69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    rem-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_73

    move v4, v2

    goto :goto_76

    :cond_73
    add-int/lit8 v4, v2, 0x10

    sub-int/2addr v4, v3

    :goto_76
    add-int/2addr v4, p1

    add-int/lit8 v3, v4, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    array-length p1, p2

    int-to-long p1, p1

    invoke-virtual {v3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    int-to-long p1, v2

    invoke-virtual {v3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/at;->j6([B[B)[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    add-int/lit8 p2, p2, 0x10

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :cond_b1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given ByteBuffer output is too small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b9
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
