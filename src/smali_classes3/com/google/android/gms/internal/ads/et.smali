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

    fill-array-data v0, :array_12

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/et;->j6(Ljava/nio/ByteBuffer;)[I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/et;->j6:[I

    return-void

    :array_12
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

    if-ne v0, v1, :cond_11

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ys;->j6([B)Lcom/google/android/gms/internal/ads/Ys;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/et;->DW:Lcom/google/android/gms/internal/ads/Ys;

    iput p2, p0, Lcom/google/android/gms/internal/ads/et;->FH:I

    return-void

    :cond_11
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static j6(II)I
    .registers 3

    neg-int v0, p1

    ushr-int v0, p0, v0

    shl-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method static j6(Ljava/nio/ByteBuffer;)[I
    .registers 2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object v0
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

    if-lt v0, v1, :cond_40

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/et;->j6()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bt;->j6(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    div-int/lit8 v2, v1, 0x40

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_3f

    iget v4, p0, Lcom/google/android/gms/internal/ads/et;->FH:I

    add-int/2addr v4, v3

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/internal/ads/et;->j6([BI)Ljava/nio/ByteBuffer;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    const/16 v6, 0x40

    if-ne v3, v5, :cond_39

    rem-int/lit8 v5, v1, 0x40

    invoke-static {p1, p2, v4, v5}, Lcom/google/android/gms/internal/ads/As;->j6(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    goto :goto_3c

    :cond_39
    invoke-static {p1, p2, v4, v6}, Lcom/google/android/gms/internal/ads/As;->j6(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3f
    return-void

    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given ByteBuffer output is too small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :goto_48
    throw p1

    :goto_49
    goto :goto_48
.end method

.method public final j6([B)[B
    .registers 4

    array-length v0, p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/et;->j6()I

    const v1, 0x7ffffff3

    if-gt v0, v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/et;->j6()I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/et;->j6(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :cond_1b
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "plaintext too long"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
