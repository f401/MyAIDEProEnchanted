.class Lorg/apache/tools/ant/taskdefs/email/UUMailer;
.super Lorg/apache/tools/ant/taskdefs/email/PlainMailer;
.source "UUMailer.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;-><init>()V

    return-void
.end method


# virtual methods
.method protected attach(Ljava/io/File;Ljava/io/PrintStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 45
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array v2, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    :try_start_1c
    new-instance v0, Lorg/apache/tools/ant/util/UUEncoder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/util/UUEncoder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lorg/apache/tools/ant/util/UUEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2c

    .line 48
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 49
    return-void

    .line 45
    :catchall_2c
    move-exception v0

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_42

    :goto_30
    throw v0

    .line 40
    :cond_31
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File \"%s\" does not exist or is not readable."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 45
    :catchall_42
    move-exception v1

    goto :goto_30
.end method
