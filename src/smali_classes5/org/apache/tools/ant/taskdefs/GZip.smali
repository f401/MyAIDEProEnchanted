.class public Lorg/apache/tools/ant/taskdefs/GZip;
.super Lorg/apache/tools/ant/taskdefs/Pack;
.source "GZip.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Pack;-><init>()V

    return-void
.end method


# virtual methods
.method protected pack()V
    .registers 5

    .line 42
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GZip;->zipFile:Ljava/io/File;

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_22

    .line 44
    :try_start_12
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/GZip;->getSrcResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/GZip;->zipResource(Lorg/apache/tools/ant/types/Resource;Ljava/io/OutputStream;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1d

    .line 45
    :try_start_19
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_22

    .line 48
    return-void

    .line 42
    :catchall_1d
    move-exception v0

    :try_start_1e
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_42

    :goto_21
    :try_start_21
    throw v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_22} :catch_22

    .line 45
    :catch_22
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem creating gzip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/GZip;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 42
    :catchall_42
    move-exception v1

    goto :goto_21
.end method

.method protected supportsNonFileResources()Z
    .registers 3

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/GZip;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
