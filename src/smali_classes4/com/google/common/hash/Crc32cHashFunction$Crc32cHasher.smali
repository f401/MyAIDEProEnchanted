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
    .registers 14
    .param p0, "src"  # Ljava/lang/String;

    const/16 v12, 0x61

    const/16 v11, 0x46

    const/16 v10, 0x41

    const/16 v9, 0x39

    const/16 v8, 0x30

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 43
    .local v0, "d":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 44
    .local v6, "ret":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    array-length v7, v6

    if-ge v3, v7, :cond_6d

    .line 45
    mul-int/lit8 v7, v3, 0x2

    aget-char v1, v0, v7

    .line 46
    .local v1, "h":C
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-char v4, v0, v7

    .line 48
    .local v4, "l":C
    if-lt v1, v8, :cond_39

    if-gt v1, v9, :cond_39

    .line 49
    add-int/lit8 v2, v1, -0x30

    .line 58
    .local v2, "hh":I
    :goto_2a
    if-lt v4, v8, :cond_53

    if-gt v4, v9, :cond_53

    .line 59
    add-int/lit8 v5, v4, -0x30

    .line 67
    .local v5, "ll":I
    :goto_30
    shl-int/lit8 v7, v2, 0x4

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 50
    .end local v2  # "hh":I
    .end local v5  # "ll":I
    :cond_39
    if-lt v1, v12, :cond_44

    const/16 v7, 0x66

    if-gt v1, v7, :cond_44

    .line 51
    add-int/lit8 v7, v1, -0x61

    add-int/lit8 v2, v7, 0xa

    .restart local v2  # "hh":I
    goto :goto_2a

    .line 52
    .end local v2  # "hh":I
    :cond_44
    if-lt v1, v10, :cond_4d

    if-gt v1, v11, :cond_4d

    .line 53
    add-int/lit8 v7, v1, -0x41

    add-int/lit8 v2, v7, 0xa

    .restart local v2  # "hh":I
    goto :goto_2a

    .line 55
    .end local v2  # "hh":I
    :cond_4d
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 60
    .restart local v2  # "hh":I
    :cond_53
    if-lt v4, v12, :cond_5e

    const/16 v7, 0x66

    if-gt v4, v7, :cond_5e

    .line 61
    add-int/lit8 v7, v4, -0x61

    add-int/lit8 v5, v7, 0xa

    .restart local v5  # "ll":I
    goto :goto_30

    .line 62
    .end local v5  # "ll":I
    :cond_5e
    if-lt v4, v10, :cond_67

    if-gt v4, v11, :cond_67

    .line 63
    add-int/lit8 v7, v4, -0x41

    add-int/lit8 v5, v7, 0xa

    .restart local v5  # "ll":I
    goto :goto_30

    .line 65
    .end local v5  # "ll":I
    :cond_67
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 69
    .end local v1  # "h":C
    .end local v2  # "hh":I
    .end local v4  # "l":C
    :cond_6d
    return-object v6
.end method

.method private static $d2j$hex$5b499846$decode_I(Ljava/lang/String;)[I
    .registers 6
    .param p0, "src"  # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->$d2j$hex$5b499846$decode_B(Ljava/lang/String;)[B

    move-result-object v1

    .line 23
    .local v1, "d":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    .local v0, "b":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 26
    .local v3, "s":Ljava/nio/IntBuffer;
    array-length v4, v1

    div-int/lit8 v4, v4, 0x4

    new-array v2, v4, [I

    .line 27
    .local v2, "data":[I
    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 28
    return-object v2
.end method

.method private static $d2j$hex$5b499846$decode_J(Ljava/lang/String;)[J
    .registers 6
    .param p0, "src"  # Ljava/lang/String;

    .line 12
    invoke-static {p0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->$d2j$hex$5b499846$decode_B(Ljava/lang/String;)[B

    move-result-object v1

    .line 13
    .local v1, "d":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 14
    .local v0, "b":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    .line 16
    .local v3, "s":Ljava/nio/LongBuffer;
    array-length v4, v1

    div-int/lit8 v4, v4, 0x8

    new-array v2, v4, [J

    .line 17
    .local v2, "data":[J
    invoke-virtual {v3, v2}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 18
    return-object v2
.end method

.method private static $d2j$hex$5b499846$decode_S(Ljava/lang/String;)[S
    .registers 6
    .param p0, "src"  # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->$d2j$hex$5b499846$decode_B(Ljava/lang/String;)[B

    move-result-object v1

    .line 33
    .local v1, "d":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    .local v0, "b":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    .line 36
    .local v3, "s":Ljava/nio/ShortBuffer;
    array-length v4, v1

    div-int/lit8 v4, v4, 0x2

    new-array v2, v4, [S

    .line 37
    .local v2, "data":[S
    invoke-virtual {v3, v2}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 38
    return-object v2
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-string v0, "0000000003836bf2f7703be1f4f350131f979ac71c14f135e8e7a126eb64cad4cf58d98accdbb2783828e26b3bab8999d0cf434dd34c28bf27bf78ac243c135e6fc75e106c4435e298b765f19b340e037050c4d773d3af258720ff3684a394c4a09f879aa31cec6857efbc7b546cd789bf081d5dbc8b76af487826bc4bfb4d4ede8ebd20dd0dd6d229fe86c12a7ded33c11927e7c29a4c1536691c0635ea77f411d664aa12550f58e6a65f4be52534b90e41fe6d0dc2959ff931c58cfab2ae7eb149e330b2ca88c24639d8d145bab323aede79f7ad5d120559ae42165a2d29e47e113aba7d9251488961015b8ae26aa96186a07d6205cb8f96f69b9c9575f06ebc1d7b41bf9e10b34b6d40a048ee2b52a38ae186a0098a7454fada675779b1957345a2cb70c6c9398435992a87b6f2d86cd2380c6f5153fe9ba203ed9821681fd3da2551d0594ea324aa1eb027297542cc4dbf96cfced4643b3d847738beef851c82fcdb1f019729ebf2c73ae871acc80315661c00960deef4655dfdf7e6360f6293c6616110ad9395e3fd80966096727d045ca67e8737548a74674789f70cb5adcb1febae4874195abb240a59384ff8b25c852cb1dfeede452cbecd46afd53f0d5498710ed7f383fa24a390f9a7c86212c302b611406944e5b33957e63052a5c20c41fbc18f2a09357c7a1a36ff11e8dd9bdb3cde18b0ce2aebe0dd29688b2f783bf6827bb89d708f4bcd638cc8a69167ac6c45642f07b790dc57a4935f3c56b7632f08b4e044fa401314e943907f1ba8f4b5cfab77de3d5f848e2e5c07e5dc17fca892147fc360e08c9373e30ff881086b32550be859a7ff1b09b4fc986246d8a47118db271aea2fd44af92c57210bc733ebdfc4b0802d3043d03e33c0bbcca6b54ba2a536205051c5704352461bb1b922d165baa1ba974e52ea844dd1817669ed92286a6ef9da9e9da9c99d1ec23b767a08ef75f9631d810a330e828958fcc97215b2caf17e403e022e533d8145a1d6e58f75d566e4872195b4942216df66062acc3805a9a7caf15af7d9f2d99c2b19bd56ff1a3e3d0deecd6d1eed4e06ecc4268dc3c7a5e6313356b62230d5ddd0dbb11704d8327cf62cc12ce52f4247170b7e544908fd3fbbfc0e6fa8ff8d045a14e9ce8e176aa57ce399f56fe01a9e9dabe1d3d3a862b8215c91e8325f1283c0b4764914b7f522e6430672f54085190764b90a59673a61ab93c931b8904a5a4a7b2e909e78adfb6c8c5eab7f8fddc08d1aa830e3192b5b11edd80b02ee5b60f0053faa2406bcc1d6f24f91c5f1ccfa37d5f0e969d673829b2280d2882103b97aca6773aec9e4185c3d17484f3e9423bd756f6ef376ec0501821f5512819c3ee06af8f434697b9fc69d88cfd59e0ba427ba37b779b9b4dc8b4d478c984ec4e76aa5a02dbea623464c52d0165f51537dad"

    invoke-static {v0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->$d2j$hex$5b499846$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->CRC_TABLE:[I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/google/common/hash/AbstractByteHasher;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .registers 2

    .line 125
    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public update(B)V
    .registers 5

    .line 118
    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    .line 120
    sget-object v1, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->CRC_TABLE:[I

    xor-int v2, v0, p1

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    ushr-int/lit8 v0, v0, 0x8

    xor-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    .line 121
    return-void
.end method
