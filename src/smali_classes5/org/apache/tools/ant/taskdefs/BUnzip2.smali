.class public Lorg/apache/tools/ant/taskdefs/BUnzip2;
.super Lorg/apache/tools/ant/taskdefs/Unpack;
.source "BUnzip2.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".bz2"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Unpack;-><init>()V

    return-void
.end method


# virtual methods
.method protected extract()V
    .registers 9

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 60
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BUnzip2;->srcResource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v4

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BUnzip2;->dest:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_85

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expanding "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/BUnzip2;->srcResource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/BUnzip2;->dest:Ljava/io/File;

    .line 62
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/BUnzip2;->log(Ljava/lang/String;)V

    .line 69
    :try_start_3a
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BUnzip2;->dest:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_46} :catch_d0
    .catchall {:try_start_3a .. :try_end_46} :catchall_e1

    move-result-object v3

    .line 70
    :try_start_47
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BUnzip2;->srcResource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_d6
    .catchall {:try_start_47 .. :try_end_4c} :catchall_e7

    move-result-object v1

    .line 71
    :try_start_4d
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_52} :catch_db
    .catchall {:try_start_4d .. :try_end_52} :catchall_ec

    .line 72
    :try_start_52
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    .line 73
    const/16 v6, 0x42

    if-ne v5, v6, :cond_c1

    .line 76
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    .line 77
    const/16 v6, 0x5a

    if-ne v5, v6, :cond_86

    .line 80
    new-instance v5, Lorg/apache/tools/bzip2/CBZip2InputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Lorg/apache/tools/bzip2/CBZip2InputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_68} :catch_92
    .catchall {:try_start_52 .. :try_end_68} :catchall_cd

    .line 81
    const/16 v2, 0x2000

    :try_start_6a
    new-array v2, v2, [B

    .line 84
    :cond_6c
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 85
    const/4 v0, 0x0

    array-length v6, v2

    invoke-virtual {v5, v2, v0, v6}, Lorg/apache/tools/bzip2/CBZip2InputStream;->read([BII)I
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_75} :catch_df
    .catchall {:try_start_6a .. :try_end_75} :catchall_b3

    move-result v0

    .line 86
    const/4 v6, -0x1

    if-ne v0, v6, :cond_6c

    .line 91
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 92
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 93
    invoke-static {v3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 94
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 97
    :cond_85
    return-void

    .line 78
    :cond_86
    :try_start_86
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v5, "Invalid bz2 file."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BUnzip2;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_92} :catch_92
    .catchall {:try_start_86 .. :try_end_92} :catchall_cd

    .line 87
    :catch_92
    move-exception v0

    move-object v5, v2

    .line 88
    :goto_94
    :try_start_94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem expanding bzip2 "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    new-instance v6, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BUnzip2;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v7

    invoke-direct {v6, v2, v0, v7}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v6
    :try_end_b3
    .catchall {:try_start_94 .. :try_end_b3} :catchall_b3

    .line 91
    :catchall_b3
    move-exception v0

    :goto_b4
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 92
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 93
    invoke-static {v3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 94
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 95
    throw v0

    .line 74
    :cond_c1
    :try_start_c1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v5, "Invalid bz2 file."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BUnzip2;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_cd} :catch_92
    .catchall {:try_start_c1 .. :try_end_cd} :catchall_cd

    .line 91
    :catchall_cd
    move-exception v0

    move-object v5, v2

    goto :goto_b4

    .line 87
    :catch_d0
    move-exception v0

    move-object v4, v2

    move-object v1, v2

    move-object v3, v2

    move-object v5, v2

    goto :goto_94

    :catch_d6
    move-exception v0

    move-object v4, v2

    move-object v1, v2

    move-object v5, v2

    goto :goto_94

    :catch_db
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    goto :goto_94

    :catch_df
    move-exception v0

    goto :goto_94

    .line 91
    :catchall_e1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    goto :goto_b4

    :catchall_e7
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    move-object v5, v2

    goto :goto_b4

    :catchall_ec
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    goto :goto_b4
.end method

.method protected getDefaultExtension()Ljava/lang/String;
    .registers 2

    .line 53
    const-string v0, ".bz2"

    return-object v0
.end method

.method protected supportsNonFileResources()Z
    .registers 3

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/BUnzip2;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
