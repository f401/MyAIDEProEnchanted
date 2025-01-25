.class public Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer;
.super Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;
.source "AntAnalyzer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/util/depend/AbstractAnalyzer;-><init>()V

    return-void
.end method

.method static synthetic lambda$determineDependencies$0(Ljava/util/Set;Ljava/lang/String;)Z
    .registers 3

    .line 88
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected determineDependencies(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 54
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 55
    new-instance v6, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer;->getRootClasses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 56
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 59
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer;->isClosureRequired()Z

    move-result v1

    if-eqz v1, :cond_84

    const/16 v2, 0x3e8

    move v1, v0

    .line 60
    :goto_26
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d8

    if-ge v1, v2, :cond_d8

    .line 61
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 62
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_35
    :goto_35
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    const/4 v3, 0x0

    .line 66
    :try_start_45
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer;->getClassContainer(Ljava/lang/String;)Ljava/io/File;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_e8

    move-result-object v3

    .line 70
    :goto_49
    if-eqz v3, :cond_35

    .line 71
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".class"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_87

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_6b} :catch_82

    move-result-object v0

    move-object v3, v0

    .line 77
    :goto_6d
    :try_start_6d
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;-><init>()V

    .line 78
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->read(Ljava/io/InputStream;)V

    .line 79
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->getClassRefs()Ljava/util/Vector;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_b1

    .line 80
    if-eqz v3, :cond_35

    :try_start_7e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_35

    :catch_82
    move-exception v0

    goto :goto_35

    .line 59
    :cond_84
    const/4 v2, 0x1

    move v1, v0

    goto :goto_26

    .line 75
    :cond_87
    new-instance v9, Lorg/apache/tools/zip/ZipFile;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v10, "UTF-8"

    invoke-direct {v9, v3, v10}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const/16 v10, 0x2e

    const/16 v11, 0x2f

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".class"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v9, v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getZipEntryStream(Lorg/apache/tools/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_ae} :catch_82

    move-result-object v0

    move-object v3, v0

    goto :goto_6d

    .line 73
    :catchall_b1
    move-exception v0

    if-eqz v3, :cond_b7

    :try_start_b4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_eb

    :cond_b7
    :goto_b7
    :try_start_b7
    throw v0
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_b8} :catch_82

    .line 86
    :cond_b8
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 88
    invoke-interface {v7}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer$$ExternalSyntheticLambda0;

    invoke-direct {v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 89
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda0;

    invoke-direct {v3, v6}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_26

    .line 93
    :cond_d8
    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 95
    invoke-virtual {p1}, Ljava/util/Vector;->removeAllElements()V

    .line 96
    invoke-virtual {p1, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 97
    invoke-virtual {p2}, Ljava/util/Vector;->removeAllElements()V

    .line 98
    invoke-virtual {p2, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 99
    return-void

    .line 67
    :catch_e8
    move-exception v9

    goto/16 :goto_49

    .line 73
    :catchall_eb
    move-exception v3

    goto :goto_b7
.end method

.method protected supportsFileDependencies()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method
