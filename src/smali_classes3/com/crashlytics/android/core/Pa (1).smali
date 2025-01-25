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
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_14

    :try_start_a
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    return-object p0

    :catchall_12
    move-exception p0

    goto :goto_16

    :catchall_14
    move-exception p0

    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public j6(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/crashlytics/android/core/Pa;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
