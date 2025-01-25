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
.field static final $assertionsDisabled:Z = false


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private charBuffer:Ljava/nio/CharBuffer;

.field private intBuffer:Ljava/nio/IntBuffer;

.field private prevHighSurrogate:I

.field private type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 134
    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->BYTE:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    .line 143
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 144
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    .line 145
    iput-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    .line 146
    const/4 p1, -0x1

    iput p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    return-void
.end method

.method synthetic constructor <init>(ILorg/antlr/v4/runtime/CodePointBuffer$1;)V
    .registers 3

    .line 134
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;-><init>(I)V

    return-void
.end method

.method private appendArray(Ljava/nio/CharBuffer;)V
    .registers 4

    .line 230
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$1;->$SwitchMap$org$antlr$v4$runtime$CodePointBuffer$Type:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    goto :goto_1f

    .line 238
    :cond_14
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->appendArrayInt(Ljava/nio/CharBuffer;)V

    goto :goto_1f

    .line 235
    :cond_18
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->appendArrayChar(Ljava/nio/CharBuffer;)V

    goto :goto_1f

    .line 232
    :cond_1c
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->appendArrayByte(Ljava/nio/CharBuffer;)V

    :goto_1f
    return-void
.end method

.method private appendArrayByte(Ljava/nio/CharBuffer;)V
    .registers 10

    .line 246
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 247
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 248
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    .line 250
    iget-object v4, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 251
    iget-object v5, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    iget-object v6, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    :goto_28
    add-int v6, v2, v3

    if-ge v1, v6, :cond_6a

    .line 254
    aget-char v6, v0, v1

    const/16 v7, 0xff

    if-gt v6, v7, :cond_3c

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 256
    aput-byte v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 258
    :cond_3c
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 259
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v5, v1

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 260
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 261
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteToCharBuffer(I)V

    .line 262
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->appendArrayChar(Ljava/nio/CharBuffer;)V

    return-void

    .line 265
    :cond_5f
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteToIntBuffer(I)V

    .line 266
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->appendArrayInt(Ljava/nio/CharBuffer;)V

    return-void

    .line 274
    :cond_6a
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 275
    iget-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private appendArrayChar(Ljava/nio/CharBuffer;)V
    .registers 10

    .line 281
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 282
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 283
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    .line 285
    iget-object v4, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v4

    .line 286
    iget-object v5, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    iget-object v6, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    :goto_28
    add-int v6, v2, v3

    if-ge v1, v6, :cond_58

    .line 289
    aget-char v6, v0, v1

    .line 290
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 291
    aput-char v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 293
    :cond_3b
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 294
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v5, v1

    invoke-virtual {v0, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 295
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charToIntBuffer(I)V

    .line 296
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->appendArrayInt(Ljava/nio/CharBuffer;)V

    return-void

    .line 303
    :cond_58
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 304
    iget-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private appendArrayInt(Ljava/nio/CharBuffer;)V
    .registers 13

    .line 308
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 309
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 310
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    .line 312
    iget-object v4, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v4

    .line 313
    iget-object v5, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v5

    iget-object v6, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v6}, Ljava/nio/IntBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    :goto_28
    add-int v6, v2, v3

    const/4 v7, -0x1

    const v8, 0xffff

    if-ge v1, v6, :cond_76

    .line 316
    aget-char v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 318
    iget v9, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    if-eq v9, v7, :cond_66

    .line 319
    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_4c

    .line 320
    iget v8, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    int-to-char v8, v8

    invoke-static {v8, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    .line 322
    iput v7, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    goto :goto_28

    .line 325
    :cond_4c
    iget v9, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    aput v9, v4, v5

    add-int/lit8 v9, v5, 0x1

    .line 327
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_5e

    .line 328
    and-int v5, v6, v8

    iput v5, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    move v5, v9

    goto :goto_28

    .line 330
    :cond_5e
    and-int/2addr v6, v8

    aput v6, v4, v9

    add-int/lit8 v5, v5, 0x2

    .line 332
    iput v7, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    goto :goto_28

    .line 335
    :cond_66
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 336
    and-int/2addr v6, v8

    iput v6, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    goto :goto_28

    .line 338
    :cond_70
    and-int/2addr v6, v8

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 343
    :cond_76
    iget v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->prevHighSurrogate:I

    if-eq v0, v7, :cond_7f

    .line 345
    and-int/2addr v0, v8

    aput v0, v4, v5

    add-int/lit8 v5, v5, 0x1

    .line 349
    :cond_7f
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 350
    iget-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private byteToCharBuffer(I)V
    .registers 3

    .line 354
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 356
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 357
    :goto_1c
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 358
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_1c

    .line 360
    :cond_31
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->CHAR:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 362
    iput-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    return-void
.end method

.method private byteToIntBuffer(I)V
    .registers 3

    .line 366
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 368
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p1

    .line 369
    :goto_1c
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 370
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_1c

    .line 372
    :cond_30
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->INT:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 374
    iput-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    return-void
.end method

.method private charToIntBuffer(I)V
    .registers 4

    .line 378
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 380
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->capacity()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p1

    .line 381
    :goto_1c
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 382
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_1c

    .line 384
    :cond_32
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->INT:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    .line 386
    iput-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    return-void
.end method

.method private static roundUpToNextPowerOfTwo(I)I
    .registers 5

    .line 181
    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    int-to-double v0, p0

    .line 182
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method


# virtual methods
.method public append(Ljava/nio/CharBuffer;)V
    .registers 3

    .line 218
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->ensureRemaining(I)V

    .line 219
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 220
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->appendArray(Ljava/nio/CharBuffer;)V

    return-void

    .line 223
    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "TODO"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lorg/antlr/v4/runtime/CodePointBuffer;
    .registers 8

    .line 166
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$1;->$SwitchMap$org$antlr$v4$runtime$CodePointBuffer$Type:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    goto :goto_25

    .line 174
    :cond_14
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_25

    .line 171
    :cond_1a
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_25

    .line 168
    :cond_20
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 177
    :goto_25
    new-instance v0, Lorg/antlr/v4/runtime/CodePointBuffer;

    iget-object v2, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    iget-object v3, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    iget-object v5, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/antlr/v4/runtime/CodePointBuffer;-><init>(Lorg/antlr/v4/runtime/CodePointBuffer$Type;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;Lorg/antlr/v4/runtime/CodePointBuffer$1;)V

    return-object v0
.end method

.method public ensureRemaining(I)V
    .registers 4

    .line 186
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$1;->$SwitchMap$org$antlr$v4$runtime$CodePointBuffer$Type:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    goto :goto_7f

    .line 206
    :cond_14
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_7f

    .line 207
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->roundUpToNextPowerOfTwo(I)I

    move-result p1

    .line 208
    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p1

    .line 209
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 210
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    .line 211
    iput-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    goto :goto_7f

    .line 197
    :cond_38
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_7f

    .line 198
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->roundUpToNextPowerOfTwo(I)I

    move-result p1

    .line 199
    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 200
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 201
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 202
    iput-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    goto :goto_7f

    .line 188
    :cond_5c
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_7f

    .line 189
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->roundUpToNextPowerOfTwo(I)I

    move-result p1

    .line 190
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 192
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 193
    iput-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    :cond_7f
    :goto_7f
    return-void
.end method

.method getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 154
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method getCharBuffer()Ljava/nio/CharBuffer;
    .registers 2

    .line 158
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->charBuffer:Ljava/nio/CharBuffer;

    return-object v0
.end method

.method getIntBuffer()Ljava/nio/IntBuffer;
    .registers 2

    .line 162
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->intBuffer:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method getType()Lorg/antlr/v4/runtime/CodePointBuffer$Type;
    .registers 2

    .line 150
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    return-object v0
.end method
