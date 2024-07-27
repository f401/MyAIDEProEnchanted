.class abstract Lcom/google/android/gms/internal/ads/et;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Zs;


# static fields
.field static final j6:[I


# instance fields
.field final DW:Lcom/google/android/gms/internal/ads/Ys;

.field private final FH:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/et;->j6(Ljava/nio/ByteBuffer;)[I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/et;->j6:[I

    return-void

    :array_0
    .array-data 1
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x64t
        0x20t
        0x33t
        0x32t
        0x2dt
        0x62t
        0x79t
        0x74t
        0x65t
        0x20t
        0x6bt
    .end array-data
.end method

.method constructor <init>([BI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ys;->j6([B)Lcom/google/android/gms/internal/ads/Ys;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/et;->DW:Lcom/google/android/gms/internal/ads/Ys;

    iput p2, p0, Lcom/google/android/gms/internal/ads/et;->FH:I

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "The key length in bytes must be 32."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static j6(II)I
    .registers 4

    neg-int v0, p1

    ushr-int v0, p0, v0

    shl-int v1, p0, p1

    or-int/2addr v0, v1

    return v0
.end method

.method static j6(Ljava/nio/ByteBuffer;)[I
    .registers 3

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object v1
.end method


# virtual methods
.method abstract j6()I
.end method

.method abstract j6([BI)Ljava/nio/ByteBuffer;
.end method

.method final j6(Ljava/nio/ByteBuffer;[B)V
    .registers 10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/et;->j6()I

    move-result v1

    sub-int/2addr v0, v1

    array-length v1, p2

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/et;->j6()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bt;->j6(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    div-int/lit8 v0, v3, 0x40

    add-int/lit8 v4, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    iget v5, p0, Lcom/google/android/gms/internal/ads/et;->FH:I

    add-int/2addr v5, v0

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ads/et;->j6([BI)Ljava/nio/ByteBuffer;

    move-result-object v5

    add-int/lit8 v6, v4, -0x1

    if-ne v0, v6, :cond_0

    rem-int/lit8 v6, v3, 0x40

    invoke-static {p1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/As;->j6(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v6, 0x40

    invoke-static {p1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/As;->j6(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given ByteBuffer output is too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public final j6([B)[B
    .registers 4

    array-length v0, p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/et;->j6()I

    const v1, 0x7ffffff3

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/et;->j6()I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/et;->j6(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "plaintext too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
