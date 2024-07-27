.class public Lsun/misc/BASE64Decoder;
.super Lsun/misc/CharacterDecoder;
.source "BASE64Decoder.java"


# static fields
.field private static final pem_array:[C

.field private static final pem_convert_array:[B


# instance fields
.field decode_buffer:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    .line 77
    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lsun/misc/BASE64Decoder;->pem_array:[C

    .line 89
    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    move v1, v0

    .line 92
    :goto_0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    .line 93
    sget-object v2, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    :goto_1
    sget-object v1, Lsun/misc/BASE64Decoder;->pem_array:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 96
    sget-object v2, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    aget-char v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_1
    return-void

    .line 77
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Lsun/misc/CharacterDecoder;-><init>()V

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    return-void
.end method


# virtual methods
.method protected bytesPerAtom()I
    .registers 2

    .line 65
    const/4 v0, 0x4

    return v0
.end method

.method protected bytesPerLine()I
    .registers 2

    .line 70
    const/16 v0, 0x48

    return v0
.end method

.method protected decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v0, -0x1

    const/4 v6, 0x2

    .line 109
    .line 111
    if-lt p3, v6, :cond_8

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 116
    if-eq v1, v0, :cond_7

    .line 119
    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 120
    iget-object v2, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    int-to-byte v1, v1

    aput-byte v1, v2, v8

    .line 122
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p0, p1, v2, v4, v1}, Lsun/misc/BASE64Decoder;->readFully(Ljava/io/InputStream;[BII)I

    move-result v1

    .line 123
    if-eq v1, v0, :cond_6

    .line 127
    if-le p3, v7, :cond_b

    iget-object v1, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v1, v1, v7

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_b

    move v1, v7

    .line 130
    :goto_0
    if-le v1, v6, :cond_a

    iget-object v2, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v2, v2, v6

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_a

    move v5, v6

    .line 133
    :goto_1
    if-eq v5, v6, :cond_9

    if-eq v5, v7, :cond_2

    const/4 v1, 0x4

    if-eq v5, v1, :cond_1

    move v3, v0

    move v4, v0

    move v1, v0

    move v2, v0

    .line 146
    :goto_2
    if-eq v5, v6, :cond_5

    if-eq v5, v7, :cond_4

    const/4 v0, 0x4

    if-eq v5, v0, :cond_3

    .line 149
    :goto_3
    return-void

    .line 135
    :cond_1
    sget-object v0, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    iget-object v1, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v1, v1, v7

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    .line 138
    :cond_2
    sget-object v1, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    iget-object v2, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    move v2, v0

    .line 141
    :goto_4
    sget-object v0, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    iget-object v3, p0, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v0, v4

    .line 142
    aget-byte v3, v3, v8

    and-int/lit16 v3, v3, 0xff

    aget-byte v0, v0, v3

    move v3, v0

    goto :goto_2

    .line 155
    :cond_3
    shl-int/lit8 v0, v3, 0x2

    and-int/lit16 v0, v0, 0xfc

    ushr-int/lit8 v3, v4, 0x4

    and-int/lit8 v3, v3, 0x3

    or-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 156
    shl-int/lit8 v0, v4, 0x4

    and-int/lit16 v0, v0, 0xf0

    ushr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 157
    shl-int/lit8 v0, v1, 0x6

    and-int/lit16 v0, v0, 0xc0

    and-int/lit8 v1, v2, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    .line 151
    :cond_4
    shl-int/lit8 v0, v3, 0x2

    and-int/lit16 v0, v0, 0xfc

    ushr-int/lit8 v2, v4, 0x4

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v0, v2

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 152
    shl-int/lit8 v0, v4, 0x4

    and-int/lit16 v0, v0, 0xf0

    ushr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    .line 148
    :cond_5
    shl-int/lit8 v0, v3, 0x2

    and-int/lit16 v0, v0, 0xfc

    ushr-int/lit8 v1, v4, 0x4

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    .line 124
    :cond_6
    new-instance v0, Lsun/misc/CEStreamExhausted;

    invoke-direct {v0}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v0

    .line 117
    :cond_7
    new-instance v0, Lsun/misc/CEStreamExhausted;

    invoke-direct {v0}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v0

    .line 112
    :cond_8
    new-instance v0, Lsun/misc/CEFormatException;

    const-string v1, "BASE64Decoder: Not enough bytes for an atom."

    invoke-direct {v0, v1}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v1, v0

    move v2, v0

    goto :goto_4

    :cond_a
    move v5, v1

    goto/16 :goto_1

    :cond_b
    move v1, p3

    goto/16 :goto_0
.end method
