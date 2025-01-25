.class public Lorg/apache/tools/ant/taskdefs/Untar;
.super Lorg/apache/tools/ant/taskdefs/Expand;
.source "Untar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;
    }
.end annotation


# instance fields
.field private compression:Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Expand;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Untar;->compression:Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;

    .line 63
    return-void
.end method

.method private expandStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v9, 0x0

    .line 145
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Untar;->compression:Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 146
    invoke-virtual {v1, p1, v2}, Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;->decompress(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 147
    new-instance v4, Lorg/apache/tools/tar/TarInputStream;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Lorg/apache/tools/tar/TarInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 148
    :try_start_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expanding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Untar;->log(Ljava/lang/String;I)V

    .line 150
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v8

    .line 152
    :goto_37
    invoke-virtual {v4}, Lorg/apache/tools/tar/TarInputStream;->getNextEntry()Lorg/apache/tools/tar/TarEntry;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 153
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v1

    .line 155
    invoke-virtual {v2}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/tools/tar/TarEntry;->getModTime()Ljava/util/Date;

    move-result-object v6

    .line 156
    invoke-virtual {v2}, Lorg/apache/tools/tar/TarEntry;->isDirectory()Z

    move-result v7

    .line 154
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lorg/apache/tools/ant/taskdefs/Untar;->extractFile(Lorg/apache/tools/ant/util/FileUtils;Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Date;ZLorg/apache/tools/ant/util/FileNameMapper;)V

    move v0, v9

    goto :goto_37

    .line 158
    :cond_55
    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getFailOnEmptyArchive()Z

    move-result v0

    if-nez v0, :cond_67

    .line 161
    :cond_5d
    const-string v0, "expand complete"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Untar;->log(Ljava/lang/String;I)V
    :try_end_63
    .catchall {:try_start_16 .. :try_end_63} :catchall_75

    .line 162
    invoke-virtual {v4}, Lorg/apache/tools/tar/TarInputStream;->close()V

    .line 163
    return-void

    .line 159
    :cond_67
    :try_start_67
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "archive \'%s\' is empty"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_75
    .catchall {:try_start_67 .. :try_end_75} :catchall_75

    .line 145
    :catchall_75
    move-exception v0

    :try_start_76
    invoke-virtual {v4}, Lorg/apache/tools/tar/TarInputStream;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    :goto_79
    throw v0

    :catchall_7a
    move-exception v1

    goto :goto_79
.end method


# virtual methods
.method protected expandFile(Lorg/apache/tools/ant/util/FileUtils;Ljava/io/File;Ljava/io/File;)V
    .registers 8

    .line 101
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 107
    :try_start_6
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_25

    move-result-object v1

    .line 108
    :try_start_11
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/tools/ant/taskdefs/Untar;->expandStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1e

    .line 109
    if-eqz v1, :cond_1d

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_25

    .line 113
    :cond_1d
    return-void

    .line 107
    :catchall_1e
    move-exception v0

    if-eqz v1, :cond_24

    :try_start_21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_71

    :cond_24
    :goto_24
    :try_start_24
    throw v0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_25} :catch_25

    .line 109
    :catch_25
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while expanding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 102
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to untar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as the file does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 107
    :catchall_71
    move-exception v1

    goto :goto_24
.end method

.method protected expandResource(Lorg/apache/tools/ant/types/Resource;Ljava/io/File;)V
    .registers 7

    .line 125
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 132
    :try_start_6
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_1e

    move-result-object v1

    .line 133
    :try_start_a
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/tools/ant/taskdefs/Untar;->expandStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_17

    .line 134
    if-eqz v1, :cond_16

    :try_start_13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_1e

    .line 137
    :cond_16
    return-void

    .line 132
    :catchall_17
    move-exception v0

    if-eqz v1, :cond_1d

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_62

    :cond_1d
    :goto_1d
    :try_start_1d
    throw v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1e} :catch_1e

    .line 134
    :catch_1e
    move-exception v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while expanding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 126
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to untar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as the it does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 132
    :catchall_62
    move-exception v1

    goto :goto_1d
.end method

.method public setCompression(Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Untar;->compression:Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;

    .line 80
    return-void
.end method

.method public setScanForUnicodeExtraFields(Z)V
    .registers 5

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " task doesn\'t support the encoding attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method
