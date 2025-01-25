.class public Lorg/apache/tools/ant/types/TarScanner;
.super Lorg/apache/tools/ant/types/ArchiveScanner;
.source "TarScanner.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;-><init>()V

    return-void
.end method


# virtual methods
.method protected fillMapsFromArchive(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;)V"
        }
    .end annotation

    .line 55
    :try_start_0
    new-instance v1, Lorg/apache/tools/tar/TarInputStream;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Lorg/apache/tools/tar/TarInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_4e

    .line 57
    :cond_9
    :goto_9
    :try_start_9
    invoke-virtual {v1}, Lorg/apache/tools/tar/TarInputStream;->getNextEntry()Lorg/apache/tools/tar/TarEntry;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 59
    new-instance v2, Lorg/apache/tools/ant/types/resources/TarResource;

    invoke-direct {v2, p1, v0}, Lorg/apache/tools/ant/types/resources/TarResource;-><init>(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/tar/TarEntry;)V

    .line 60
    invoke-virtual {v0}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v0}, Lorg/apache/tools/tar/TarEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 62
    invoke-static {v3}, Lorg/apache/tools/ant/types/TarScanner;->trimSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-interface {p5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/TarScanner;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 65
    invoke-interface {p6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2e} :catch_2f
    .catchall {:try_start_9 .. :try_end_2e} :catchall_49

    goto :goto_9

    .line 74
    :catch_2f
    move-exception v0

    .line 75
    :try_start_30
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/tools/ant/types/TarScanner;->srcFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_49

    .line 55
    :catchall_49
    move-exception v0

    :try_start_4a
    invoke-virtual {v1}, Lorg/apache/tools/tar/TarInputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_79

    :goto_4d
    :try_start_4d
    throw v0
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 77
    :catch_4e
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/types/TarScanner;->srcFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 68
    :cond_68
    :try_start_68
    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/TarScanner;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 70
    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_74} :catch_2f
    .catchall {:try_start_68 .. :try_end_74} :catchall_49

    goto :goto_9

    .line 76
    :cond_75
    :try_start_75
    invoke-virtual {v1}, Lorg/apache/tools/tar/TarInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_4e

    .line 79
    return-void

    .line 55
    :catchall_79
    move-exception v1

    goto :goto_4d
.end method
