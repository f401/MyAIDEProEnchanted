.class final Lorg/apache/tools/bzip2/CRC;
.super Ljava/lang/Object;
.source "CRC.java"


# static fields
.field static final crc32Table:[I


# instance fields
.field globalCrc:I


# direct methods
.method private static $d2j$hex$aebae1ed$decode_B(Ljava/lang/String;)[B
    .registers 14
    .param p0, "src"    # Ljava/lang/String;

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
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_6

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
    if-lt v1, v8, :cond_0

    if-gt v1, v9, :cond_0

    .line 49
    add-int/lit8 v2, v1, -0x30

    .line 58
    .local v2, "hh":I
    :goto_1
    if-lt v4, v8, :cond_3

    if-gt v4, v9, :cond_3

    .line 59
    add-int/lit8 v5, v4, -0x30

    .line 67
    .local v5, "ll":I
    :goto_2
    shl-int/lit8 v7, v2, 0x4

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    .end local v2    # "hh":I
    .end local v5    # "ll":I
    :cond_0
    if-lt v1, v12, :cond_1

    const/16 v7, 0x66

    if-gt v1, v7, :cond_1

    .line 51
    add-int/lit8 v7, v1, -0x61

    add-int/lit8 v2, v7, 0xa

    .restart local v2    # "hh":I
    goto :goto_1

    .line 52
    .end local v2    # "hh":I
    :cond_1
    if-lt v1, v10, :cond_2

    if-gt v1, v11, :cond_2

    .line 53
    add-int/lit8 v7, v1, -0x41

    add-int/lit8 v2, v7, 0xa

    .restart local v2    # "hh":I
    goto :goto_1

    .line 55
    .end local v2    # "hh":I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 60
    .restart local v2    # "hh":I
    :cond_3
    if-lt v4, v12, :cond_4

    const/16 v7, 0x66

    if-gt v4, v7, :cond_4

    .line 61
    add-int/lit8 v7, v4, -0x61

    add-int/lit8 v5, v7, 0xa

    .restart local v5    # "ll":I
    goto :goto_2

    .line 62
    .end local v5    # "ll":I
    :cond_4
    if-lt v4, v10, :cond_5

    if-gt v4, v11, :cond_5

    .line 63
    add-int/lit8 v7, v4, -0x41

    add-int/lit8 v5, v7, 0xa

    .restart local v5    # "ll":I
    goto :goto_2

    .line 65
    .end local v5    # "ll":I
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 69
    .end local v1    # "h":C
    .end local v2    # "hh":I
    .end local v4    # "l":C
    :cond_6
    return-object v6
.end method

.method private static $d2j$hex$aebae1ed$decode_I(Ljava/lang/String;)[I
    .registers 6
    .param p0, "src"    # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Lorg/apache/tools/bzip2/CRC;->$d2j$hex$aebae1ed$decode_B(Ljava/lang/String;)[B

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

.method private static $d2j$hex$aebae1ed$decode_J(Ljava/lang/String;)[J
    .registers 6
    .param p0, "src"    # Ljava/lang/String;

    .line 12
    invoke-static {p0}, Lorg/apache/tools/bzip2/CRC;->$d2j$hex$aebae1ed$decode_B(Ljava/lang/String;)[B

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

.method private static $d2j$hex$aebae1ed$decode_S(Ljava/lang/String;)[S
    .registers 6
    .param p0, "src"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lorg/apache/tools/bzip2/CRC;->$d2j$hex$aebae1ed$decode_B(Ljava/lang/String;)[B

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

    .line 33
    const-string v0, "00000000b71dc1046e3b8209d926430ddc7604136b6bc517b24d861a0550471eb8ed08260ff0c922d6d68a2f61cb4b2b649b0c35d386cd310aa08e3cbdbd4f3870db114cc7c6d0481ee09345a9fd5241acad155f1bb0d45bc2969756758b5652c836196a7f2bd86ea60d9b6311105a6714401d79a35ddc7d7a7b9f70cd665e74e0b6239857abe29c8e8da191399060953cc0278b8bdde68f52fba582e5e66486585b2bbeef46eaba3660a9b7817d68b3842d2fad3330eea9ea16ada45d0b6ca0906d32d42770f3d0fe56b0dd494b71d94c1b36c7fb06f7c32220b4ce953d75ca28803af29f9dfbf646bbb8fbf1a679fff4f63ee143ebffe59acdbce82dd07dec77708634c06d4730194b043dae56c539ab0682271c1b4323c53d002e7220c12acf9d8e1278804f16a1a60c1b16bbcd1f13eb8a01a4f64b057dd00808cacdc90c07ab9778b0b6567c69901571de8dd475dbdd936b6cc0526fb5e6116202fbd066bf469f5e085b5e5ad17d1d576660dc5363309b4dd42d5a490d0b1944ba16d84097c6a5ac20db64a8f9fd27a54ee0e6a14bb0a1bffcad60bb258b23b69296e2b22f2bad8a98366c8e41102f83f60dee87f35da9994440689d9d662b902a7bea94e71db4e0500075e4892636e93e3bf7ed3b6bb0f38c7671f7555032fae24df3fe5ff0bcc6e8ed7dc231cb3ecf86d6ffcb8386b8d5349b79d1edbd3adc5aa0fbd8eee00c6959fdcd6d80db8e6037c64f643296087a858bc97e5cad8a73ebb04b77560d044fe110c54b383686468f2b47428a7b005c3d66c158e4408255535d43519e3b1d252926dc21f0009f2c471d5e28424d1936f550d8322c769b3f9b6b5a3b26d6150391cbd40748ed970afff0560efaa011104dbdd014949b93192386521d0e562ff1b94beef5606dadf8d7706cfcd2202be2653deae6bc1ba9eb0b0668efb6bb27d701a6e6d3d880a5de6f9d64da6acd23c4ddd0e2c004f6a1cdb3eb60c97e8d3ebdc990ffb910b6bcb4a7ab7db0a2fb3aae15e6fbaaccc0b8a77bdd79a3c660369b717df79fa85bb4921f4675961a163288ad0bf38c742db081c330718599908a5d2e8d4b59f7ab085440b6c95045e68e4ef2fb4f4a2bdd0c479cc0cd43217d827b9660437f4f460072f85bc176fd0b86684a16476c93300461242dc565e94b9b115e565a1587701918306dd81c353d9f0282205e065b061d0bec1bdc0f51a69337e6bb52333f9d113e8880d03a8dd097243acd5620e3eb152d54f6d4297926a9c5ce3b68c1171d2bcca000eac8a550add6124d6cd2cb6b2fdf7c76eedbc1cba1e376d660e7aff023ea18ede2ee1dbda5f0aaa064f4738627f9c49be6fd09fdb889bee0798d67c63a80d0dbfb84d58bbc9a62967d9ebbb03e930cadff97b110b0af060d71abdf2b32a66836f3a26d66b4bcda7b75b8035d36b5b440f7b1"

    invoke-static {v0}, Lorg/apache/tools/bzip2/CRC;->$d2j$hex$aebae1ed$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lorg/apache/tools/bzip2/CRC;->crc32Table:[I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p0}, Lorg/apache/tools/bzip2/CRC;->initialiseCRC()V

    .line 102
    return-void
.end method


# virtual methods
.method getFinalCRC()I
    .registers 2

    .line 109
    iget v0, p0, Lorg/apache/tools/bzip2/CRC;->globalCrc:I

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method getGlobalCRC()I
    .registers 2

    .line 113
    iget v0, p0, Lorg/apache/tools/bzip2/CRC;->globalCrc:I

    return v0
.end method

.method initialiseCRC()V
    .registers 2

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/bzip2/CRC;->globalCrc:I

    .line 106
    return-void
.end method

.method setGlobalCRC(I)V
    .registers 2

    .line 117
    iput p1, p0, Lorg/apache/tools/bzip2/CRC;->globalCrc:I

    .line 118
    return-void
.end method

.method updateCRC(I)V
    .registers 5

    .line 121
    iget v1, p0, Lorg/apache/tools/bzip2/CRC;->globalCrc:I

    shr-int/lit8 v0, v1, 0x18

    xor-int/2addr v0, p1

    .line 122
    if-gez v0, :cond_0

    .line 123
    add-int/lit16 v0, v0, 0x100

    .line 125
    :cond_0
    shl-int/lit8 v1, v1, 0x8

    sget-object v2, Lorg/apache/tools/bzip2/CRC;->crc32Table:[I

    aget v0, v2, v0

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/tools/bzip2/CRC;->globalCrc:I

    .line 126
    return-void
.end method

.method updateCRC(II)V
    .registers 6

    .line 129
    iget v0, p0, Lorg/apache/tools/bzip2/CRC;->globalCrc:I

    move v1, v0

    .line 130
    :goto_0
    if-lez p2, :cond_1

    .line 131
    shr-int/lit8 v0, v1, 0x18

    xor-int/2addr v0, p1

    .line 132
    sget-object v2, Lorg/apache/tools/bzip2/CRC;->crc32Table:[I

    if-ltz v0, :cond_0

    .line 134
    :goto_1
    shl-int/lit8 v1, v1, 0x8

    aget v0, v2, v0

    xor-int/2addr v0, v1

    .line 135
    add-int/lit8 p2, p2, -0x1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_0
    add-int/lit16 v0, v0, 0x100

    goto :goto_1

    .line 136
    :cond_1
    iput v1, p0, Lorg/apache/tools/bzip2/CRC;->globalCrc:I

    .line 137
    return-void
.end method
