.class public Lcom/baidu/mobstat/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final a:Z = true

.field private static final b:[Ljava/io/ObjectStreamField;


# instance fields
.field private c:[J

.field private transient d:I

.field private transient e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "bits"

    const-class v3, [J

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/baidu/mobstat/ac;->b:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iput-boolean v0, p0, Lcom/baidu/mobstat/ac;->e:Z

    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/ac;->g(I)V

    iput-boolean v0, p0, Lcom/baidu/mobstat/ac;->e:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iput-boolean v0, p0, Lcom/baidu/mobstat/ac;->e:Z

    if-ltz p1, :cond_11

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ac;->g(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/ac;->e:Z

    return-void

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nbits < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/NegativeArraySizeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>([J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iput-boolean v0, p0, Lcom/baidu/mobstat/ac;->e:Z

    iput-object p1, p0, Lcom/baidu/mobstat/ac;->c:[J

    array-length p1, p1

    iput p1, p0, Lcom/baidu/mobstat/ac;->d:I

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    return-void
.end method

.method public static a([J)Lcom/baidu/mobstat/ac;
    .registers 7

    array-length v0, p0

    :goto_1
    if-lez v0, :cond_10

    add-int/lit8 v1, v0, -0x1

    aget-wide v1, p0, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_10

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_10
    new-instance v1, Lcom/baidu/mobstat/ac;

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/ac;-><init>([J)V

    return-object v1
.end method

.method private d()V
    .registers 7

    sget-boolean v0, Lcom/baidu/mobstat/ac;->a:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1b

    iget v3, p0, Lcom/baidu/mobstat/ac;->d:I

    if-eqz v3, :cond_1b

    iget-object v4, p0, Lcom/baidu/mobstat/ac;->c:[J

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v4, v3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_15

    goto :goto_1b

    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1b
    :goto_1b
    if-nez v0, :cond_2d

    iget v3, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ltz v3, :cond_27

    iget-object v4, p0, Lcom/baidu/mobstat/ac;->c:[J

    array-length v4, v4

    if-gt v3, v4, :cond_27

    goto :goto_2d

    :cond_27
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2d
    :goto_2d
    if-nez v0, :cond_43

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget-object v3, p0, Lcom/baidu/mobstat/ac;->c:[J

    array-length v4, v3

    if-eq v0, v4, :cond_43

    aget-wide v4, v3, v0

    cmp-long v0, v4, v1

    if-nez v0, :cond_3d

    goto :goto_43

    :cond_3d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_43
    :goto_43
    return-void
.end method

.method private static d(II)V
    .registers 4

    if-ltz p0, :cond_37

    if-ltz p1, :cond_23

    if-gt p0, p1, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fromIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " > toIndex: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "toIndex < 0: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "fromIndex < 0: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private e()V
    .registers 7

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_14

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_14
    :goto_14
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/ac;->d:I

    return-void
.end method

.method private static f(I)I
    .registers 1

    shr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method private f()V
    .registers 4

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    array-length v2, v1

    if-eq v0, v2, :cond_10

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ac;->c:[J

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    :cond_10
    return-void
.end method

.method private g(I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/baidu/mobstat/ac;->c:[J

    return-void
.end method

.method private h(I)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mobstat/ac;->c:[J

    array-length v1, v0

    if-ge v1, p1, :cond_17

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/baidu/mobstat/ac;->c:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ac;->c:[J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/mobstat/ac;->e:Z

    :cond_17
    return-void
.end method

.method private i(I)V
    .registers 3

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ge v0, p1, :cond_b

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ac;->h(I)V

    iput p1, p0, Lcom/baidu/mobstat/ac;->d:I

    :cond_b
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 8

    if-ltz p1, :cond_17

    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ac;->i(I)V

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    return-void

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitIndex < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)V
    .registers 12

    invoke-static {p1, p2}, Lcom/baidu/mobstat/ac;->d(II)V

    if-ne p1, p2, :cond_6

    return-void

    :cond_6
    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    invoke-static {v1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/ac;->i(I)V

    const-wide/16 v2, -0x1

    shl-long v4, v2, p1

    neg-int p1, p2

    ushr-long p1, v2, p1

    if-ne v0, v1, :cond_25

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    and-long/2addr p1, v4

    aget-wide v2, v1, v0

    or-long/2addr p1, v2

    aput-wide p1, v1, v0

    goto :goto_3c

    :cond_25
    iget-object v6, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v7, v6, v0

    or-long/2addr v4, v7

    aput-wide v4, v6, v0

    :goto_2c
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_35

    iget-object v4, p0, Lcom/baidu/mobstat/ac;->c:[J

    aput-wide v2, v4, v0

    goto :goto_2c

    :cond_35
    iget-object v0, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v0, v1

    or-long/2addr p1, v2

    aput-wide p1, v0, v1

    :goto_3c
    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    return-void
.end method

.method public a(IIZ)V
    .registers 4

    if-eqz p3, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/ac;->a(II)V

    goto :goto_9

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/ac;->b(II)V

    :goto_9
    return-void
.end method

.method public a(IZ)V
    .registers 3

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ac;->a(I)V

    goto :goto_9

    :cond_6
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ac;->b(I)V

    :goto_9
    return-void
.end method

.method public a(Lcom/baidu/mobstat/ac;)V
    .registers 9

    if-ne p0, p1, :cond_3

    return-void

    :cond_3
    :goto_3
    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget v1, p1, Lcom/baidu/mobstat/ac;->d:I

    if-le v0, v1, :cond_14

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/mobstat/ac;->d:I

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    goto :goto_3

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v5, v4, v0

    and-long/2addr v2, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_27
    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->e()V

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    return-void
.end method

.method public a()[B
    .registers 11

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    const/4 v1, 0x0

    if-nez v0, :cond_8

    new-array v0, v1, [B

    return-object v0

    :cond_8
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v2, v0, 0x8

    iget-object v3, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v4, v3, v0

    :goto_10
    const-wide/16 v6, 0x0

    const/16 v3, 0x8

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c

    add-int/lit8 v2, v2, 0x1

    ushr-long/2addr v4, v3

    goto :goto_10

    :cond_1c
    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_28
    if-ge v1, v0, :cond_34

    iget-object v5, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v8, v5, v1

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_34
    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v0, v1, v0

    :goto_38
    cmp-long v5, v0, v6

    if-eqz v5, :cond_46

    const-wide/16 v8, 0xff

    and-long/2addr v8, v0

    long-to-int v5, v8

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-long/2addr v0, v3

    goto :goto_38

    :cond_46
    return-object v2
.end method

.method public b()I
    .registers 6

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v1, v0, 0x40

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    add-int/2addr v1, v0

    return v1
.end method

.method public b(I)V
    .registers 10

    if-ltz p1, :cond_1f

    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v0

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-lt v0, v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->e()V

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    return-void

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitIndex < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(II)V
    .registers 12

    invoke-static {p1, p2}, Lcom/baidu/mobstat/ac;->d(II)V

    if-ne p1, p2, :cond_6

    return-void

    :cond_6
    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v0

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-lt v0, v1, :cond_f

    return-void

    :cond_f
    add-int/lit8 v1, p2, -0x1

    invoke-static {v1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v1

    iget v2, p0, Lcom/baidu/mobstat/ac;->d:I

    if-lt v1, v2, :cond_21

    invoke-virtual {p0}, Lcom/baidu/mobstat/ac;->b()I

    move-result p2

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    add-int/lit8 v1, v1, -0x1

    :cond_21
    const-wide/16 v2, -0x1

    shl-long v4, v2, p1

    neg-int p1, p2

    ushr-long p1, v2, p1

    if-ne v0, v1, :cond_34

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    and-long/2addr p1, v4

    xor-long/2addr p1, v2

    aget-wide v2, v1, v0

    and-long/2addr p1, v2

    aput-wide p1, v1, v0

    goto :goto_4f

    :cond_34
    iget-object v6, p0, Lcom/baidu/mobstat/ac;->c:[J

    xor-long/2addr v4, v2

    aget-wide v7, v6, v0

    and-long/2addr v4, v7

    aput-wide v4, v6, v0

    :goto_3c
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_47

    iget-object v4, p0, Lcom/baidu/mobstat/ac;->c:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v0

    goto :goto_3c

    :cond_47
    iget-object v0, p0, Lcom/baidu/mobstat/ac;->c:[J

    xor-long/2addr p1, v2

    aget-wide v2, v0, v1

    and-long/2addr p1, v2

    aput-wide p1, v0, v1

    :goto_4f
    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->e()V

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    return-void
.end method

.method public b(Lcom/baidu/mobstat/ac;)V
    .registers 10

    if-ne p0, p1, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget v1, p1, Lcom/baidu/mobstat/ac;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    iget v2, p1, Lcom/baidu/mobstat/ac;->d:I

    if-ge v1, v2, :cond_18

    invoke-direct {p0, v2}, Lcom/baidu/mobstat/ac;->h(I)V

    iget v1, p1, Lcom/baidu/mobstat/ac;->d:I

    iput v1, p0, Lcom/baidu/mobstat/ac;->d:I

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_29

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v6, v5, v1

    or-long/2addr v3, v6

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_29
    iget v1, p1, Lcom/baidu/mobstat/ac;->d:I

    if-ge v0, v1, :cond_37

    iget-object p1, p1, Lcom/baidu/mobstat/ac;->c:[J

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    iget v2, p0, Lcom/baidu/mobstat/ac;->d:I

    sub-int/2addr v2, v0

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_37
    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    return-void
.end method

.method public c()I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ge v0, v2, :cond_12

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    return v1
.end method

.method public c(II)Lcom/baidu/mobstat/ac;
    .registers 16

    invoke-static {p1, p2}, Lcom/baidu/mobstat/ac;->d(II)V

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    invoke-virtual {p0}, Lcom/baidu/mobstat/ac;->b()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_75

    if-ne p1, p2, :cond_10

    goto :goto_75

    :cond_10
    if-le p2, v0, :cond_13

    move p2, v0

    :cond_13
    sub-int v0, p2, p1

    new-instance v2, Lcom/baidu/mobstat/ac;

    invoke-direct {v2, v0}, Lcom/baidu/mobstat/ac;-><init>(I)V

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-static {v0}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v0

    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v4

    and-int/lit8 v5, p1, 0x3f

    move v6, v4

    if-nez v5, :cond_2b

    const/4 v4, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    if-ge v1, v0, :cond_48

    iget-object v7, v2, Lcom/baidu/mobstat/ac;->c:[J

    iget-object v8, p0, Lcom/baidu/mobstat/ac;->c:[J

    if-eqz v4, :cond_37

    aget-wide v9, v8, v6

    goto :goto_41

    :cond_37
    aget-wide v9, v8, v6

    ushr-long/2addr v9, p1

    add-int/lit8 v11, v6, 0x1

    aget-wide v11, v8, v11

    neg-int v8, p1

    shl-long/2addr v11, v8

    or-long/2addr v9, v11

    :goto_41
    aput-wide v9, v7, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_48
    const-wide/16 v7, -0x1

    neg-int v1, p2

    ushr-long/2addr v7, v1

    iget-object v1, v2, Lcom/baidu/mobstat/ac;->c:[J

    sub-int/2addr p2, v3

    and-int/lit8 p2, p2, 0x3f

    if-ge p2, v5, :cond_62

    iget-object p2, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v4, p2, v6

    add-int/2addr v6, v3

    aget-wide v9, p2, v6

    and-long/2addr v7, v9

    neg-int p2, p1

    shl-long v6, v7, p2

    ushr-long p1, v4, p1

    or-long/2addr p1, v6

    goto :goto_69

    :cond_62
    iget-object p2, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v4, p2, v6

    and-long/2addr v4, v7

    ushr-long p1, v4, p1

    :goto_69
    aput-wide p1, v1, v0

    add-int/2addr v0, v3

    iput v0, v2, Lcom/baidu/mobstat/ac;->d:I

    invoke-direct {v2}, Lcom/baidu/mobstat/ac;->e()V

    invoke-direct {v2}, Lcom/baidu/mobstat/ac;->d()V

    return-object v2

    :cond_75
    :goto_75
    new-instance p1, Lcom/baidu/mobstat/ac;

    invoke-direct {p1, v1}, Lcom/baidu/mobstat/ac;-><init>(I)V

    return-object p1
.end method

.method public c(Lcom/baidu/mobstat/ac;)V
    .registers 10

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget v1, p1, Lcom/baidu/mobstat/ac;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    iget v2, p1, Lcom/baidu/mobstat/ac;->d:I

    if-ge v1, v2, :cond_15

    invoke-direct {p0, v2}, Lcom/baidu/mobstat/ac;->h(I)V

    iget v1, p1, Lcom/baidu/mobstat/ac;->d:I

    iput v1, p0, Lcom/baidu/mobstat/ac;->d:I

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_26

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v6, v5, v1

    xor-long/2addr v3, v6

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_26
    iget v1, p1, Lcom/baidu/mobstat/ac;->d:I

    if-ge v0, v1, :cond_32

    iget-object p1, p1, Lcom/baidu/mobstat/ac;->c:[J

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_32
    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->e()V

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    return-void
.end method

.method public c(I)Z
    .registers 6

    if-ltz p1, :cond_1f

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v0

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v0, v1, v0

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    return p1

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitIndex < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lcom/baidu/mobstat/ac;->e:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->f()V

    :cond_7
    :try_start_7
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ac;

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/baidu/mobstat/ac;->c:[J

    invoke-direct {v0}, Lcom/baidu/mobstat/ac;->d()V
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public d(I)I
    .registers 9

    if-ltz p1, :cond_31

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v0

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v3, v1, v0

    const-wide/16 v5, -0x1

    shl-long/2addr v5, p1

    and-long/2addr v3, v5

    :goto_17
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_25

    mul-int/lit8 v0, v0, 0x40

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    :cond_25
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ne v0, p1, :cond_2c

    return v2

    :cond_2c
    iget-object p1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v3, p1, v0

    goto :goto_17

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fromIndex < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_46

    :goto_45
    throw p1

    :goto_46
    goto :goto_45
.end method

.method public d(Lcom/baidu/mobstat/ac;)V
    .registers 11

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget v1, p1, Lcom/baidu/mobstat/ac;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_1d

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v5, v4, v0

    const-wide/16 v7, -0x1

    xor-long/2addr v5, v7

    and-long/2addr v2, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1d
    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->e()V

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    return-void
.end method

.method public e(I)I
    .registers 10

    if-ltz p1, :cond_36

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v0

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-lt v0, v1, :cond_e

    return p1

    :cond_e
    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    shl-long v6, v4, p1

    and-long/2addr v2, v6

    :goto_18
    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    if-eqz p1, :cond_26

    mul-int/lit8 v0, v0, 0x40

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    :cond_26
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ne v0, p1, :cond_2f

    mul-int/lit8 p1, p1, 0x40

    return p1

    :cond_2f
    iget-object p1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v1, p1, v0

    xor-long/2addr v1, v4

    move-wide v2, v1

    goto :goto_18

    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fromIndex < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_4b

    :goto_4a
    throw p1

    :goto_4b
    goto :goto_4a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    instance-of v0, p1, Lcom/baidu/mobstat/ac;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/baidu/mobstat/ac;

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    invoke-direct {p1}, Lcom/baidu/mobstat/ac;->d()V

    iget v2, p0, Lcom/baidu/mobstat/ac;->d:I

    iget v3, p1, Lcom/baidu/mobstat/ac;->d:I

    if-eq v2, v3, :cond_19

    return v1

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    iget v3, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ge v2, v3, :cond_2e

    iget-object v3, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v4, v3, v2

    iget-object v3, p1, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v6, v3, v2

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2b

    return v1

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2e
    return v0
.end method

.method public hashCode()I
    .registers 10

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    const-wide/16 v1, 0x4d2

    :goto_4
    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_12

    iget-object v4, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v5, v4, v3

    int-to-long v7, v0

    mul-long v5, v5, v7

    xor-long/2addr v1, v5

    move v0, v3

    goto :goto_4

    :cond_12
    const/16 v0, 0x20

    shr-long v3, v1, v0

    xor-long/2addr v1, v3

    long-to-int v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    const/16 v1, 0x80

    if-le v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/baidu/mobstat/ac;->c()I

    move-result v0

    goto :goto_10

    :cond_e
    mul-int/lit8 v0, v0, 0x40

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ac;->d(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_46

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :goto_2b
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ac;->d(I)I

    move-result v0

    if-ltz v0, :cond_46

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ac;->e(I)I

    move-result v2

    :goto_35
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    if-lt v3, v2, :cond_44

    add-int/lit8 v0, v0, 0x2

    goto :goto_2b

    :cond_44
    move v0, v3

    goto :goto_35

    :cond_46
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
