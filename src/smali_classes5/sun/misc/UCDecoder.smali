.class public Lsun/misc/UCDecoder;
.super Lsun/misc/CharacterDecoder;
.source "UCDecoder.java"


# static fields
.field private static final map_array:[B


# instance fields
.field private crc:Lsun/misc/CRC16;

.field private lineAndSeq:Ljava/io/ByteArrayOutputStream;

.field private sequence:I

.field private tmp:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 98
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lsun/misc/UCDecoder;->map_array:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x28t
        0x29t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x2

    .line 85
    invoke-direct {p0}, Lsun/misc/CharacterDecoder;-><init>()V

    .line 111
    new-array v0, v1, [B

    iput-object v0, p0, Lsun/misc/UCDecoder;->tmp:[B

    .line 112
    new-instance v0, Lsun/misc/CRC16;

    invoke-direct {v0}, Lsun/misc/CRC16;-><init>()V

    iput-object v0, p0, Lsun/misc/UCDecoder;->crc:Lsun/misc/CRC16;

    .line 165
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lsun/misc/UCDecoder;->lineAndSeq:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method protected bytesPerAtom()I
    .registers 2

    .line 89
    const/4 v0, 0x2

    return v0
.end method

.method protected bytesPerLine()I
    .registers 2

    .line 94
    const/16 v0, 0x30

    return v0
.end method

.method protected decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 120
    .line 122
    new-array v7, v1, [B

    .line 124
    invoke-virtual {p1, v7}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v0

    .line 125
    if-ne v0, v1, :cond_91

    move v0, v3

    move v6, v5

    move v1, v3

    move v2, v3

    .line 128
    :goto_11
    const/16 v8, 0x40

    if-ge v6, v8, :cond_39

    if-eq v0, v3, :cond_1b

    if-eq v1, v3, :cond_1b

    if-ne v2, v3, :cond_39

    .line 129
    :cond_1b
    aget-byte v8, v7, v5

    sget-object v9, Lsun/misc/UCDecoder;->map_array:[B

    aget-byte v9, v9, v6

    if-ne v8, v9, :cond_24

    .line 130
    int-to-byte v0, v6

    .line 132
    :cond_24
    aget-byte v8, v7, v4

    sget-object v9, Lsun/misc/UCDecoder;->map_array:[B

    aget-byte v9, v9, v6

    if-ne v8, v9, :cond_2d

    .line 133
    int-to-byte v1, v6

    .line 135
    :cond_2d
    aget-byte v8, v7, v10

    sget-object v9, Lsun/misc/UCDecoder;->map_array:[B

    aget-byte v9, v9, v6

    if-ne v8, v9, :cond_36

    .line 136
    int-to-byte v2, v6

    .line 128
    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 139
    :cond_39
    and-int/lit8 v3, v0, 0x38

    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v6, v1, 0x1f

    add-int/2addr v3, v6

    int-to-byte v6, v3

    .line 140
    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x5

    and-int/lit8 v3, v2, 0x1f

    add-int/2addr v0, v3

    int-to-byte v7, v0

    move v3, v5

    move v0, v5

    .line 143
    :goto_4b
    const/16 v5, 0x100

    if-ge v4, v5, :cond_5e

    .line 144
    and-int v5, v6, v4

    if-eqz v5, :cond_55

    .line 145
    add-int/lit8 v3, v3, 0x1

    .line 146
    :cond_55
    and-int v5, v7, v4

    if-eqz v5, :cond_5b

    .line 147
    add-int/lit8 v0, v0, 0x1

    .line 143
    :cond_5b
    mul-int/lit8 v4, v4, 0x2

    goto :goto_4b

    .line 149
    :cond_5e
    and-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x20

    .line 150
    and-int/lit8 v2, v2, 0x20

    div-int/lit8 v2, v2, 0x20

    .line 151
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_89

    .line 154
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_81

    .line 157
    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    .line 158
    iget-object v0, p0, Lsun/misc/UCDecoder;->crc:Lsun/misc/CRC16;

    invoke-virtual {v0, v6}, Lsun/misc/CRC16;->update(B)V

    .line 159
    if-ne p3, v10, :cond_80

    .line 160
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    .line 161
    iget-object v0, p0, Lsun/misc/UCDecoder;->crc:Lsun/misc/CRC16;

    invoke-virtual {v0, v7}, Lsun/misc/CRC16;->update(B)V

    .line 163
    :cond_80
    return-void

    .line 155
    :cond_81
    new-instance v0, Lsun/misc/CEFormatException;

    const-string v1, "UCDecoder: Low byte parity error."

    invoke-direct {v0, v1}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_89
    new-instance v0, Lsun/misc/CEFormatException;

    const-string v1, "UCDecoder: High byte parity error."

    invoke-direct {v0, v1}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_91
    new-instance v0, Lsun/misc/CEStreamExhausted;

    invoke-direct {v0}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v0
.end method

.method protected decodeBufferPrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .registers 4

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/UCDecoder;->sequence:I

    .line 172
    return-void
.end method

.method protected decodeLinePrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lsun/misc/UCDecoder;->crc:Lsun/misc/CRC16;

    iput v2, v0, Lsun/misc/CRC16;->value:I

    .line 192
    :cond_6
    iget-object v0, p0, Lsun/misc/UCDecoder;->tmp:[B

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    .line 193
    const/4 v1, -0x1

    if-eq v0, v1, :cond_43

    .line 196
    iget-object v0, p0, Lsun/misc/UCDecoder;->tmp:[B

    aget-byte v0, v0, v2

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_6

    .line 197
    iget-object v0, p0, Lsun/misc/UCDecoder;->lineAndSeq:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 201
    iget-object v0, p0, Lsun/misc/UCDecoder;->lineAndSeq:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lsun/misc/UCDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 202
    iget-object v0, p0, Lsun/misc/UCDecoder;->lineAndSeq:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 203
    aget-byte v1, v0, v2

    .line 204
    aget-byte v0, v0, v3

    .line 205
    iget v2, p0, Lsun/misc/UCDecoder;->sequence:I

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_3b

    .line 208
    add-int/lit8 v0, v2, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lsun/misc/UCDecoder;->sequence:I

    .line 209
    and-int/lit16 v0, v1, 0xff

    return v0

    .line 206
    :cond_3b
    new-instance v0, Lsun/misc/CEFormatException;

    const-string v1, "UCDecoder: Out of sequence line."

    invoke-direct {v0, v1}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_43
    new-instance v0, Lsun/misc/CEStreamExhausted;

    invoke-direct {v0}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v0
.end method

.method protected decodeLineSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lsun/misc/UCDecoder;->crc:Lsun/misc/CRC16;

    iget v0, v0, Lsun/misc/CRC16;->value:I

    .line 225
    iget-object v1, p0, Lsun/misc/UCDecoder;->lineAndSeq:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 226
    iget-object v1, p0, Lsun/misc/UCDecoder;->lineAndSeq:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v1, v2}, Lsun/misc/UCDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 227
    iget-object v1, p0, Lsun/misc/UCDecoder;->lineAndSeq:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 228
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    const/4 v3, 0x1

    aget-byte v1, v1, v3

    .line 229
    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    if-ne v1, v0, :cond_27

    .line 232
    return-void

    .line 230
    :cond_27
    new-instance v0, Lsun/misc/CEFormatException;

    const-string v1, "UCDecoder: CRC check failed."

    invoke-direct {v0, v1}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
