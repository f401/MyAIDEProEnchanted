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
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "bits"

    const-class v4, [J

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/mobstat/ac;->b:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/mobstat/ac;->d:I

    iput-boolean v1, p0, Lcom/baidu/mobstat/ac;->e:Z

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ac;->g(I)V

    iput-boolean v1, p0, Lcom/baidu/mobstat/ac;->e:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iput-boolean v0, p0, Lcom/baidu/mobstat/ac;->e:Z

    if-ltz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ac;->g(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ac;->e:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nbits < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NegativeArraySizeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>([J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iput-boolean v0, p0, Lcom/baidu/mobstat/ac;->e:Z

    iput-object p1, p0, Lcom/baidu/mobstat/ac;->c:[J

    array-length v0, p1

    iput v0, p0, Lcom/baidu/mobstat/ac;->d:I

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    return-void
.end method

.method public static a([J)Lcom/baidu/mobstat/ac;
    .locals 6

    array-length v0, p0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/baidu/mobstat/ac;

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/baidu/mobstat/ac;-><init>([J)V

    return-object v1
.end method

.method private d()V
    .locals 6

    const-wide/16 v4, 0x0

    sget-boolean v0, Lcom/baidu/mobstat/ac;->a:Z

    if-nez v0, :cond_0

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v2, v1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    :cond_0
    if-nez v0, :cond_1

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    array-length v2, v2

    if-gt v1, v2, :cond_4

    :cond_1
    if-nez v0, :cond_2

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    array-length v2, v1

    if-eq v0, v2, :cond_2

    aget-wide v0, v1, v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static d(II)V
    .locals 2

    if-ltz p0, :cond_2

    if-ltz p1, :cond_1

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fromIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > toIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toIndex < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fromIndex < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private e()V
    .locals 6

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/ac;->d:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static f(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x6

    return v0
.end method

.method private f()V
    .locals 3

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    array-length v2, v1

    if-eq v0, v2, :cond_0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ac;->c:[J

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    :cond_0
    return-void
.end method

.method private g(I)V
    .locals 1

    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/baidu/mobstat/ac;->c:[J

    return-void
.end method

.method private h(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/ac;->c:[J

    array-length v1, v0

    if-ge v1, p1, :cond_0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ac;->c:[J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/ac;->e:Z

    :cond_0
    return-void
.end method

.method private i(I)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ge v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ac;->h(I)V

    iput v0, p0, Lcom/baidu/mobstat/ac;->d:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    if-ltz p1, :cond_0

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

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitIndex < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(II)V
    .locals 12

    const-wide/16 v10, -0x1

    invoke-static {p1, p2}, Lcom/baidu/mobstat/ac;->d(II)V

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    invoke-static {v1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/ac;->i(I)V

    shl-long v2, v10, p1

    neg-int v4, p2

    ushr-long v4, v10, v4

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    and-long/2addr v2, v4

    aget-wide v4, v1, v0

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    :goto_1
    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v8, v6, v0

    or-long/2addr v2, v8

    aput-wide v2, v6, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    aput-wide v10, v2, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v0, v1

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    goto :goto_1
.end method

.method public a(IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/ac;->a(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/ac;->b(II)V

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ac;->a(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ac;->b(I)V

    goto :goto_0
.end method

.method public a(Lcom/baidu/mobstat/ac;)V
    .locals 6

    if-ne p0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :goto_1
    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget v1, p1, Lcom/baidu/mobstat/ac;->d:I

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/mobstat/ac;->d:I

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v4, v4, v0

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->e()V

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    goto :goto_0
.end method

.method public a()[B
    .locals 12

    const-wide/16 v10, 0x0

    const/16 v8, 0x8

    const/4 v1, 0x0

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    if-nez v0, :cond_1

    new-array v0, v1, [B

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v4, v0, -0x1

    mul-int/lit8 v0, v4, 0x8

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v2, v4

    :goto_0
    cmp-long v5, v2, v10

    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    ushr-long/2addr v2, v8

    goto :goto_0

    :cond_2
    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    :goto_1
    if-ge v1, v4, :cond_3

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v2, v1

    invoke-virtual {v5, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v1, v4

    :goto_2
    cmp-long v1, v2, v10

    if-eqz v1, :cond_0

    const-wide/16 v6, 0xff

    and-long/2addr v6, v2

    long-to-int v1, v6

    int-to-byte v1, v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-long/2addr v2, v8

    goto :goto_2
.end method

.method public b()I
    .locals 4

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v1, v0, 0x40

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public b(I)V
    .locals 8

    if-ltz p1, :cond_1

    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v0

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
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

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitIndex < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(II)V
    .locals 12

    const-wide/16 v10, -0x1

    invoke-static {p1, p2}, Lcom/baidu/mobstat/ac;->d(II)V

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v0

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-static {v1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v1

    iget v2, p0, Lcom/baidu/mobstat/ac;->d:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/baidu/mobstat/ac;->b()I

    move-result p2

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    add-int/lit8 v1, v1, -0x1

    :cond_2
    shl-long v2, v10, p1

    neg-int v4, p2

    ushr-long v4, v10, v4

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    and-long/2addr v2, v4

    xor-long/2addr v2, v10

    aget-wide v4, v1, v0

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    :goto_1
    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->e()V

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/baidu/mobstat/ac;->c:[J

    xor-long/2addr v2, v10

    aget-wide v8, v6, v0

    and-long/2addr v2, v8

    aput-wide v2, v6, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v2, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/ac;->c:[J

    xor-long v2, v4, v10

    aget-wide v4, v0, v1

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    goto :goto_1
.end method

.method public b(Lcom/baidu/mobstat/ac;)V
    .locals 8

    if-ne p0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget v1, p1, Lcom/baidu/mobstat/ac;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget v2, p1, Lcom/baidu/mobstat/ac;->d:I

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v2}, Lcom/baidu/mobstat/ac;->h(I)V

    iget v0, p1, Lcom/baidu/mobstat/ac;->d:I

    iput v0, p0, Lcom/baidu/mobstat/ac;->d:I

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v4, v2, v0

    iget-object v3, p1, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v6, v3, v0

    or-long/2addr v4, v6

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p1, Lcom/baidu/mobstat/ac;->d:I

    if-ge v1, v0, :cond_3

    iget-object v0, p1, Lcom/baidu/mobstat/ac;->c:[J

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    iget v3, p0, Lcom/baidu/mobstat/ac;->d:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    goto :goto_0
.end method

.method public c()I
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v4, v1, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public c(II)Lcom/baidu/mobstat/ac;
    .locals 12

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/baidu/mobstat/ac;->d(II)V

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    invoke-virtual {p0}, Lcom/baidu/mobstat/ac;->b()I

    move-result v0

    if-le v0, p1, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    new-instance v0, Lcom/baidu/mobstat/ac;

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ac;-><init>(I)V

    :goto_0
    return-object v0

    :cond_1
    if-le p2, v0, :cond_2

    move p2, v0

    :cond_2
    sub-int v0, p2, p1

    new-instance v2, Lcom/baidu/mobstat/ac;

    invoke-direct {v2, v0}, Lcom/baidu/mobstat/ac;-><init>(I)V

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v6

    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v0

    and-int/lit8 v7, p1, 0x3f

    if-nez v7, :cond_3

    const/4 v5, 0x1

    move v3, v1

    move v4, v0

    :goto_1
    if-ge v3, v6, :cond_5

    iget-object v8, v2, Lcom/baidu/mobstat/ac;->c:[J

    iget-object v0, p0, Lcom/baidu/mobstat/ac;->c:[J

    if-eqz v5, :cond_4

    aget-wide v0, v0, v4

    :goto_2
    aput-wide v0, v8, v3

    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v1, v4, 0x1

    move v3, v0

    move v4, v1

    goto :goto_1

    :cond_3
    move v3, v1

    move v4, v0

    move v5, v1

    goto :goto_1

    :cond_4
    aget-wide v10, v0, v4

    ushr-long/2addr v10, p1

    add-int/lit8 v1, v4, 0x1

    aget-wide v0, v0, v1

    neg-int v9, p1

    shl-long/2addr v0, v9

    or-long/2addr v0, v10

    goto :goto_2

    :cond_5
    const-wide/16 v0, -0x1

    neg-int v3, p2

    ushr-long/2addr v0, v3

    iget-object v3, v2, Lcom/baidu/mobstat/ac;->c:[J

    add-int/lit8 v5, p2, -0x1

    and-int/lit8 v5, v5, 0x3f

    if-ge v5, v7, :cond_6

    iget-object v5, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v8, v5, v4

    ushr-long/2addr v8, p1

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, v5, v4

    and-long/2addr v0, v4

    neg-int v4, p1

    shl-long/2addr v0, v4

    or-long/2addr v0, v8

    :goto_3
    aput-wide v0, v3, v6

    add-int/lit8 v0, v6, 0x1

    iput v0, v2, Lcom/baidu/mobstat/ac;->d:I

    invoke-direct {v2}, Lcom/baidu/mobstat/ac;->e()V

    invoke-direct {v2}, Lcom/baidu/mobstat/ac;->d()V

    move-object v0, v2

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v4, v5, v4

    and-long/2addr v0, v4

    ushr-long/2addr v0, p1

    goto :goto_3
.end method

.method public c(Lcom/baidu/mobstat/ac;)V
    .locals 8

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget v1, p1, Lcom/baidu/mobstat/ac;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget v2, p1, Lcom/baidu/mobstat/ac;->d:I

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/baidu/mobstat/ac;->h(I)V

    iget v0, p1, Lcom/baidu/mobstat/ac;->d:I

    iput v0, p0, Lcom/baidu/mobstat/ac;->d:I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v4, v2, v0

    iget-object v3, p1, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v6, v3, v0

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/baidu/mobstat/ac;->d:I

    if-ge v1, v0, :cond_2

    iget-object v2, p1, Lcom/baidu/mobstat/ac;->c:[J

    iget-object v3, p0, Lcom/baidu/mobstat/ac;->c:[J

    sub-int/2addr v0, v1

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->e()V

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    return-void
.end method

.method public c(I)Z
    .locals 4

    if-ltz p1, :cond_1

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v0

    iget v1, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v0, v1, v0

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitIndex < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/mobstat/ac;->e:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->f()V

    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ac;

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/baidu/mobstat/ac;->c:[J

    invoke-direct {v0}, Lcom/baidu/mobstat/ac;->d()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public d(I)I
    .locals 6

    const/4 v0, -0x1

    if-ltz p1, :cond_3

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v1

    iget v2, p0, Lcom/baidu/mobstat/ac;->d:I

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, -0x1

    shl-long/2addr v4, p1

    and-long/2addr v2, v4

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    mul-int/lit8 v0, v1, 0x40

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/baidu/mobstat/ac;->d:I

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v2, v1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fromIndex < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d(Lcom/baidu/mobstat/ac;)V
    .locals 8

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget v1, p1, Lcom/baidu/mobstat/ac;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v4, v4, v0

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->e()V

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    return-void
.end method

.method public e(I)I
    .locals 8

    const-wide/16 v6, -0x1

    if-ltz p1, :cond_3

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    invoke-static {p1}, Lcom/baidu/mobstat/ac;->f(I)I

    move-result v2

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    if-lt v2, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v0, v0, v2

    xor-long/2addr v0, v6

    shl-long v4, v6, p1

    and-long/2addr v0, v4

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x40

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    add-int p1, v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ne v2, v0, :cond_2

    mul-int/lit8 p1, v0, 0x40

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v0, v0, v2

    xor-long/2addr v0, v6

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fromIndex < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/baidu/mobstat/ac;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/baidu/mobstat/ac;

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    invoke-direct {p1}, Lcom/baidu/mobstat/ac;->d()V

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    iget v3, p1, Lcom/baidu/mobstat/ac;->d:I

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/baidu/mobstat/ac;->d:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v4, v3, v0

    iget-object v3, p1, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v6, v3, v0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    iget v2, p0, Lcom/baidu/mobstat/ac;->d:I

    const-wide/16 v0, 0x4d2

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/baidu/mobstat/ac;->c:[J

    aget-wide v4, v4, v3

    int-to-long v6, v2

    mul-long/2addr v4, v6

    xor-long/2addr v0, v4

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/baidu/mobstat/ac;->d()V

    iget v0, p0, Lcom/baidu/mobstat/ac;->d:I

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/mobstat/ac;->c()I

    move-result v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ac;->d(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ac;->d(I)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ac;->e(I)I

    move-result v3

    :goto_2
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    if-lt v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x40

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
