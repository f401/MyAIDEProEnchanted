.class Lcom/crashlytics/android/core/Pa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/c$a;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    move-object v2, v1

    :goto_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public j6(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/core/Pa;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
