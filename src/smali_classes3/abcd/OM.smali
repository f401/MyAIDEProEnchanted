.class Labcd/OM;
.super Ljava/lang/Object;


# static fields
.field private static final j6:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Labcd/OM;->j6:J

    return-void
.end method

.method static DW(I)I
    .registers 7

    const/16 v0, 0x1f

    const/4 v1, 0x1

    if-lt p0, v0, :cond_23

    const/16 v0, 0x80

    if-ge p0, v0, :cond_b

    const/4 v1, 0x2

    goto :goto_23

    :cond_b
    const/4 v2, 0x5

    new-array v3, v2, [B

    and-int/lit8 v4, p0, 0x7f

    int-to-byte v4, v4

    const/4 v5, 0x4

    aput-byte v4, v3, v5

    :cond_14
    shr-int/lit8 p0, p0, 0x7

    sub-int/2addr v5, v1

    and-int/lit8 v4, p0, 0x7f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    const/16 v4, 0x7f

    if-gt p0, v4, :cond_14

    sub-int/2addr v2, v5

    add-int/2addr v1, v2

    :cond_23
    :goto_23
    return v1
.end method

.method static j6(I)I
    .registers 3

    const/16 v0, 0x7f

    const/4 v1, 0x1

    if-le p0, v0, :cond_18

    const/4 v0, 0x1

    :goto_6
    ushr-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_15

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    :goto_d
    if-gez v0, :cond_10

    goto :goto_18

    :cond_10
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x8

    goto :goto_d

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    :goto_18
    return v1
.end method

.method static j6(Ljava/io/InputStream;)I
    .registers 6

    instance-of v0, p0, Labcd/MM;

    if-eqz v0, :cond_b

    check-cast p0, Labcd/MM;

    invoke-virtual {p0}, Labcd/MM;->j6()I

    move-result p0

    return p0

    :cond_b
    instance-of v0, p0, Labcd/vL;

    if-eqz v0, :cond_16

    check-cast p0, Labcd/vL;

    invoke-virtual {p0}, Labcd/vL;->DW()I

    move-result p0

    return p0

    :cond_16
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_21

    check-cast p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    return p0

    :cond_21
    instance-of v0, p0, Ljava/io/FileInputStream;

    const-wide/32 v1, 0x7fffffff

    if-eqz v0, :cond_39

    :try_start_28
    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_32} :catch_38

    cmp-long p0, v3, v1

    if-gez p0, :cond_39

    long-to-int p0, v3

    return p0

    :catch_38
    move-exception p0

    :cond_39
    sget-wide v3, Labcd/OM;->j6:J

    cmp-long p0, v3, v1

    if-lez p0, :cond_43

    const p0, 0x7fffffff

    return p0

    :cond_43
    long-to-int p0, v3

    return p0
.end method
