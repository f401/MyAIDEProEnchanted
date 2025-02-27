.class public Lorg/apache/tools/ant/taskdefs/GUnzip;
.super Lorg/apache/tools/ant/taskdefs/Unpack;
.source "GUnzip.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".gz"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Unpack;-><init>()V

    return-void
.end method


# virtual methods
.method protected extract()V
    .registers 7

    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GUnzip;->srcResource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v2

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GUnzip;->dest:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_6a

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expanding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GUnzip;->srcResource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GUnzip;->dest:Ljava/io/File;

    .line 58
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/GUnzip;->log(Ljava/lang/String;)V

    .line 59
    :try_start_39
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GUnzip;->dest:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_45} :catch_77

    move-result-object v1

    .line 60
    :try_start_46
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/GUnzip;->srcResource:Lorg/apache/tools/ant/types/Resource;

    .line 61
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_70

    .line 62
    const/16 v3, 0x2000

    :try_start_53
    new-array v3, v3, [B

    .line 65
    :cond_55
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 66
    const/4 v0, 0x0

    array-length v4, v3

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_5e
    .catchall {:try_start_53 .. :try_end_5e} :catchall_6b

    move-result v0

    .line 67
    const/4 v4, -0x1

    if-ne v0, v4, :cond_55

    .line 68
    :try_start_62
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_70

    if-eqz v1, :cond_6a

    :try_start_67
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_77

    .line 73
    :cond_6a
    return-void

    .line 59
    :catchall_6b
    move-exception v0

    :try_start_6c
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_97

    :goto_6f
    :try_start_6f
    throw v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    :catchall_70
    move-exception v0

    if-eqz v1, :cond_76

    :try_start_73
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_99

    :cond_76
    :goto_76
    :try_start_76
    throw v0
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_77} :catch_77

    .line 68
    :catch_77
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem expanding gzip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/GUnzip;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 59
    :catchall_97
    move-exception v2

    goto :goto_6f

    :catchall_99
    move-exception v1

    goto :goto_76
.end method

.method protected getDefaultExtension()Ljava/lang/String;
    .registers 2

    .line 48
    const-string v0, ".gz"

    return-object v0
.end method

.method protected supportsNonFileResources()Z
    .registers 3

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/GUnzip;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
