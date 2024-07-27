.class final Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/CacheDiskUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DiskCacheHelper"
.end annotation


# static fields
.field static final TIME_INFO_LEN:I = 0xe


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(I[B)[B
    .registers 3

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->newByteArrayWithTime(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600([B)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->isDue([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800([B)[B
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->getDataWithoutDueTime([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static copyOfRange([BII)[B
    .registers 7

    sub-int v0, p2, p1

    if-ltz v0, :cond_0

    new-array v1, v0, [B

    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createDueTime(I)Ljava/lang/String;
    .registers 9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "_$%010d$_"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    int-to-long v6, p0

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDataWithoutDueTime([B)[B
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->hasTimeInfo([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->copyOfRange([BII)[B

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static getDueTime([B)J
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->hasTimeInfo([B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    const/16 v2, 0xc

    invoke-static {p0, v1, v2}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static hasTimeInfo([B)Z
    .registers 7

    const/16 v5, 0x5f

    const/16 v4, 0x24

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    aget-byte v2, p0, v1

    if-ne v2, v5, :cond_0

    aget-byte v2, p0, v0

    if-ne v2, v4, :cond_0

    const/16 v2, 0xc

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_0

    const/16 v2, 0xd

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isDue([B)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->getDueTime([B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newByteArrayWithTime(I[B)[B
    .registers 6

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheHelper;->createDueTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
