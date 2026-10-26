.class public Lzeroaicy/org/objectweb/asm/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"


# instance fields
.field data:[B

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-array v0, p1, [B

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    return-void
.end method

.method constructor <init>([B)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    .line 65
    array-length v0, p1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-void
.end method

.method private enlarge(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v4, 0x0

    .line 364
    iget v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v0, v3

    if-gt v2, v0, :cond_0

    .line 367
    array-length v0, v3

    mul-int/lit8 v0, v0, 0x2

    add-int v1, p1, v2

    if-le v0, v1, :cond_1

    .line 369
    :goto_0
    new-array v0, v0, [B

    .line 370
    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method final encodeUtf8(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/ByteVector;
    .locals 10

    const/16 v9, 0x7ff

    const/16 v8, 0x7f

    const/4 v7, 0x1

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, p2

    move v1, p2

    :goto_0
    if-lt v1, v2, :cond_6

    if-gt v0, p3, :cond_5

    .line 310
    iget v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    sub-int v3, v1, p2

    add-int/lit8 v4, v3, -0x2

    if-ltz v4, :cond_0

    .line 312
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    ushr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    int-to-byte v4, v0

    .line 313
    add-int/lit8 v3, v3, -0x1

    aput-byte v4, v5, v3

    .line 315
    :cond_0
    add-int/2addr v1, v0

    sub-int/2addr v1, p2

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v3, v3

    if-le v1, v3, :cond_1

    .line 316
    sub-int/2addr v0, p2

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 318
    :cond_1
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    :goto_1
    if-lt p2, v2, :cond_2

    .line 332
    iput v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0

    .line 320
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v7, :cond_3

    if-gt v1, v8, :cond_3

    .line 322
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    .line 329
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 322
    :cond_3
    if-gt v1, v9, :cond_4

    .line 324
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 325
    add-int/lit8 v4, v0, 0x1

    aput-byte v1, v3, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 327
    :cond_4
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 328
    add-int/lit8 v5, v0, 0x1

    aput-byte v4, v3, v5

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 329
    add-int/lit8 v4, v0, 0x2

    aput-byte v1, v3, v4

    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 307
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UTF8 string too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_7

    if-gt v3, v8, :cond_7

    add-int/lit8 v0, v0, 0x1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    if-gt v3, v9, :cond_8

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x3

    goto :goto_3
.end method

.method final put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;
    .locals 4

    .line 101
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 102
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 103
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 105
    :cond_0
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte v3, p1

    .line 106
    aput-byte v3, v2, v0

    int-to-byte v3, p2

    .line 107
    add-int/lit8 v0, v0, 0x1

    aput-byte v3, v2, v0

    .line 108
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method final put112(III)Lzeroaicy/org/objectweb/asm/ByteVector;
    .locals 5

    .line 161
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 162
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 163
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 165
    :cond_0
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte v3, p1

    .line 166
    aput-byte v3, v2, v0

    int-to-byte v3, p2

    .line 167
    add-int/lit8 v4, v0, 0x1

    aput-byte v3, v2, v4

    ushr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    .line 168
    add-int/lit8 v4, v0, 0x2

    aput-byte v3, v2, v4

    int-to-byte v3, p3

    .line 169
    add-int/lit8 v0, v0, 0x3

    aput-byte v3, v2, v0

    .line 170
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method final put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;
    .locals 5

    .line 139
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 140
    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 141
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 143
    :cond_0
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte v3, p1

    .line 144
    aput-byte v3, v2, v0

    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    .line 145
    add-int/lit8 v4, v0, 0x1

    aput-byte v3, v2, v4

    int-to-byte v3, p2

    .line 146
    add-int/lit8 v0, v0, 0x2

    aput-byte v3, v2, v0

    .line 147
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method final put122(III)Lzeroaicy/org/objectweb/asm/ByteVector;
    .locals 5

    .line 204
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 205
    add-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 206
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 208
    :cond_0
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte v3, p1

    .line 209
    aput-byte v3, v2, v0

    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    .line 210
    add-int/lit8 v4, v0, 0x1

    aput-byte v3, v2, v4

    int-to-byte v3, p2

    .line 211
    add-int/lit8 v4, v0, 0x2

    aput-byte v3, v2, v4

    ushr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    .line 212
    add-int/lit8 v4, v0, 0x3

    aput-byte v3, v2, v4

    int-to-byte v3, p3

    .line 213
    add-int/lit8 v0, v0, 0x4

    aput-byte v3, v2, v0

    .line 214
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;
    .locals 4

    .line 84
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x1

    .line 85
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 86
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 88
    :cond_0
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    .line 89
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;
    .locals 2

    .line 348
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 349
    invoke-direct {p0, p3}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 352
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    :cond_1
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;
    .locals 5

    .line 181
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 182
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 183
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 185
    :cond_0
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

    int-to-byte v3, p1

    .line 189
    add-int/lit8 v0, v0, 0x3

    aput-byte v3, v2, v0

    .line 190
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putLong(J)Lzeroaicy/org/objectweb/asm/ByteVector;
    .locals 7

    .line 225
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 226
    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 227
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 229
    :cond_0
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    const/16 v3, 0x20

    ushr-long v4, p1, v3

    long-to-int v3, v4

    ushr-int/lit8 v4, v3, 0x18

    int-to-byte v4, v4

    .line 231
    aput-byte v4, v2, v0

    ushr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    .line 232
    add-int/lit8 v5, v0, 0x1

    aput-byte v4, v2, v5

    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    .line 233
    add-int/lit8 v5, v0, 0x2

    aput-byte v4, v2, v5

    int-to-byte v3, v3

    .line 234
    add-int/lit8 v4, v0, 0x3

    aput-byte v3, v2, v4

    long-to-int v3, p1

    ushr-int/lit8 v4, v3, 0x18

    int-to-byte v4, v4

    .line 236
    add-int/lit8 v5, v0, 0x4

    aput-byte v4, v2, v5

    ushr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    .line 237
    add-int/lit8 v5, v0, 0x5

    aput-byte v4, v2, v5

    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    .line 238
    add-int/lit8 v5, v0, 0x6

    aput-byte v4, v2, v5

    int-to-byte v3, v3

    .line 239
    add-int/lit8 v0, v0, 0x7

    aput-byte v3, v2, v0

    .line 240
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;
    .locals 4

    .line 119
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 120
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 121
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 123
    :cond_0
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 124
    aput-byte v3, v2, v0

    int-to-byte v3, p1

    .line 125
    add-int/lit8 v0, v0, 0x1

    aput-byte v3, v2, v0

    .line 126
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/ByteVector;
    .locals 7

    const v6, 0xffff

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v6, :cond_3

    .line 257
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 258
    add-int/lit8 v1, v0, 0x2

    add-int v3, v1, v2

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 259
    add-int/lit8 v3, v2, 0x2

    invoke-direct {p0, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 261
    :cond_0
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 266
    aput-byte v4, v3, v0

    int-to-byte v4, v2

    .line 267
    add-int/lit8 v0, v0, 0x1

    aput-byte v4, v3, v0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 277
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    :goto_1
    return-object p0

    .line 269
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_2

    int-to-byte v4, v4

    .line 271
    aput-byte v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_2
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 274
    invoke-virtual {p0, p1, v0, v6}, Lzeroaicy/org/objectweb/asm/ByteVector;->encodeUtf8(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p0

    goto :goto_1

    .line 255
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UTF8 string too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 74
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return v0
.end method
