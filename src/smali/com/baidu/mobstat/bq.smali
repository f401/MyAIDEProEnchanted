.class public Lcom/baidu/mobstat/bq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/bq$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/mobstat/bq$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/bq;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/mobstat/bq;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/baidu/mobstat/bq;->a(Ljava/io/File;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v1, 0x2000

    :try_start_2
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    const-string v0, ""

    :goto_2
    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    if-eqz p3, :cond_1

    new-instance v3, Lcom/baidu/mobstat/bc;

    invoke-direct {v3}, Lcom/baidu/mobstat/bc;-><init>()V

    invoke-virtual {v3, v1}, Lcom/baidu/mobstat/bc;->b([B)[B

    move-result-object v1

    move-object v3, v1

    :goto_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v3, v1

    :goto_4
    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    throw v3

    :catchall_1
    move-exception v3

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catchall_2
    move-exception v3

    move-object v0, v1

    move-object v2, v1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v3, v1

    goto :goto_3
.end method

.method public static a(Ljava/io/File;)V
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/baidu/mobstat/bq;->a(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_0

    :try_start_1
    new-instance v0, Lcom/baidu/mobstat/bc;

    invoke-direct {v0}, Lcom/baidu/mobstat/bc;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/bc;->a([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    invoke-static {v1}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    :try_start_2
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private c()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/baidu/mobstat/bq;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, ".cesium"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/mobstat/bq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Lcom/baidu/mobstat/bq$a;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->b:Lcom/baidu/mobstat/bq$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mobstat/bq$a;

    const-string v1, ".cesium"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/mobstat/bq$a;-><init>(Lcom/baidu/mobstat/bq;Ljava/lang/String;Lcom/baidu/mobstat/bq$a;)V

    iput-object v0, p0, Lcom/baidu/mobstat/bq;->b:Lcom/baidu/mobstat/bq$a;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->b:Lcom/baidu/mobstat/bq$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
