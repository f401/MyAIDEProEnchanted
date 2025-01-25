.class public Lsun/misc/UUDecoder;
.super Lsun/misc/CharacterDecoder;
.source "UUDecoder.java"


# instance fields
.field public bufferName:Ljava/lang/String;

.field private decoderBuffer:[B

.field public mode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Lsun/misc/CharacterDecoder;-><init>()V

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/misc/UUDecoder;->decoderBuffer:[B

    return-void
.end method


# virtual methods
.method protected bytesPerAtom()I
    .registers 2

    .line 103
    const/4 v0, 0x3

    return v0
.end method

.method protected bytesPerLine()I
    .registers 2

    .line 111
    const/16 v0, 0x2d

    return v0
.end method

.method protected decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 126
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 128
    :goto_9
    const/4 v3, 0x4

    if-ge v0, v3, :cond_29

    .line 129
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    .line 130
    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    .line 133
    int-to-char v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    iget-object v4, p0, Lsun/misc/UUDecoder;->decoderBuffer:[B

    add-int/lit8 v3, v3, -0x20

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 131
    :cond_23
    new-instance v0, Lsun/misc/CEStreamExhausted;

    invoke-direct {v0}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v0

    .line 136
    :cond_29
    iget-object v0, p0, Lsun/misc/UUDecoder;->decoderBuffer:[B

    aget-byte v1, v0, v1

    aget-byte v2, v0, v7

    .line 137
    aget-byte v3, v0, v7

    aget-byte v4, v0, v8

    .line 138
    aget-byte v5, v0, v8

    const/4 v6, 0x3

    aget-byte v0, v0, v6

    .line 139
    shl-int/lit8 v1, v1, 0x2

    and-int/lit16 v1, v1, 0xfc

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 140
    if-le p3, v7, :cond_58

    .line 141
    shl-int/lit8 v1, v3, 0x4

    and-int/lit16 v1, v1, 0xf0

    ushr-int/lit8 v2, v4, 0x2

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 143
    :cond_58
    if-le p3, v8, :cond_67

    .line 144
    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v1, v5, 0x6

    and-int/lit16 v1, v1, 0xc0

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 146
    :cond_67
    return-void
.end method

.method protected decodeBufferPrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/16 v8, 0x20

    const/4 v7, -0x1

    const/16 v6, 0xd

    const/16 v5, 0xa

    .line 155
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 165
    :goto_e
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    .line 166
    if-eq v2, v7, :cond_80

    .line 169
    const/16 v4, 0x62

    if-ne v2, v4, :cond_77

    if-eqz v0, :cond_77

    .line 170
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 171
    const/16 v2, 0x65

    if-ne v0, v2, :cond_78

    .line 172
    :cond_22
    :goto_22
    if-eq v0, v5, :cond_3d

    if-eq v0, v6, :cond_3d

    .line 182
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 183
    if-eq v0, v7, :cond_35

    .line 186
    if-eq v0, v5, :cond_22

    if-eq v0, v6, :cond_22

    .line 187
    int-to-char v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_22

    .line 184
    :cond_35
    new-instance v0, Lsun/misc/CEFormatException;

    const-string v1, "UUDecoder: No begin line."

    invoke-direct {v0, v1}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3d
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6f

    .line 194
    const/4 v2, 0x4

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lsun/misc/UUDecoder;->mode:I

    .line 195
    const/4 v2, 0x6

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/UUDecoder;->bufferName:Ljava/lang/String;

    .line 199
    if-ne v0, v6, :cond_6e

    .line 200
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 201
    if-eq v0, v5, :cond_6e

    if-eq v0, v7, :cond_6e

    .line 202
    invoke-virtual {p1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 204
    :cond_6e
    return-void

    .line 192
    :cond_6f
    new-instance v0, Lsun/misc/CEFormatException;

    const-string v1, "UUDecoder: Malformed begin line."

    invoke-direct {v0, v1}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    move v0, v2

    .line 175
    :cond_78
    if-eq v0, v5, :cond_88

    if-ne v0, v6, :cond_7e

    move v0, v1

    goto :goto_e

    :cond_7e
    const/4 v0, 0x0

    goto :goto_e

    .line 167
    :cond_80
    new-instance v0, Lsun/misc/CEFormatException;

    const-string v1, "UUDecoder: No begin line."

    invoke-direct {v0, v1}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    move v0, v1

    goto :goto_e
.end method

.method protected decodeBufferSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lsun/misc/UUDecoder;->decoderBuffer:[B

    invoke-virtual {p1, v0}, Ljava/io/PushbackInputStream;->read([B)I

    .line 268
    iget-object v0, p0, Lsun/misc/UUDecoder;->decoderBuffer:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1d

    .line 272
    return-void

    .line 270
    :cond_1d
    new-instance v0, Lsun/misc/CEFormatException;

    const-string v1, "UUDecoder: Missing \'end\' line."

    invoke-direct {v0, v1}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected decodeLinePrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    .line 215
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 216
    const/16 v1, 0x20

    if-ne v0, v1, :cond_1f

    .line 217
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    .line 218
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 219
    const/16 v1, 0xa

    if-eq v0, v1, :cond_19

    if-eq v0, v2, :cond_19

    .line 220
    invoke-virtual {p1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 221
    :cond_19
    new-instance v0, Lsun/misc/CEStreamExhausted;

    invoke-direct {v0}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v0

    .line 222
    :cond_1f
    if-eq v0, v2, :cond_34

    .line 226
    add-int/lit8 v0, v0, -0x20

    and-int/lit8 v0, v0, 0x3f

    .line 227
    invoke-virtual {p0}, Lsun/misc/UUDecoder;->bytesPerLine()I

    move-result v1

    if-gt v0, v1, :cond_2c

    .line 230
    return v0

    .line 228
    :cond_2c
    new-instance v0, Lsun/misc/CEFormatException;

    const-string v1, "UUDecoder: Bad Line Length."

    invoke-direct {v0, v1}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_34
    new-instance v0, Lsun/misc/CEFormatException;

    const-string v1, "UUDecoder: Short Buffer."

    invoke-direct {v0, v1}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected decodeLineSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0xa

    const/4 v2, -0x1

    .line 242
    :cond_3
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 243
    if-eq v0, v2, :cond_1c

    .line 246
    if-ne v0, v3, :cond_c

    .line 257
    :cond_b
    :goto_b
    return-void

    .line 249
    :cond_c
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 250
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 251
    if-eq v0, v3, :cond_b

    if-eq v0, v2, :cond_b

    .line 252
    invoke-virtual {p1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_b

    .line 244
    :cond_1c
    new-instance v0, Lsun/misc/CEStreamExhausted;

    invoke-direct {v0}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v0
.end method
