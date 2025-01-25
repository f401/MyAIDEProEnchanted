.class public Lcom/baidu/mobstat/fe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/nio/charset/CodingErrorAction;

.field private static final b:[I


# direct methods
.method private static $d2j$hex$3988eb2a$decode_B(Ljava/lang/String;)[B
    .registers 13
    .param p0, "src"  # Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 43
    .local v0, "d":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 44
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, v1

    if-ge v2, v3, :cond_6b

    .line 45
    mul-int/lit8 v3, v2, 0x2

    aget-char v3, v0, v3

    .line 46
    .local v3, "h":C
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v0, v4

    .line 48
    .local v4, "l":C
    const/16 v5, 0x46

    const/16 v6, 0x66

    const/16 v7, 0x39

    const/16 v8, 0x41

    const/16 v9, 0x61

    const/16 v10, 0x30

    if-lt v3, v10, :cond_2d

    if-gt v3, v7, :cond_2d

    .line 49
    add-int/lit8 v11, v3, -0x30

    .local v11, "hh":I
    goto :goto_3e

    .line 50
    .end local v11  # "hh":I
    :cond_2d
    if-lt v3, v9, :cond_36

    if-gt v3, v6, :cond_36

    .line 51
    add-int/lit8 v11, v3, -0x61

    add-int/lit8 v11, v11, 0xa

    .restart local v11  # "hh":I
    goto :goto_3e

    .line 52
    .end local v11  # "hh":I
    :cond_36
    if-lt v3, v8, :cond_65

    if-gt v3, v5, :cond_65

    .line 53
    add-int/lit8 v11, v3, -0x41

    add-int/lit8 v11, v11, 0xa

    .line 58
    .restart local v11  # "hh":I
    :goto_3e
    if-lt v4, v10, :cond_45

    if-gt v4, v7, :cond_45

    .line 59
    add-int/lit8 v5, v4, -0x30

    .local v5, "ll":I
    goto :goto_56

    .line 60
    .end local v5  # "ll":I
    :cond_45
    if-lt v4, v9, :cond_4e

    if-gt v4, v6, :cond_4e

    .line 61
    add-int/lit8 v5, v4, -0x61

    add-int/lit8 v5, v5, 0xa

    .restart local v5  # "ll":I
    goto :goto_56

    .line 62
    .end local v5  # "ll":I
    :cond_4e
    if-lt v4, v8, :cond_5f

    if-gt v4, v5, :cond_5f

    .line 63
    add-int/lit8 v5, v4, -0x41

    add-int/lit8 v5, v5, 0xa

    .line 67
    .restart local v5  # "ll":I
    :goto_56
    shl-int/lit8 v6, v11, 0x4

    or-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 44
    .end local v3  # "h":C
    .end local v4  # "l":C
    .end local v5  # "ll":I
    .end local v11  # "hh":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 65
    .restart local v3  # "h":C
    .restart local v4  # "l":C
    .restart local v11  # "hh":I
    :cond_5f
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 55
    .end local v11  # "hh":I
    :cond_65
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 69
    .end local v2  # "i":I
    .end local v3  # "h":C
    .end local v4  # "l":C
    :cond_6b
    return-object v1
.end method

.method private static $d2j$hex$3988eb2a$decode_I(Ljava/lang/String;)[I
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Lcom/baidu/mobstat/fe;->$d2j$hex$3988eb2a$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 23
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 24
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    .line 26
    .local v2, "s":Ljava/nio/IntBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [I

    .line 27
    .local v3, "data":[I
    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 28
    return-object v3
.end method

.method private static $d2j$hex$3988eb2a$decode_J(Ljava/lang/String;)[J
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 12
    invoke-static {p0}, Lcom/baidu/mobstat/fe;->$d2j$hex$3988eb2a$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 13
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 14
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 16
    .local v2, "s":Ljava/nio/LongBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [J

    .line 17
    .local v3, "data":[J
    invoke-virtual {v2, v3}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 18
    return-object v3
.end method

.method private static $d2j$hex$3988eb2a$decode_S(Ljava/lang/String;)[S
    .registers 5
    .param p0, "src"  # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/baidu/mobstat/fe;->$d2j$hex$3988eb2a$decode_B(Ljava/lang/String;)[B

    move-result-object v0

    .line 33
    .local v0, "d":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 34
    .local v1, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 36
    .local v2, "s":Ljava/nio/ShortBuffer;
    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [S

    .line 37
    .local v3, "data":[S
    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 38
    return-object v3
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 15
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    sput-object v0, Lcom/baidu/mobstat/fe;->a:Ljava/nio/charset/CodingErrorAction;

    .line 94
    const-string v0, "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000009000000090000000900000009000000090000000900000009000000090000000900000009000000090000000900000009000000090000000900000009000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000007000000070000000700000008000000080000000200000002000000020000000200000002000000020000000200000002000000020000000200000002000000020000000200000002000000020000000200000002000000020000000200000002000000020000000200000002000000020000000200000002000000020000000200000002000000020000000a0000000300000003000000030000000300000003000000030000000300000003000000030000000300000003000000030000000400000003000000030000000b000000060000000600000006000000050000000800000008000000080000000800000008000000080000000800000008000000080000000800000008000000000000000100000002000000030000000500000008000000070000000100000001000000010000000400000006000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000000000000100000001000000010000000100000001000000000000000100000000000000010000000100000001000000010000000100000001000000010000000200000001000000010000000100000001000000010000000200000001000000020000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000002000000010000000100000001000000010000000100000001000000010000000100000001000000020000000100000001000000010000000100000001000000010000000100000002000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000300000001000000030000000100000001000000010000000100000001000000010000000100000003000000010000000100000001000000010000000100000003000000010000000300000001000000010000000100000001000000010000000100000001000000030000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000"

    invoke-static {v0}, Lcom/baidu/mobstat/fe;->$d2j$hex$3988eb2a$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/fe;->b:[I

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    .line 70
    const-string v0, "UTF8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/baidu/mobstat/fe;->a:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 72
    sget-object v1, Lcom/baidu/mobstat/fe;->a:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 76
    :try_start_14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 77
    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;
    :try_end_22
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_14 .. :try_end_22} :catch_23

    return-object v0

    :catch_23
    move-exception p0

    .line 80
    new-instance v0, Lcom/baidu/mobstat/ej;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1, p0}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 5

    .line 45
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception p0

    .line 47
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ljava/nio/ByteBuffer;I)Z
    .registers 8

    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p1, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    :goto_9
    const/4 v3, 0x1

    if-ge p1, v0, :cond_23

    .line 127
    sget-object v4, Lcom/baidu/mobstat/fe;->b:[I

    shl-int/lit8 v2, v2, 0x4

    add-int/lit16 v2, v2, 0x100

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v5, v4, v5

    add-int/2addr v2, v5

    aget v2, v4, v2

    if-ne v2, v3, :cond_20

    return v1

    :cond_20
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_23
    return v3
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 2

    .line 22
    :try_start_0
    const-string v0, "UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Ljava/nio/ByteBuffer;)Z
    .registers 2

    .line 142
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/fe;->a(Ljava/nio/ByteBuffer;I)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)[B
    .registers 2

    .line 33
    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
