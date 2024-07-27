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
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-array v0, p1, [B

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    return-void
.end method

.method constructor <init>([B)V
    .registers 3

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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 364
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 367
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 368
    iget v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v1, p1

    .line 369
    if-le v0, v1, :cond_1

    :goto_0
    new-array v0, v0, [B

    .line 370
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    return-void

    :cond_1
    move v0, v1

    .line 369
    goto :goto_0
.end method


# virtual methods
.method final encodeUtf8(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 13

    const/16 v8, 0x7ff

    const/16 v7, 0x7f

    const/4 v6, 0x1

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, p2

    move v0, p2

    .line 296
    :goto_0
    if-lt v1, v2, :cond_0

    .line 306
    if-le v0, p3, :cond_3

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UTF8 string too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 298
    if-lt v3, v6, :cond_1

    if-gt v3, v7, :cond_1

    .line 299
    add-int/lit8 v0, v0, 0x1

    .line 296
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_1
    if-gt v3, v8, :cond_2

    .line 301
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 303
    :cond_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 310
    :cond_3
    iget v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x2

    .line 311
    if-ltz v1, :cond_4

    .line 312
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 313
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v4, v0

    aput-byte v4, v3, v1

    .line 315
    :cond_4
    iget v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v1, v0

    sub-int/2addr v1, p2

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v3, v3

    if-le v1, v3, :cond_5

    .line 316
    sub-int/2addr v0, p2

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 318
    :cond_5
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    move v1, v0

    .line 319
    :goto_2
    if-lt p2, v2, :cond_6

    .line 332
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 333
    return-object p0

    .line 320
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 321
    if-lt v3, v6, :cond_7

    if-gt v3, v7, :cond_7

    .line 322
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v0, v1, 0x1

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    .line 319
    :goto_3
    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_2

    .line 323
    :cond_7
    if-gt v3, v8, :cond_8

    .line 324
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 325
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    goto :goto_3

    .line 327
    :cond_8
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 328
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 329
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    goto :goto_3
.end method

.method final put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 7

    .line 101
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 102
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 103
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 105
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    .line 106
    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 107
    int-to-byte v0, p2

    aput-byte v0, v1, v2

    .line 108
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 109
    return-object p0
.end method

.method final put112(III)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 8

    .line 161
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 162
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 163
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 165
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    .line 166
    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 167
    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    .line 168
    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 169
    int-to-byte v0, p3

    aput-byte v0, v1, v2

    .line 170
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 171
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

    if-le v1, v2, :cond_0

    .line 141
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 143
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    .line 144
    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 145
    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 146
    int-to-byte v2, p2

    aput-byte v2, v1, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 148
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

    if-le v1, v2, :cond_0

    .line 206
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 208
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    .line 209
    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 210
    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 211
    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p2

    aput-byte v3, v1, v0

    .line 212
    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 213
    int-to-byte v2, p3

    aput-byte v2, v1, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 215
    return-object p0
.end method

.method public putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 5

    .line 84
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 85
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 86
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 88
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 90
    return-object p0
.end method

.method public putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 6

    .line 348
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 349
    invoke-direct {p0, p3}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 351
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

    .line 355
    return-object p0
.end method

.method public putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 6

    .line 181
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 182
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 183
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 185
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    .line 186
    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 187
    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 188
    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 189
    int-to-byte v0, p1

    aput-byte v0, v1, v2

    .line 190
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 191
    return-object p0
.end method

.method public putLong(J)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 8

    .line 225
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 226
    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 227
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 229
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    .line 230
    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    .line 231
    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 232
    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 233
    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 234
    add-int/lit8 v0, v3, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 235
    long-to-int v2, p1

    .line 236
    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 237
    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 238
    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 239
    int-to-byte v0, v2

    aput-byte v0, v1, v3

    .line 240
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 241
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

    if-le v1, v2, :cond_0

    .line 121
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 123
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    .line 124
    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 125
    int-to-byte v0, p1

    aput-byte v0, v1, v2

    .line 126
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 127
    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/ByteVector;
    .registers 9

    const v6, 0xffff

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 254
    if-le v2, v6, :cond_0

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UTF8 string too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 258
    add-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v2

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    array-length v3, v3

    if-le v1, v3, :cond_1

    .line 259
    add-int/lit8 v1, v2, 0x2

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 261
    :cond_1
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    .line 266
    add-int/lit8 v4, v0, 0x1

    ushr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 267
    add-int/lit8 v1, v4, 0x1

    int-to-byte v0, v2

    aput-byte v0, v3, v4

    .line 268
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_2

    .line 277
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 278
    :goto_1
    return-object p0

    .line 269
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 270
    const/4 v5, 0x1

    if-lt v4, v5, :cond_3

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_3

    .line 271
    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 268
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_3
    iput v1, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 274
    invoke-virtual {p0, p1, v0, v6}, Lzeroaicy/org/objectweb/asm/ByteVector;->encodeUtf8(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p0

    goto :goto_1
.end method

.method public size()I
    .registers 2

    .line 74
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    return v0
.end method
