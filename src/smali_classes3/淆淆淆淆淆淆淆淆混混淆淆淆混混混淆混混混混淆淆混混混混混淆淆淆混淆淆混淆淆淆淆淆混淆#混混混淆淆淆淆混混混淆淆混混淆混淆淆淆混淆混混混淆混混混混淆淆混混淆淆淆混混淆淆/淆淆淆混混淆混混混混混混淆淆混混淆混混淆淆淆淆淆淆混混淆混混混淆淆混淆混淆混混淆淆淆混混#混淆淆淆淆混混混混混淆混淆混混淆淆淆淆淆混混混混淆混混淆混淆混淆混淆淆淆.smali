.class public final L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆混混淆混混混混混混淆淆混混淆混混淆淆淆淆淆淆混混淆混混混淆淆混淆混淆混混淆淆淆混混淆淆混淆淆淆淆淆淆淆淆淆淆淆混混混混混淆混淆淆淆淆混混混混混淆混淆混混淆淆淆淆淆混混混混淆混混淆混淆混淆混淆淆淆;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final 淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆混混淆混混混混混混淆淆混混淆混混淆淆淆淆淆淆混混淆混混混淆淆混淆混淆混混淆淆淆混混淆淆混淆淆淆淆淆淆淆淆淆淆淆混混混混混淆混淆淆淆淆混混混混混淆混淆混混淆淆淆淆淆混混混混淆混混淆混淆混淆混淆淆淆;->淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混:J

    return-void
.end method

.method public static 淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混(I)I
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x7f

    if-le p0, v1, :cond_1

    move v1, v0

    :goto_0
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x8

    :goto_1
    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static 淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆(I)I
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x1f

    if-lt p0, v1, :cond_0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x5

    new-array v1, v0, [B

    const/4 v0, 0x4

    :cond_2
    shr-int/lit8 p0, p0, 0x7

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p0, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v2, 0x7f

    if-gt p0, v2, :cond_2

    rsub-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static 淆淆淆淆淆淆混淆淆混淆混混淆淆淆淆混混混混混淆淆淆淆淆混淆淆淆淆混混混混混混混淆淆淆淆混淆混混淆淆淆淆混混混淆混混淆淆淆淆混淆混混淆混淆淆淆淆混淆混淆淆混淆混淆淆淆混淆淆混淆混混淆淆混淆淆淆混混混混淆(Ljava/io/InputStream;)I
    .registers 6

    const-wide/32 v2, 0x7fffffff

    instance-of v0, p0, L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆混混淆混混混淆混混淆淆淆淆淆混淆淆混淆淆淆混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆混混混淆混淆淆淆淆混混混淆淆混淆淆淆混淆淆淆淆混混混淆淆淆混混淆混混淆混混淆淆淆淆混混淆淆混混混混淆淆混混混;

    if-eqz v0, :cond_0

    check-cast p0, L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆混混淆混混混淆混混淆淆淆淆淆混淆淆混淆淆淆混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆混混混淆混淆淆淆淆混混混淆淆混淆淆淆混淆淆淆淆混混混淆淆淆混混淆混混淆混混淆淆淆淆混混淆淆混混混混淆淆混混混;

    invoke-virtual {p0}, L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆混混淆混混混淆混混淆淆淆淆淆混淆淆混淆淆淆混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆混混混淆混淆淆淆淆混混混淆淆混淆淆淆混淆淆淆淆混混混淆淆淆混混淆混混淆混混淆淆淆淆混混淆淆混混混混淆淆混混混;->淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混()I

    move-result v0

    .line 2
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    instance-of v0, p0, L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆淆淆混混淆淆混淆混淆淆淆混混淆淆混淆混混淆淆淆混淆淆淆淆混混淆淆混淆淆淆淆淆淆淆淆混淆混混淆淆混淆混淆淆混淆淆淆淆淆混混淆混淆淆混混淆淆淆淆混混混淆混淆混混淆淆混淆淆淆混混混混淆淆混淆淆淆淆淆混;

    if-eqz v0, :cond_1

    check-cast p0, L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆淆淆混混淆淆混淆混淆淆淆混混淆淆混淆混混淆淆淆混淆淆淆淆混混淆淆混淆淆淆淆淆淆淆淆混淆混混淆淆混淆混淆淆混淆淆淆淆淆混混淆混淆淆混混淆淆淆淆混混混淆混淆混混淆淆混淆淆淆混混混混淆淆混淆淆淆淆淆混;

    .line 1
    iget v0, p0, L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆淆淆混混淆淆混淆混淆淆淆混混淆淆混淆混混淆淆淆混淆淆淆淆混混淆淆混淆淆淆淆淆淆淆淆混淆混混淆淆混淆混淆淆混淆淆淆淆淆混混淆混淆淆混混淆淆淆淆混混混淆混淆混混淆淆混淆淆淆混混混混淆淆混淆淆淆淆淆混;->淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混:I

    goto :goto_0

    .line 2
    :cond_1
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_4

    :try_start_0
    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_1
    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    long-to-int v0, v0

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_4
    sget-wide v0, L淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆/淆淆淆混混淆混混混混混混淆淆混混淆混混淆淆淆淆淆淆混混淆混混混淆淆混淆混淆混混淆淆淆混混淆淆混淆淆淆淆淆淆淆淆淆淆淆混混混混混淆混淆淆淆淆混混混混混淆混淆混混淆淆淆淆淆混混混混淆混混淆混淆混淆混淆淆淆;->淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    const v0, 0x7fffffff

    goto :goto_0

    :cond_5
    long-to-int v0, v0

    goto :goto_0
.end method
