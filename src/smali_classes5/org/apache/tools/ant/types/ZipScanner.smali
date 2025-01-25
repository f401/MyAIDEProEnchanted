.class public Lorg/apache/tools/ant/types/ZipScanner;
.super Lorg/apache/tools/ant/types/ArchiveScanner;
.source "ZipScanner.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;-><init>()V

    return-void
.end method

.method static synthetic lambda$fillMapsFromArchive$0()Lorg/apache/tools/ant/BuildException;
    .registers 2

    .line 60
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only file provider resources are supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected fillMapsFromArchive(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 17
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

    .line 59
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->asOptional(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 63
    :try_start_14
    new-instance v8, Lorg/apache/tools/zip/ZipFile;
    :try_end_16
    .catch Ljava/util/zip/ZipException; {:try_start_14 .. :try_end_16} :catch_69
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_16} :catch_51

    :try_start_16
    invoke-direct {v8, v2, p2}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/util/zip/ZipException; {:try_start_16 .. :try_end_19} :catch_39
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_6d

    .line 64
    :try_start_19
    invoke-virtual {v8}, Lorg/apache/tools/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p5

    move-object/from16 v5, p6

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/ZipScanner;Ljava/io/File;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v9, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_34

    .line 80
    :try_start_30
    invoke-virtual {v8}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_33
    .catch Ljava/util/zip/ZipException; {:try_start_30 .. :try_end_33} :catch_39
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_6d

    .line 84
    return-void

    .line 63
    :catchall_34
    move-exception v0

    :try_start_35
    invoke-virtual {v8}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_6b

    :goto_38
    :try_start_38
    throw v0
    :try_end_39
    .catch Ljava/util/zip/ZipException; {:try_start_38 .. :try_end_39} :catch_39
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_39} :catch_6d

    .line 80
    :catch_39
    move-exception v0

    .line 81
    :goto_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem reading "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 82
    :catch_51
    move-exception v0

    .line 83
    :goto_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem opening "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 80
    :catch_69
    move-exception v0

    goto :goto_3a

    .line 63
    :catchall_6b
    move-exception v1

    goto :goto_38

    .line 82
    :catch_6d
    move-exception v0

    goto :goto_52
.end method

.method public synthetic lambda$fillMapsFromArchive$1$ZipScanner(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lorg/apache/tools/zip/ZipEntry;)V
    .registers 11

    .line 65
    new-instance v0, Lorg/apache/tools/ant/types/resources/ZipResource;

    invoke-direct {v0, p1, p2, p7}, Lorg/apache/tools/ant/types/resources/ZipResource;-><init>(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipEntry;)V

    .line 66
    invoke-virtual {p7}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p7}, Lorg/apache/tools/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 68
    invoke-static {v1}, Lorg/apache/tools/ant/types/ZipScanner;->trimSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/ZipScanner;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 71
    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_1f
    :goto_1f
    return-void

    .line 74
    :cond_20
    invoke-interface {p5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/ZipScanner;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 76
    invoke-interface {p6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f
.end method
