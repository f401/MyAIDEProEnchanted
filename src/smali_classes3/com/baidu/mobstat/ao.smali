.class public Lcom/baidu/mobstat/ao;
.super Lcom/baidu/mobstat/am;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ao$a;,
        Lcom/baidu/mobstat/ao$b;,
        Lcom/baidu/mobstat/ao$c;
    }
.end annotation


# instance fields
.field d:Lcom/baidu/mobstat/bq$a;

.field private e:Lcom/baidu/mobstat/ao$b;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "isc"

    const-wide/32 v2, 0x7a1200

    invoke-direct {p0, v0, v2, v3}, Lcom/baidu/mobstat/am;-><init>(Ljava/lang/String;J)V

    new-instance v0, Lcom/baidu/mobstat/ao$b;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/ao$b;-><init>(Lcom/baidu/mobstat/ao;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    return-void
.end method

.method static synthetic a(Ljava/io/File;Z)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/baidu/mobstat/ao;->b(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/baidu/mobstat/am$d;Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$e;
    .registers 7

    iget-object v0, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ao$b;->c()Z

    iget-object v0, p0, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/mobstat/bq$a;

    invoke-virtual {v0}, Lcom/baidu/mobstat/bq$a;->a()V

    iget-object v0, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ao$b;->b()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/bw$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/am$e;->a()Lcom/baidu/mobstat/am$e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/ao$b;->a(Lcom/baidu/mobstat/bw$a;)V

    iget-object v0, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/ao$b;->a(J)V

    invoke-static {}, Lcom/baidu/mobstat/am$e;->a()Lcom/baidu/mobstat/am$e;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/io/File;Z)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v2, :cond_2

    if-nez v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const/16 v2, 0x1b4

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v2, 0x1b0

    goto :goto_1
.end method

.method private c()V
    .registers 7

    iget-object v0, p0, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/mobstat/bq$a;

    iget-object v1, p0, Lcom/baidu/mobstat/ao;->a:Lcom/baidu/mobstat/am$a;

    iget-object v1, v1, Lcom/baidu/mobstat/am$a;->b:Lcom/baidu/mobstat/bq;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ao$a;->a(Lcom/baidu/mobstat/bq$a;Lcom/baidu/mobstat/bq;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    int-to-long v2, v0

    const-wide/16 v4, 0x3

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baidu/mobstat/ao$b;->a(JJ)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/am$d;Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$e;
    .registers 6

    const/16 v2, 0x1c

    iget-object v0, p0, Lcom/baidu/mobstat/ao;->a:Lcom/baidu/mobstat/am$a;

    iget-object v0, v0, Lcom/baidu/mobstat/am$a;->a:Landroid/content/Context;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v2, :cond_0

    const/16 v0, -0x64

    invoke-static {v0}, Lcom/baidu/mobstat/am$e;->a(I)Lcom/baidu/mobstat/am$e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ao$b;->c()Z

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/ao;->b(Lcom/baidu/mobstat/am$d;Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {v1}, Lcom/baidu/mobstat/ao$b;->d()Z

    invoke-direct {p0}, Lcom/baidu/mobstat/ao;->c()V

    iget-object v1, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {v1}, Lcom/baidu/mobstat/ao$b;->d()Z

    iget-object v1, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {v1}, Lcom/baidu/mobstat/ao$b;->e()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {v1}, Lcom/baidu/mobstat/ao$b;->d()Z

    invoke-direct {p0}, Lcom/baidu/mobstat/ao;->c()V

    iget-object v1, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {v1}, Lcom/baidu/mobstat/ao$b;->d()Z

    iget-object v1, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {v1}, Lcom/baidu/mobstat/ao$b;->e()Z

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/baidu/mobstat/am$f;)Lcom/baidu/mobstat/am$g;
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v10, -0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/mobstat/ao;->a:Lcom/baidu/mobstat/am$a;

    iget-object v3, v3, Lcom/baidu/mobstat/am$a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v4, v3

    :goto_0
    if-nez v4, :cond_0

    invoke-static {v10}, Lcom/baidu/mobstat/am$g;->a(I)Lcom/baidu/mobstat/am$g;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v3

    move-object v4, v0

    goto :goto_0

    :cond_0
    iget-boolean v3, p2, Lcom/baidu/mobstat/am$f;->a:Z

    if-eqz v3, :cond_3

    new-instance v0, Lcom/baidu/mobstat/ao$c;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mobstat/ao$c;-><init>(Lcom/baidu/mobstat/ao;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/mobstat/ao$c;->a()Z

    invoke-virtual {v0}, Lcom/baidu/mobstat/ao$c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/baidu/mobstat/ao$c;->d()Lcom/baidu/mobstat/bw$a;

    move-result-object v5

    iget-wide v6, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v0}, Lcom/baidu/mobstat/ao$c;->e()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    move v3, v1

    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/baidu/mobstat/bw$a;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_3
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/baidu/mobstat/ao$c;->d()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/am$g;->a(Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$g;

    move-result-object v0

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    new-instance v1, Lcom/baidu/mobstat/ao$b;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/ao$b;-><init>(Lcom/baidu/mobstat/ao;)V

    invoke-virtual {v1, v4}, Lcom/baidu/mobstat/ao$b;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v10}, Lcom/baidu/mobstat/am$g;->a(I)Lcom/baidu/mobstat/am$g;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-boolean v2, p2, Lcom/baidu/mobstat/am$f;->a:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ao$c;->a(Lcom/baidu/mobstat/ao$b;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/ao$c;->a(J)Z

    iget-wide v2, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/ao$c;->c(J)Z

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ao$c;->a(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/baidu/mobstat/ao$c;->b()Z

    :cond_5
    invoke-virtual {v1}, Lcom/baidu/mobstat/ao$b;->b()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/am$g;->a(Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$g;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lcom/baidu/mobstat/am$c;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mobstat/ao;->b:Lcom/baidu/mobstat/bq$a;

    const-string v1, "isc"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bq$a;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bq$a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/mobstat/bq$a;

    return-void
.end method
