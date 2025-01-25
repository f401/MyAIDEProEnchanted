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
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/bq;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/mobstat/bq;->c()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Lcom/baidu/mobstat/bq;->a(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_9
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_52
    .catchall {:try_start_9 .. :try_end_e} :catchall_48

    :try_start_e
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_46
    .catchall {:try_start_e .. :try_end_13} :catchall_44

    const/16 p0, 0x2000

    :try_start_15
    new-array p0, p0, [B

    :goto_17
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_22

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_17

    :cond_22
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    if-eqz p3, :cond_31

    new-instance p3, Lcom/baidu/mobstat/bc;

    invoke-direct {p3}, Lcom/baidu/mobstat/bc;-><init>()V

    invoke-virtual {p3, p0}, Lcom/baidu/mobstat/bc;->b([B)[B

    move-result-object p0

    :cond_31
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_36} :catch_41
    .catchall {:try_start_15 .. :try_end_36} :catchall_3d

    invoke-static {v1}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    return-object p3

    :catchall_3d
    move-exception p0

    move-object p2, p0

    move-object p0, v1

    goto :goto_4b

    :catch_41
    move-exception p0

    move-object p0, v1

    goto :goto_54

    :catchall_44
    move-exception p2

    goto :goto_4b

    :catch_46
    move-exception p2

    goto :goto_54

    :catchall_48
    move-exception p1

    move-object p2, p1

    move-object p1, p0

    :goto_4b
    invoke-static {p0}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    throw p2

    :catch_52
    move-exception p1

    move-object p1, p0

    :goto_54
    invoke-static {p0}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/io/File;)V
    .registers 1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    invoke-static {p0}, Lcom/baidu/mobstat/bq;->a(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_9
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_3a
    .catchall {:try_start_9 .. :try_end_e} :catchall_35

    if-eqz p4, :cond_21

    :try_start_10
    new-instance p0, Lcom/baidu/mobstat/bc;

    invoke-direct {p0}, Lcom/baidu/mobstat/bc;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/bc;->a([B)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_28

    :cond_21
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_28} :catch_32
    .catchall {:try_start_10 .. :try_end_28} :catchall_2d

    :goto_28
    invoke-static {p1}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_2d
    move-exception p0

    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    goto :goto_36

    :catch_32
    move-exception p0

    move-object p0, p1

    goto :goto_3b

    :catchall_35
    move-exception p1

    :goto_36
    invoke-static {p0}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_3a
    move-exception p1

    :goto_3b
    invoke-static {p0}, Lcom/baidu/mobstat/bu;->a(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private c()Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/baidu/mobstat/bq;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, ".cesium"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/mobstat/bq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Lcom/baidu/mobstat/bq$a;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->b:Lcom/baidu/mobstat/bq$a;

    if-nez v0, :cond_f

    new-instance v0, Lcom/baidu/mobstat/bq$a;

    const-string v1, ".cesium"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/mobstat/bq$a;-><init>(Lcom/baidu/mobstat/bq;Ljava/lang/String;Lcom/baidu/mobstat/bq$a;)V

    iput-object v0, p0, Lcom/baidu/mobstat/bq;->b:Lcom/baidu/mobstat/bq$a;

    :cond_f
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->b:Lcom/baidu/mobstat/bq$a;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
