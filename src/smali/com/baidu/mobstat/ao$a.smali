.class Lcom/baidu/mobstat/ao$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Lcom/baidu/mobstat/bq$a;Lcom/baidu/mobstat/bq;)Z
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_25

    :goto_7
    const/4 v0, 0x1

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Lcom/baidu/mobstat/bq$a;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mobstat/bq;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {p0}, Lcom/baidu/mobstat/bq$a;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p0}, Lcom/baidu/mobstat/bq$a;->d()Lcom/baidu/mobstat/bq$a;

    move-result-object p0

    goto :goto_7

    :cond_24
    return v0

    :cond_25
    :goto_25
    if-eqz p0, :cond_37

    invoke-virtual {p0}, Lcom/baidu/mobstat/bq$a;->b()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/ao$a;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_32

    return v2

    :cond_32
    invoke-virtual {p0}, Lcom/baidu/mobstat/bq$a;->d()Lcom/baidu/mobstat/bq$a;

    move-result-object p0

    goto :goto_25

    :cond_37
    invoke-virtual {p1}, Lcom/baidu/mobstat/bq;->a()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/ao$a;->a(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/io/File;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1f

    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-nez v1, :cond_1d

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    or-int/2addr v0, v2

    invoke-static {p0, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    :cond_1d
    return v2

    :catchall_1e
    move-exception p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method
