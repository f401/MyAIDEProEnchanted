.class final Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;
.super Lcom/google/common/hash/AbstractByteHasher;
.source "Crc32cHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Crc32cHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Crc32cHasher"
.end annotation


# static fields
.field static final CRC_TABLE:[I


# instance fields
.field private crc:I


# direct methods
.method private static $d2j$hex$5b499846$decode_B(Ljava/lang/String;)[B
    .locals 11

    const/16 v10, 0x61

    const/16 v9, 0x46

    const/16 v8, 0x41

    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    .line 44
    const/4 v0, 0x0

    :goto_0
    array-length v1, v4

    if-ge v0, v1, :cond_6

    .line 45
    mul-int/lit8 v1, v0, 0x2

    aget-char v1, v3, v1

    .line 46
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v5, v3, v2

    .line 48
    if-lt v1, v6, :cond_0

    if-gt v1, v7, :cond_0

    .line 49
    add-int/lit8 v1, v1, -0x30

    move v2, v1

    .line 58
    :goto_1
    if-lt v5, v6, :cond_3

    if-gt v5, v7, :cond_3

    .line 59
    add-int/lit8 v1, v5, -0x30

    .line 67
    :goto_2
    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    if-lt v1, v10, :cond_1

    const/16 v2, 0x66

    if-gt v1, v2, :cond_1

    .line 51
    add-int/lit8 v1, v1, -0x61

    add-int/lit8 v1, v1, 0xa

    move v2, v1

    goto :goto_1

    .line 52
    :cond_1
    if-lt v1, v8, :cond_2

    if-gt v1, v9, :cond_2

    .line 53
    add-int/lit8 v1, v1, -0x41

    add-int/lit8 v1, v1, 0xa

    move v2, v1

    goto :goto_1

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60
    :cond_3
    if-lt v5, v10, :cond_4

    const/16 v1, 0x66

    if-gt v5, v1, :cond_4

    .line 61
    add-int/lit8 v1, v5, -0x61

    add-int/lit8 v1, v1, 0xa

    goto :goto_2

    .line 62
    :cond_4
    if-lt v5, v8, :cond_5

    if-gt v5, v9, :cond_5

    .line 63
    add-int/lit8 v1, v5, -0x41

    add-int/lit8 v1, v1, 0xa

    goto :goto_2

    .line 65
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69
    :cond_6
    return-object v4
.end method

.method private static $d2j$hex$5b499846$decode_I(Ljava/lang/String;)[I
    .locals 3

    .line 22
    invoke-static {p0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->$d2j$hex$5b499846$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 24
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 26
    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    .line 27
    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 28
    return-object v0
.end method

.method private static $d2j$hex$5b499846$decode_J(Ljava/lang/String;)[J
    .locals 3

    .line 12
    invoke-static {p0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->$d2j$hex$5b499846$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 14
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    .line 16
    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [J

    .line 17
    invoke-virtual {v1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 18
    return-object v0
.end method

.method private static $d2j$hex$5b499846$decode_S(Ljava/lang/String;)[S
    .locals 3

    .line 32
    invoke-static {p0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->$d2j$hex$5b499846$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 34
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 36
    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 37
    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 38
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, "0000000003836bf2f7703be1f4f350131f979ac71c14f135e8e7a126eb64cad4cf58d98accdbb2783828e26b3bab8999d0cf434dd34c28bf27bf78ac243c135e6fc75e106c4435e298b765f19b340e037050c4d773d3af258720ff3684a394c4a09f879aa31cec6857efbc7b546cd789bf081d5dbc8b76af487826bc4bfb4d4ede8ebd20dd0dd6d229fe86c12a7ded33c11927e7c29a4c1536691c0635ea77f411d664aa12550f58e6a65f4be52534b90e41fe6d0dc2959ff931c58cfab2ae7eb149e330b2ca88c24639d8d145bab323aede79f7ad5d120559ae42165a2d29e47e113aba7d9251488961015b8ae26aa96186a07d6205cb8f96f69b9c9575f06ebc1d7b41bf9e10b34b6d40a048ee2b52a38ae186a0098a7454fada675779b1957345a2cb70c6c9398435992a87b6f2d86cd2380c6f5153fe9ba203ed9821681fd3da2551d0594ea324aa1eb027297542cc4dbf96cfced4643b3d847738beef851c82fcdb1f019729ebf2c73ae871acc80315661c00960deef4655dfdf7e6360f6293c6616110ad9395e3fd80966096727d045ca67e8737548a74674789f70cb5adcb1febae4874195abb240a59384ff8b25c852cb1dfeede452cbecd46afd53f0d5498710ed7f383fa24a390f9a7c86212c302b611406944e5b33957e63052a5c20c41fbc18f2a09357c7a1a36ff11e8dd9bdb3cde18b0ce2aebe0dd29688b2f783bf6827bb89d708f4bcd638cc8a69167ac6c45642f07b790dc57a4935f3c56b7632f08b4e044fa401314e943907f1ba8f4b5cfab77de3d5f848e2e5c07e5dc17fca892147fc360e08c9373e30ff881086b32550be859a7ff1b09b4fc986246d8a47118db271aea2fd44af92c57210bc733ebdfc4b0802d3043d03e33c0bbcca6b54ba2a536205051c5704352461bb1b922d165baa1ba974e52ea844dd1817669ed92286a6ef9da9e9da9c99d1ec23b767a08ef75f9631d810a330e828958fcc97215b2caf17e403e022e533d8145a1d6e58f75d566e4872195b4942216df66062acc3805a9a7caf15af7d9f2d99c2b19bd56ff1a3e3d0deecd6d1eed4e06ecc4268dc3c7a5e6313356b62230d5ddd0dbb11704d8327cf62cc12ce52f4247170b7e544908fd3fbbfc0e6fa8ff8d045a14e9ce8e176aa57ce399f56fe01a9e9dabe1d3d3a862b8215c91e8325f1283c0b4764914b7f522e6430672f54085190764b90a59673a61ab93c931b8904a5a4a7b2e909e78adfb6c8c5eab7f8fddc08d1aa830e3192b5b11edd80b02ee5b60f0053faa2406bcc1d6f24f91c5f1ccfa37d5f0e969d673829b2280d2882103b97aca6773aec9e4185c3d17484f3e9423bd756f6ef376ec0501821f5512819c3ee06af8f434697b9fc69d88cfd59e0ba427ba37b779b9b4dc8b4d478c984ec4e76aa5a02dbea623464c52d0165f51537dad"

    invoke-static {v0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->$d2j$hex$5b499846$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->CRC_TABLE:[I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/google/common/hash/AbstractByteHasher;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 1

    .line 125
    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public update(B)V
    .locals 3

    .line 118
    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    .line 120
    ushr-int/lit8 v1, v0, 0x8

    sget-object v2, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->CRC_TABLE:[I

    xor-int/2addr v0, p1

    and-int/lit16 v0, v0, 0xff

    aget v0, v2, v0

    xor-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    .line 121
    return-void
.end method
