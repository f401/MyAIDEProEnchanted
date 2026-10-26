.class public Lorg/antlr/v4/runtime/CodePointBuffer$Builder;
.super Ljava/lang/Object;
.source "CodePointBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/CodePointBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private charBuffer:Ljava/nio/CharBuffer;

.field private intBuffer:Ljava/nio/IntBuffer;

.field private prevHighSurrogate:I

.field private type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 134
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->BYTE:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    .line 143
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 144
    iput-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    .line 145
    iput-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    return-void
.end method

.method synthetic constructor <init>(ILorg/antlr/v4/runtime/CodePointBuffer$1;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;-><init>(I)V

    return-void
.end method

.method private appendArray(Ljava/nio/CharBuffer;)V
    .locals 2

    .line 230
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$1;->$SwitchMap$org$antlr$v4$runtime$CodePointBuffer$Type:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->appendArrayInt(Ljava/nio/CharBuffer;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->appendArrayChar(Ljava/nio/CharBuffer;)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->appendArrayByte(Ljava/nio/CharBuffer;)V

    goto :goto_0
.end method

.method private appendArrayByte(Ljava/nio/CharBuffer;)V
    .locals 8

    .line 246
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    .line 247
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    .line 250
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 251
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    iget-object v6, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v1, v6

    :goto_0
    add-int v6, v3, v4

    if-ge v0, v6, :cond_2

    .line 254
    aget-char v6, v2, v0

    const/16 v7, 0xff

    if-gt v6, v7, :cond_0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 256
    aput-byte v6, v5, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 259
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 260
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteToCharBuffer(I)V

    .line 262
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->appendArrayChar(Ljava/nio/CharBuffer;)V

    .line 275
    :goto_1
    return-void

    .line 265
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteToIntBuffer(I)V

    .line 266
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->appendArrayInt(Ljava/nio/CharBuffer;)V

    goto :goto_1

    .line 274
    :cond_2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 275
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method private appendArrayChar(Ljava/nio/CharBuffer;)V
    .locals 8

    .line 281
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    .line 282
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    .line 285
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v5

    .line 286
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    iget-object v6, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->position()I

    move-result v6

    add-int/2addr v1, v6

    :goto_0
    add-int v6, v3, v4

    if-ge v0, v6, :cond_1

    .line 289
    aget-char v6, v2, v0

    .line 290
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 291
    aput-char v6, v5, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 294
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 295
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charToIntBuffer(I)V

    .line 296
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->appendArrayInt(Ljava/nio/CharBuffer;)V

    .line 304
    :goto_1
    return-void

    .line 303
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 304
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method private appendArrayInt(Ljava/nio/CharBuffer;)V
    .locals 11

    const/4 v10, -0x1

    const v9, 0xffff

    .line 308
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    .line 309
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    .line 310
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    .line 312
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v6

    .line 313
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v0

    iget-object v2, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->position()I

    move-result v2

    add-int/2addr v0, v2

    :goto_0
    add-int v2, v4, v5

    if-ge v1, v2, :cond_4

    .line 316
    aget-char v7, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 318
    iget v2, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    if-eq v2, v10, :cond_2

    .line 319
    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    iget v2, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    int-to-char v2, v2

    invoke-static {v2, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    aput v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    .line 322
    iput v10, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    goto :goto_0

    .line 325
    :cond_0
    iget v2, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    aput v2, v6, v0

    add-int/lit8 v2, v0, 0x1

    .line 327
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 328
    and-int v0, v7, v9

    iput v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    move v0, v2

    goto :goto_0

    .line 330
    :cond_1
    and-int/2addr v7, v9

    aput v7, v6, v2

    add-int/lit8 v0, v0, 0x2

    .line 332
    iput v10, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    goto :goto_0

    .line 335
    :cond_2
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 336
    and-int v2, v7, v9

    iput v2, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    goto :goto_0

    .line 338
    :cond_3
    and-int v2, v7, v9

    aput v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_4
    iget v2, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    if-eq v2, v10, :cond_5

    .line 345
    and-int/2addr v2, v9

    aput v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    .line 349
    :cond_5
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 350
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private byteToCharBuffer(I)V
    .locals 2

    .line 354
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 356
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 357
    :goto_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_0

    .line 360
    :cond_0
    sget-object v1, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->CHAR:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    iput-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    .line 361
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 362
    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    return-void
.end method

.method private byteToIntBuffer(I)V
    .locals 2

    .line 366
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 368
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 369
    :goto_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_0

    .line 372
    :cond_0
    sget-object v1, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->INT:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    iput-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    .line 373
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 374
    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    return-void
.end method

.method private charToIntBuffer(I)V
    .locals 3

    .line 378
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 380
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 381
    :goto_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_0

    .line 384
    :cond_0
    sget-object v1, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->INT:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    iput-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    .line 385
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    .line 386
    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    return-void
.end method

.method private static roundUpToNextPowerOfTwo(I)I
    .locals 4

    .line 181
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    int-to-double v0, v0

    .line 182
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public append(Ljava/nio/CharBuffer;)V
    .locals 2

    .line 218
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->ensureRemaining(I)V

    .line 219
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->appendArray(Ljava/nio/CharBuffer;)V

    return-void

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lorg/antlr/v4/runtime/CodePointBuffer;
    .locals 6

    .line 166
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$1;->$SwitchMap$org$antlr$v4$runtime$CodePointBuffer$Type:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 177
    :goto_0
    new-instance v0, Lorg/antlr/v4/runtime/CodePointBuffer;

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    iget-object v2, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    iget-object v4, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/antlr/v4/runtime/CodePointBuffer;-><init>(Lorg/antlr/v4/runtime/CodePointBuffer$Type;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;Lorg/antlr/v4/runtime/CodePointBuffer$1;)V

    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public ensureRemaining(I)V
    .locals 2

    .line 186
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$1;->$SwitchMap$org$antlr$v4$runtime$CodePointBuffer$Type:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 207
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->roundUpToNextPowerOfTwo(I)I

    move-result v0

    .line 208
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 210
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    .line 211
    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 198
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->roundUpToNextPowerOfTwo(I)I

    move-result v0

    .line 199
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 201
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 202
    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    goto :goto_0

    .line 188
    :cond_3
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 189
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->roundUpToNextPowerOfTwo(I)I

    move-result v0

    .line 190
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 192
    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 193
    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method getCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    return-object v0
.end method

.method getIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method getType()Lorg/antlr/v4/runtime/CodePointBuffer$Type;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    return-object v0
.end method
