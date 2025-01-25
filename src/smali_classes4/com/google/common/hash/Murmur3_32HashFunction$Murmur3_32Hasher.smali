.class final Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;
.super Lcom/google/common/hash/AbstractHasher;
.source "Murmur3_32HashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Murmur3_32HashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Murmur3_32Hasher"
.end annotation


# instance fields
.field private buffer:J

.field private h1:I

.field private isDone:Z

.field private length:I

.field private shift:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHasher;-><init>()V

    .line 268
    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    .line 269
    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    .line 270
    iput-boolean v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->isDone:Z

    .line 271
    return-void
.end method

.method private update(IJ)V
    .registers 12

    const/16 v6, 0x20

    .line 275
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    iget v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    const-wide v4, 0xffffffffL

    and-long/2addr v4, p2

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    .line 276
    mul-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    .line 277
    iget v3, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    .line 279
    if-lt v2, v6, :cond_34

    .line 280
    iget v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    long-to-int v0, v0

    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$000(I)I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$100(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    .line 281
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    ushr-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    .line 282
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    add-int/lit8 v0, v0, -0x20

    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    .line 284
    :cond_34
    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .registers 5

    .line 386
    iget-boolean v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->isDone:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->isDone:Z

    .line 388
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    long-to-int v1, v2

    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$000(I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    .line 389
    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$600(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public putByte(B)Lcom/google/common/hash/Hasher;
    .registers 6

    .line 288
    const/4 v0, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 289
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .registers 3

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .registers 5

    .line 307
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 308
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 309
    :goto_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_18

    .line 310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putInt(I)Lcom/google/common/hash/Hasher;

    goto :goto_9

    .line 312
    :cond_18
    :goto_18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 313
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    goto :goto_18

    .line 315
    :cond_26
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 316
    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .registers 8

    .line 294
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 296
    const/4 v0, 0x0

    :goto_7
    add-int/lit8 v1, v0, 0x4

    if-gt v1, p3, :cond_19

    .line 297
    const/4 v1, 0x4

    add-int v2, p2, v0

    invoke-static {p1, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$200([BI)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 296
    add-int/lit8 v0, v0, 0x4

    goto :goto_7

    .line 299
    :cond_19
    :goto_19
    if-ge v0, p3, :cond_25

    .line 300
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 302
    :cond_25
    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .registers 3

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .registers 5

    .line 259
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .registers 6

    .line 334
    const/4 v0, 0x2

    int-to-long v2, p1

    invoke-direct {p0, v0, v2, v3}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 335
    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .registers 3

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .registers 6

    .line 321
    const/4 v0, 0x4

    int-to-long v2, p1

    invoke-direct {p0, v0, v2, v3}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 322
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .registers 3

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .registers 6

    const/4 v2, 0x4

    .line 327
    long-to-int v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 328
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 329
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .registers 4

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;
    .registers 11

    const/4 v7, 0x4

    const/16 v6, 0x80

    .line 341
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 342
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 343
    const/4 v0, 0x0

    .line 346
    :goto_10
    add-int/lit8 v2, v0, 0x4

    if-gt v2, v1, :cond_42

    .line 347
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 348
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 349
    add-int/lit8 v4, v0, 0x2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 350
    add-int/lit8 v5, v0, 0x3

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 351
    if-ge v2, v6, :cond_42

    if-ge v3, v6, :cond_42

    if-ge v4, v6, :cond_42

    if-ge v5, v6, :cond_42

    .line 352
    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    shl-int/lit8 v3, v4, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v5, 0x18

    or-int/2addr v2, v3

    int-to-long v2, v2

    invoke-direct {p0, v7, v2, v3}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 353
    add-int/lit8 v0, v0, 0x4

    .line 357
    goto :goto_10

    .line 359
    :cond_42
    :goto_42
    if-ge v0, v1, :cond_87

    .line 360
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 361
    if-ge v2, v6, :cond_52

    .line 362
    const/4 v3, 0x1

    int-to-long v4, v2

    invoke-direct {p0, v3, v4, v5}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 359
    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 363
    :cond_52
    const/16 v3, 0x800

    if-ge v2, v3, :cond_5f

    .line 364
    const/4 v3, 0x2

    invoke-static {v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$300(C)J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    goto :goto_4f

    .line 365
    :cond_5f
    const v3, 0xd800

    if-lt v2, v3, :cond_69

    const v3, 0xdfff

    if-le v2, v3, :cond_72

    .line 366
    :cond_69
    const/4 v3, 0x3

    invoke-static {v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$400(C)J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    goto :goto_4f

    .line 368
    :cond_72
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 369
    if-ne v3, v2, :cond_88

    .line 371
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    .line 380
    :cond_87
    :goto_87
    return-object p0

    .line 374
    :cond_88
    add-int/lit8 v0, v0, 0x1

    .line 375
    invoke-static {v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$500(I)J

    move-result-wide v2

    invoke-direct {p0, v7, v2, v3}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    goto :goto_4f

    .line 380
    :cond_92
    invoke-super {p0, p1, p2}, Lcom/google/common/hash/AbstractHasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object p0

    goto :goto_87
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/PrimitiveSink;
    .registers 4

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method
