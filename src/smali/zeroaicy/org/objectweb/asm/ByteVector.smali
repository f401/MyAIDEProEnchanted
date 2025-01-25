.class public Lzeroaicy/org/objectweb/asm/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"


# instance fields
.field data:[B

.field length:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-array p1, p1, [B

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    return-void
.end method

.method constructor <init>([B)V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    .line 65
    array-length p1, p1

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-void
.end method

.method private enlarge(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 364
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v1

    if-gt v0, v2, :cond_18

    .line 367
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v0

    if-le v2, p1, :cond_e

    goto :goto_f

    :cond_e
    move v2, p1

    .line 369
    :goto_f
    new-array p1, v2, [B

    .line 370
    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    return-void

    .line 365
    :cond_18
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Internal error"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method final encodeUtf8(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 13

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p2

    move v2, v1

    :goto_6
    const/16 v3, 0x7f

    const/16 v4, 0x7ff

    const/4 v5, 0x1

    if-lt v1, v0, :cond_8a

    if-gt v2, p3, :cond_82

    .line 310
    iget p3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    sub-int v1, p3, p2

    add-int/lit8 v6, v1, -0x2

    if-ltz v6, :cond_22

    .line 312
    iget-object v7, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    ushr-int/lit8 v8, v2, 0x8

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    int-to-byte v6, v2

    .line 313
    sub-int/2addr v1, v5

    aput-byte v6, v7, v1

    .line 315
    :cond_22
    add-int/2addr p3, v2

    sub-int/2addr p3, p2

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le p3, v1, :cond_2d

    .line 316
    sub-int/2addr v2, p2

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 318
    :cond_2d
    iget p3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    :goto_2f
    if-lt p2, v0, :cond_34

    .line 332
    iput p3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0

    .line 320
    :cond_34
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v5, :cond_44

    if-gt v1, v3, :cond_44

    .line 322
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte v1, v1

    aput-byte v1, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_7f

    :cond_44
    if-gt v1, v4, :cond_5e

    .line 324
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    shr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x1f

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v2, p3

    add-int/lit8 v6, p3, 0x2

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 325
    add-int/lit8 p3, p3, 0x1

    aput-byte v1, v2, p3

    move p3, v6

    goto :goto_7f

    .line 327
    :cond_5e
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    shr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v2, p3

    shr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 328
    add-int/lit8 v7, p3, 0x1

    aput-byte v6, v2, v7

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 329
    add-int/lit8 v6, p3, 0x2

    aput-byte v1, v2, v6

    add-int/lit8 p3, p3, 0x3

    :goto_7f
    add-int/lit8 p2, p2, 0x1

    goto :goto_2f

    .line 307
    :cond_82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "UTF8 string too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 297
    :cond_8a
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_95

    if-gt v6, v3, :cond_95

    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    :cond_95
    if-gt v6, v4, :cond_9a

    add-int/lit8 v2, v2, 0x2

    goto :goto_9c

    :cond_9a
    add-int/lit8 v2, v2, 0x3

    :goto_9c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6
.end method

.method final put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 6

    .line 101
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 102
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    .line 103
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 105
    :cond_d
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte p1, p1

    .line 106
    aput-byte p1, v2, v0

    int-to-byte p1, p2

    .line 107
    add-int/lit8 v0, v0, 0x1

    aput-byte p1, v2, v0

    .line 108
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method final put112(III)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 7

    .line 161
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 162
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    .line 163
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 165
    :cond_d
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte p1, p1

    .line 166
    aput-byte p1, v2, v0

    int-to-byte p1, p2

    .line 167
    add-int/lit8 p2, v0, 0x1

    aput-byte p1, v2, p2

    ushr-int/lit8 p1, p3, 0x8

    int-to-byte p1, p1

    .line 168
    add-int/lit8 p2, v0, 0x2

    aput-byte p1, v2, p2

    int-to-byte p1, p3

    .line 169
    add-int/lit8 v0, v0, 0x3

    aput-byte p1, v2, v0

    .line 170
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method final put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 7

    .line 139
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 140
    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    .line 141
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 143
    :cond_d
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte p1, p1

    .line 144
    aput-byte p1, v2, v0

    ushr-int/lit8 p1, p2, 0x8

    int-to-byte p1, p1

    .line 145
    add-int/lit8 v3, v0, 0x1

    aput-byte p1, v2, v3

    int-to-byte p1, p2

    .line 146
    add-int/lit8 v0, v0, 0x2

    aput-byte p1, v2, v0

    .line 147
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method final put122(III)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 8

    .line 204
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 205
    add-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    .line 206
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 208
    :cond_d
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte p1, p1

    .line 209
    aput-byte p1, v2, v0

    ushr-int/lit8 p1, p2, 0x8

    int-to-byte p1, p1

    .line 210
    add-int/lit8 v3, v0, 0x1

    aput-byte p1, v2, v3

    int-to-byte p1, p2

    .line 211
    add-int/lit8 p2, v0, 0x2

    aput-byte p1, v2, p2

    ushr-int/lit8 p1, p3, 0x8

    int-to-byte p1, p1

    .line 212
    add-int/lit8 p2, v0, 0x3

    aput-byte p1, v2, p2

    int-to-byte p1, p3

    .line 213
    add-int/lit8 v0, v0, 0x4

    aput-byte p1, v2, v0

    .line 214
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 5

    .line 84
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x1

    .line 85
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    .line 86
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 88
    :cond_d
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    .line 89
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 6

    .line 348
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_b

    .line 349
    invoke-direct {p0, p3}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    :cond_b
    if-eqz p1, :cond_14

    .line 352
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    :cond_14
    iget p1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 7

    .line 181
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 182
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    .line 183
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 185
    :cond_d
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    .line 186
    aput-byte v3, v2, v0

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 187
    add-int/lit8 v4, v0, 0x1

    aput-byte v3, v2, v4

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 188
    add-int/lit8 v4, v0, 0x2

    aput-byte v3, v2, v4

    int-to-byte p1, p1

    .line 189
    add-int/lit8 v0, v0, 0x3

    aput-byte p1, v2, v0

    .line 190
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putLong(J)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 9

    .line 225
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 226
    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_e

    .line 227
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 229
    :cond_e
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    long-to-int v4, v3

    ushr-int/lit8 v3, v4, 0x18

    int-to-byte v3, v3

    .line 231
    aput-byte v3, v2, v0

    ushr-int/lit8 v3, v4, 0x10

    int-to-byte v3, v3

    .line 232
    add-int/lit8 v5, v0, 0x1

    aput-byte v3, v2, v5

    ushr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    .line 233
    add-int/lit8 v5, v0, 0x2

    aput-byte v3, v2, v5

    int-to-byte v3, v4

    .line 234
    add-int/lit8 v4, v0, 0x3

    aput-byte v3, v2, v4

    long-to-int p2, p1

    ushr-int/lit8 p1, p2, 0x18

    int-to-byte p1, p1

    .line 236
    add-int/lit8 v3, v0, 0x4

    aput-byte p1, v2, v3

    ushr-int/lit8 p1, p2, 0x10

    int-to-byte p1, p1

    .line 237
    add-int/lit8 v3, v0, 0x5

    aput-byte p1, v2, v3

    ushr-int/lit8 p1, p2, 0x8

    int-to-byte p1, p1

    .line 238
    add-int/lit8 v3, v0, 0x6

    aput-byte p1, v2, v3

    int-to-byte p1, p2

    .line 239
    add-int/lit8 v0, v0, 0x7

    aput-byte p1, v2, v0

    .line 240
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 6

    .line 119
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 120
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    .line 121
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 123
    :cond_d
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 124
    aput-byte v3, v2, v0

    int-to-byte p1, p1

    .line 125
    add-int/lit8 v0, v0, 0x1

    aput-byte p1, v2, v0

    .line 126
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 10

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_44

    .line 257
    iget v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 258
    add-int/lit8 v3, v2, 0x2

    add-int v4, v3, v0

    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v5, v5

    if-le v4, v5, :cond_19

    .line 259
    add-int/lit8 v4, v0, 0x2

    invoke-direct {p0, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 261
    :cond_19
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    .line 266
    aput-byte v5, v4, v2

    int-to-byte v5, v0

    .line 267
    const/4 v6, 0x1

    add-int/2addr v2, v6

    aput-byte v5, v4, v2

    const/4 v2, 0x0

    :goto_26
    if-lt v2, v0, :cond_2b

    .line 277
    iput v3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0

    .line 269
    :cond_2b
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3d

    const/16 v7, 0x7f

    if-gt v5, v7, :cond_3d

    int-to-byte v5, v5

    .line 271
    aput-byte v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 273
    :cond_3d
    iput v3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 274
    invoke-virtual {p0, p1, v2, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->encodeUtf8(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    return-object p1

    .line 255
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "UTF8 string too large"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4d

    :goto_4c
    throw p1

    :goto_4d
    goto :goto_4c
.end method

.method public size()I
    .registers 2

    .line 74
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return v0
.end method
