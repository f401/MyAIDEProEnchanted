.class public Lorg/a/a/a/f;
.super Ljava/lang/Object;


# static fields
.field static final a:Z

.field private static g:[I


# instance fields
.field private b:Lorg/a/a/a/g;

.field private c:Ljava/nio/ByteBuffer;

.field private d:Ljava/nio/CharBuffer;

.field private e:Ljava/nio/IntBuffer;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/a/a/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/a/a/a/f;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/a/a/a/g;->a:Lorg/a/a/a/g;

    iput-object v0, p0, Lorg/a/a/a/f;->b:Lorg/a/a/a/g;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    iput-object v1, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/f;->f:I

    return-void
.end method

.method synthetic constructor <init>(ILorg/a/a/a/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/a/a/a/f;-><init>(I)V

    return-void
.end method

.method private static b(I)I
    .registers 5

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    add-int/lit8 v2, p0, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private b(Ljava/nio/CharBuffer;)V
    .registers 4

    sget-boolean v0, Lorg/a/a/a/f;->a:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    invoke-static {}, Lorg/a/a/a/f;->b()[I

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/a/f;->b:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    :goto_1f
    return-void

    :pswitch_20  #0x1
    invoke-direct {p0, p1}, Lorg/a/a/a/f;->c(Ljava/nio/CharBuffer;)V

    goto :goto_1f

    :pswitch_24  #0x2
    invoke-direct {p0, p1}, Lorg/a/a/a/f;->d(Ljava/nio/CharBuffer;)V

    goto :goto_1f

    :pswitch_28  #0x3
    invoke-direct {p0, p1}, Lorg/a/a/a/f;->e(Ljava/nio/CharBuffer;)V

    goto :goto_1f

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_24  #00000002
        :pswitch_28  #00000003
    .end packed-switch
.end method

.method static synthetic b()[I
    .registers 3

    sget-object v0, Lorg/a/a/a/f;->g:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lorg/a/a/a/g;->a()[Lorg/a/a/a/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lorg/a/a/a/g;->a:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2a

    :goto_15
    :try_start_15
    sget-object v1, Lorg/a/a/a/g;->b:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lorg/a/a/a/g;->c:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2e

    :goto_27
    sput-object v0, Lorg/a/a/a/f;->g:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_15

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_27
.end method

.method private c(I)V
    .registers 4

    iget-object v0, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    :goto_1c
    iget-object v1, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, Lorg/a/a/a/g;->b:Lorg/a/a/a/g;

    iput-object v1, p0, Lorg/a/a/a/f;->b:Lorg/a/a/a/g;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    return-void

    :cond_2e
    iget-object v1, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_1c
.end method

.method private c(Ljava/nio/CharBuffer;)V
    .registers 10

    sget-boolean v0, Lorg/a/a/a/f;->a:Z

    if-nez v0, :cond_f

    iget v0, p0, Lorg/a/a/a/f;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    iget-object v1, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v1, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    iget-object v6, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v1, v6

    :goto_37
    add-int v6, v4, v3

    if-lt v0, v6, :cond_50

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_4f
    return-void

    :cond_50
    aget-char v6, v2, v0

    const/16 v7, 0xff

    if-gt v6, v7, :cond_60

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_60
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/a/a/a/f;->c(I)V

    invoke-direct {p0, p1}, Lorg/a/a/a/f;->d(Ljava/nio/CharBuffer;)V

    goto :goto_4f

    :cond_85
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/a/a/a/f;->d(I)V

    invoke-direct {p0, p1}, Lorg/a/a/a/f;->e(Ljava/nio/CharBuffer;)V

    goto :goto_4f
.end method

.method private d(I)V
    .registers 4

    iget-object v0, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    :goto_1c
    iget-object v1, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, Lorg/a/a/a/g;->c:Lorg/a/a/a/g;

    iput-object v1, p0, Lorg/a/a/a/f;->b:Lorg/a/a/a/g;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    return-void

    :cond_2e
    iget-object v1, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_1c
.end method

.method private d(Ljava/nio/CharBuffer;)V
    .registers 10

    sget-boolean v0, Lorg/a/a/a/f;->a:Z

    if-nez v0, :cond_f

    iget v0, p0, Lorg/a/a/a/f;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    iget-object v1, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v5

    iget-object v1, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    iget-object v6, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->position()I

    move-result v6

    add-int/2addr v1, v6

    :goto_37
    add-int v6, v4, v3

    if-lt v0, v6, :cond_50

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    :goto_4f
    return-void

    :cond_50
    aget-char v6, v2, v0

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_5f

    aput-char v6, v5, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_5f
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/a/a/a/f;->e(I)V

    invoke-direct {p0, p1}, Lorg/a/a/a/f;->e(Ljava/nio/CharBuffer;)V

    goto :goto_4f
.end method

.method private e(I)V
    .registers 5

    iget-object v0, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    :goto_1c
    iget-object v1, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, Lorg/a/a/a/g;->c:Lorg/a/a/a/g;

    iput-object v1, p0, Lorg/a/a/a/f;->b:Lorg/a/a/a/g;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    iput-object v0, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    return-void

    :cond_2e
    iget-object v1, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_1c
.end method

.method private e(Ljava/nio/CharBuffer;)V
    .registers 12

    const/4 v9, -0x1

    const v8, 0xffff

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    iget-object v0, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v5

    iget-object v0, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v0

    iget-object v6, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v6}, Ljava/nio/IntBuffer;->position()I

    move-result v6

    add-int/2addr v0, v6

    :goto_2c
    add-int v6, v4, v3

    if-lt v1, v6, :cond_50

    iget v2, p0, Lorg/a/a/a/f;->f:I

    if-eq v2, v9, :cond_3b

    iget v2, p0, Lorg/a/a/a/f;->f:I

    and-int/2addr v2, v8

    aput v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3b
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_50
    aget-char v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget v7, p0, Lorg/a/a/a/f;->f:I

    if-eq v7, v9, :cond_84

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_6c

    iget v7, p0, Lorg/a/a/a/f;->f:I

    int-to-char v7, v7

    invoke-static {v7, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    iput v9, p0, Lorg/a/a/a/f;->f:I

    goto :goto_2c

    :cond_6c
    iget v7, p0, Lorg/a/a/a/f;->f:I

    aput v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_7c

    and-int/2addr v6, v8

    iput v6, p0, Lorg/a/a/a/f;->f:I

    goto :goto_2c

    :cond_7c
    and-int/2addr v6, v8

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    iput v9, p0, Lorg/a/a/a/f;->f:I

    goto :goto_2c

    :cond_84
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_8e

    and-int/2addr v6, v8

    iput v6, p0, Lorg/a/a/a/f;->f:I

    goto :goto_2c

    :cond_8e
    and-int/2addr v6, v8

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c
.end method


# virtual methods
.method public a()Lorg/a/a/a/e;
    .registers 7

    invoke-static {}, Lorg/a/a/a/f;->b()[I

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/a/f;->b:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    :goto_f
    new-instance v0, Lorg/a/a/a/e;

    iget-object v1, p0, Lorg/a/a/a/f;->b:Lorg/a/a/a/g;

    iget-object v2, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    iget-object v4, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/a/a/a/e;-><init>(Lorg/a/a/a/g;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;Lorg/a/a/a/e;)V

    return-object v0

    :pswitch_1e  #0x1
    iget-object v0, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_f

    :pswitch_24  #0x2
    iget-object v0, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_f

    :pswitch_2a  #0x3
    iget-object v0, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_f

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1e  #00000001
        :pswitch_24  #00000002
        :pswitch_2a  #00000003
    .end packed-switch
.end method

.method public a(I)V
    .registers 4

    invoke-static {}, Lorg/a/a/a/f;->b()[I

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/a/f;->b:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7c

    :cond_f
    :goto_f
    return-void

    :pswitch_10  #0x1
    iget-object v0, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_f

    iget-object v0, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/a/a/a/f;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/a/a/a/f;->c:Ljava/nio/ByteBuffer;

    goto :goto_f

    :pswitch_34  #0x2
    iget-object v0, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_f

    iget-object v0, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/a/a/a/f;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    iput-object v0, p0, Lorg/a/a/a/f;->d:Ljava/nio/CharBuffer;

    goto :goto_f

    :pswitch_58  #0x3
    iget-object v0, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_f

    iget-object v0, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lorg/a/a/a/f;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    iput-object v0, p0, Lorg/a/a/a/f;->e:Ljava/nio/IntBuffer;

    goto :goto_f

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_10  #00000001
        :pswitch_34  #00000002
        :pswitch_58  #00000003
    .end packed-switch
.end method

.method public a(Ljava/nio/CharBuffer;)V
    .registers 4

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/a/a/a/f;->a(I)V

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Lorg/a/a/a/f;->b(Ljava/nio/CharBuffer;)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
