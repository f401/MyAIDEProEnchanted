.class public Lorg/apache/tools/ant/taskdefs/BZip2;
.super Lorg/apache/tools/ant/taskdefs/Pack;
.source "BZip2.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Pack;-><init>()V

    return-void
.end method


# virtual methods
.method protected pack()V
    .registers 6

    const/4 v2, 0x0

    .line 44
    .line 46
    :try_start_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BZip2;->zipFile:Ljava/io/File;

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 49
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 50
    new-instance v1, Lorg/apache/tools/bzip2/CBZip2OutputStream;

    invoke-direct {v1, v0}, Lorg/apache/tools/bzip2/CBZip2OutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_22} :catch_2d
    .catchall {:try_start_1 .. :try_end_22} :catchall_55

    .line 51
    :try_start_22
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BZip2;->getSrcResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/BZip2;->zipResource(Lorg/apache/tools/ant/types/Resource;Ljava/io/OutputStream;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_53
    .catchall {:try_start_22 .. :try_end_29} :catchall_4e

    .line 56
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 57
    return-void

    .line 52
    :catch_2d
    move-exception v0

    move-object v1, v2

    .line 53
    :goto_2f
    :try_start_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem creating bzip2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BZip2;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v3
    :try_end_4e
    .catchall {:try_start_2f .. :try_end_4e} :catchall_4e

    .line 56
    :catchall_4e
    move-exception v0

    :goto_4f
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 57
    throw v0

    .line 52
    :catch_53
    move-exception v0

    goto :goto_2f

    .line 56
    :catchall_55
    move-exception v0

    move-object v1, v2

    goto :goto_4f
.end method

.method protected supportsNonFileResources()Z
    .registers 3

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/BZip2;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
