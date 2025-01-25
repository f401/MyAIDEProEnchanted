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
    .registers 4

    const-string v0, "isc"

    const-wide/32 v1, 0x7a1200

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/mobstat/am;-><init>(Ljava/lang/String;J)V

    new-instance v0, Lcom/baidu/mobstat/ao$b;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/ao$b;-><init>(Lcom/baidu/mobstat/ao;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    return-void
.end method

.method static synthetic a(Ljava/io/File;Z)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/baidu/mobstat/ao;->b(Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/baidu/mobstat/am$d;Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$e;
    .registers 5

    iget-object p1, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {p1}, Lcom/baidu/mobstat/ao$b;->c()Z

    iget-object p1, p0, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/mobstat/bq$a;

    invoke-virtual {p1}, Lcom/baidu/mobstat/bq$a;->a()V

    iget-object p1, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {p1}, Lcom/baidu/mobstat/ao$b;->b()Lcom/baidu/mobstat/bw$a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/bw$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-static {}, Lcom/baidu/mobstat/am$e;->a()Lcom/baidu/mobstat/am$e;

    move-result-object p1

    return-object p1

    :cond_1b
    iget-object p1, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/ao$b;->a(Lcom/baidu/mobstat/bw$a;)V

    iget-object p1, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/baidu/mobstat/ao$b;->a(J)V

    invoke-static {}, Lcom/baidu/mobstat/am$e;->a()Lcom/baidu/mobstat/am$e;

    move-result-object p1

    return-object p1
.end method

.method private static b(Ljava/io/File;Z)Z
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1f

    if-eqz p1, :cond_f

    :try_start_a
    invoke-virtual {p0, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p0

    return p0

    :cond_f
    invoke-virtual {p0, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    invoke-virtual {p0, v3, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1d

    if-eqz p1, :cond_1c

    if-eqz p0, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    return v2

    :catchall_1d
    move-exception p0

    return v2

    :cond_1f
    if-eqz p1, :cond_24

    const/16 p1, 0x1b4

    goto :goto_26

    :cond_24
    const/16 p1, 0x1b0

    :goto_26
    :try_start_26
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2e

    return v3

    :catchall_2e
    move-exception p0

    return v2
.end method

.method private c()V
    .registers 7

    iget-object v0, p0, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/mobstat/bq$a;

    iget-object v1, p0, Lcom/baidu/mobstat/ao;->a:Lcom/baidu/mobstat/am$a;

    iget-object v1, v1, Lcom/baidu/mobstat/am$a;->b:Lcom/baidu/mobstat/bq;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ao$a;->a(Lcom/baidu/mobstat/bq$a;Lcom/baidu/mobstat/bq;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x2

    :goto_f
    iget-object v1, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    int-to-long v2, v0

    const-wide/16 v4, 0x3

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baidu/mobstat/ao$b;->a(JJ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/am$d;Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$e;
    .registers 6

    iget-object v0, p0, Lcom/baidu/mobstat/ao;->a:Lcom/baidu/mobstat/am$a;

    iget-object v0, v0, Lcom/baidu/mobstat/am$a;->a:Landroid/content/Context;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_19

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v2, :cond_19

    const/16 p1, -0x64

    invoke-static {p1}, Lcom/baidu/mobstat/am$e;->a(I)Lcom/baidu/mobstat/am$e;

    move-result-object p1

    return-object p1

    :cond_19
    iget-object v0, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ao$b;->c()Z

    :try_start_1e
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/ao;->b(Lcom/baidu/mobstat/am$d;Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$e;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_35

    iget-object p2, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {p2}, Lcom/baidu/mobstat/ao$b;->d()Z

    invoke-direct {p0}, Lcom/baidu/mobstat/ao;->c()V

    iget-object p2, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {p2}, Lcom/baidu/mobstat/ao$b;->d()Z

    iget-object p2, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {p2}, Lcom/baidu/mobstat/ao$b;->e()Z

    return-object p1

    :catchall_35
    move-exception p1

    iget-object p2, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {p2}, Lcom/baidu/mobstat/ao$b;->d()Z

    invoke-direct {p0}, Lcom/baidu/mobstat/ao;->c()V

    iget-object p2, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {p2}, Lcom/baidu/mobstat/ao$b;->d()Z

    iget-object p2, p0, Lcom/baidu/mobstat/ao;->e:Lcom/baidu/mobstat/ao$b;

    invoke-virtual {p2}, Lcom/baidu/mobstat/ao$b;->e()Z

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/baidu/mobstat/am$f;)Lcom/baidu/mobstat/am$g;
    .registers 14

    iget-object v0, p0, Lcom/baidu/mobstat/ao;->a:Lcom/baidu/mobstat/am$a;

    iget-object v0, v0, Lcom/baidu/mobstat/am$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_11

    :catch_f
    move-exception v0

    move-object v0, v2

    :goto_11
    const/4 v3, -0x2

    if-nez v0, :cond_19

    invoke-static {v3}, Lcom/baidu/mobstat/am$g;->a(I)Lcom/baidu/mobstat/am$g;

    move-result-object p1

    return-object p1

    :cond_19
    iget-boolean v4, p2, Lcom/baidu/mobstat/am$f;->a:Z

    if-eqz v4, :cond_5d

    new-instance v2, Lcom/baidu/mobstat/ao$c;

    invoke-direct {v2, p0, p1}, Lcom/baidu/mobstat/ao$c;-><init>(Lcom/baidu/mobstat/ao;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/baidu/mobstat/ao$c;->a()Z

    invoke-virtual {v2}, Lcom/baidu/mobstat/ao$c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-virtual {v2}, Lcom/baidu/mobstat/ao$c;->d()Lcom/baidu/mobstat/bw$a;

    move-result-object v4

    iget-wide v5, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v2}, Lcom/baidu/mobstat/ao$c;->e()J

    move-result-wide v7

    const/4 v9, 0x1

    cmp-long v10, v5, v7

    if-nez v10, :cond_40

    const/4 v5, 0x1

    goto :goto_41

    :cond_40
    const/4 v5, 0x0

    :goto_41
    if-eqz v4, :cond_54

    invoke-virtual {v4}, Lcom/baidu/mobstat/bw$a;->d()Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-virtual {v4}, Lcom/baidu/mobstat/bw$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_54

    const/4 v1, 0x1

    :cond_54
    if-eqz v5, :cond_5d

    if-eqz v1, :cond_5d

    invoke-virtual {v2}, Lcom/baidu/mobstat/ao$c;->d()Lcom/baidu/mobstat/bw$a;

    move-result-object p1

    goto :goto_8c

    :cond_5d
    new-instance v1, Lcom/baidu/mobstat/ao$b;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/ao$b;-><init>(Lcom/baidu/mobstat/ao;)V

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/ao$b;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-nez v4, :cond_6d

    invoke-static {v3}, Lcom/baidu/mobstat/am$g;->a(I)Lcom/baidu/mobstat/am$g;

    move-result-object p1

    return-object p1

    :cond_6d
    iget-boolean p2, p2, Lcom/baidu/mobstat/am$f;->a:Z

    if-eqz p2, :cond_88

    if-eqz v2, :cond_88

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/ao$c;->a(Lcom/baidu/mobstat/ao$b;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/mobstat/ao$c;->a(J)Z

    iget-wide v3, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v2, v3, v4}, Lcom/baidu/mobstat/ao$c;->c(J)Z

    invoke-virtual {v2, p1}, Lcom/baidu/mobstat/ao$c;->a(Ljava/lang/String;)Z

    invoke-virtual {v2}, Lcom/baidu/mobstat/ao$c;->b()Z

    :cond_88
    invoke-virtual {v1}, Lcom/baidu/mobstat/ao$b;->b()Lcom/baidu/mobstat/bw$a;

    move-result-object p1

    :goto_8c
    invoke-static {p1}, Lcom/baidu/mobstat/am$g;->a(Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/baidu/mobstat/am$c;)V
    .registers 3

    iget-object p1, p0, Lcom/baidu/mobstat/ao;->b:Lcom/baidu/mobstat/bq$a;

    const-string v0, "isc"

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/bq$a;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bq$a;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/mobstat/bq$a;

    return-void
.end method
