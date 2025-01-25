.class public final Lc/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lc/bu;->a:J

    return-void
.end method

.method public static b(I)I
    .registers 3

    const/16 v0, 0x7f

    const/4 v1, 0x1

    if-le p0, v0, :cond_17

    const/4 v0, 0x1

    :goto_6
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    :goto_10
    if-ltz v0, :cond_17

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x8

    goto :goto_10

    :cond_17
    return v1
.end method

.method public static c(I)I
    .registers 6

    const/16 v0, 0x1f

    const/4 v1, 0x1

    if-lt p0, v0, :cond_1e

    const/16 v0, 0x80

    if-ge p0, v0, :cond_b

    const/4 v1, 0x2

    goto :goto_1e

    :cond_b
    const/4 v2, 0x5

    new-array v2, v2, [B

    const/4 v3, 0x4

    :cond_f
    shr-int/lit8 p0, p0, 0x7

    sub-int/2addr v3, v1

    and-int/lit8 v4, p0, 0x7f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v4, 0x7f

    if-gt p0, v4, :cond_f

    rsub-int/lit8 v1, v3, 0x6

    :cond_1e
    :goto_1e
    return v1
.end method

.method public static d(Ljava/io/InputStream;)I
    .registers 6

    instance-of v0, p0, Lc/bs;

    if-eqz v0, :cond_b

    check-cast p0, Lc/bs;

    invoke-virtual {p0}, Lc/bs;->d()I

    move-result p0

    return p0

    :cond_b
    instance-of v0, p0, Lc/j;

    if-eqz v0, :cond_14

    check-cast p0, Lc/j;

    .line 1
    iget p0, p0, Lc/j;->a:I

    return p0

    .line 2
    :cond_14
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1f

    check-cast p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    return p0

    :cond_1f
    instance-of v0, p0, Ljava/io/FileInputStream;

    const-wide/32 v1, 0x7fffffff

    if-eqz v0, :cond_3b

    :try_start_26
    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    if-eqz p0, :cond_33

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_32} :catch_3a

    goto :goto_34

    :cond_33
    move-wide v3, v1

    :goto_34
    cmp-long p0, v3, v1

    if-gez p0, :cond_3b

    long-to-int p0, v3

    return p0

    :catch_3a
    move-exception p0

    :cond_3b
    sget-wide v3, Lc/bu;->a:J

    cmp-long p0, v3, v1

    if-lez p0, :cond_45

    const p0, 0x7fffffff

    return p0

    :cond_45
    long-to-int p0, v3

    return p0
.end method
