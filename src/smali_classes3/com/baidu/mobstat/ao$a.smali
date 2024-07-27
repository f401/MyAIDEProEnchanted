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

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/baidu/mobstat/bq$a;->b()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/mobstat/bq;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/baidu/mobstat/bq$a;->b()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p0}, Lcom/baidu/mobstat/bq$a;->d()Lcom/baidu/mobstat/bq$a;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mobstat/bq$a;->d()Lcom/baidu/mobstat/bq$a;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/baidu/mobstat/bq$a;->b()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/ao$a;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/baidu/mobstat/bq;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/ao$a;->a(Ljava/io/File;)Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget v1, v1, Landroid/system/StructStat;->st_mode:I

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    or-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
