.class public Lcom/sun/tools/javac/file/FSInfo;
.super Ljava/lang/Object;
.source "FSInfo.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Lcom/sun/tools/javac/file/FSInfo;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/file/FSInfo;
    .registers 2

    .line 32
    const-class v0, Lcom/sun/tools/javac/file/FSInfo;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/FSInfo;

    .line 33
    if-nez v0, :cond_f

    .line 34
    new-instance v0, Lcom/sun/tools/javac/file/FSInfo;

    invoke-direct {v0}, Lcom/sun/tools/javac/file/FSInfo;-><init>()V

    .line 35
    :cond_f
    return-object v0
.end method


# virtual methods
.method public exists(Ljava/io/File;)Z
    .registers 3

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getCanonicalFile(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 47
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 49
    :goto_4
    return-object v0

    .line 48
    :catch_5
    move-exception v0

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    goto :goto_4
.end method

.method public getJarClassPath(Ljava/io/File;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 67
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 69
    :try_start_9
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 70
    if-nez v0, :cond_17

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_54

    move-result-object v0

    .line 91
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    .line 89
    :goto_16
    return-object v0

    .line 73
    :cond_17
    :try_start_17
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    .line 74
    if-nez v0, :cond_25

    .line 75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_54

    move-result-object v0

    .line 91
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    goto :goto_16

    .line 77
    :cond_25
    :try_start_25
    sget-object v1, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v1

    .line 78
    if-nez v1, :cond_35

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_54

    move-result-object v0

    .line 91
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    goto :goto_16

    .line 81
    :cond_35
    :try_start_35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_3f
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 84
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 85
    if-nez v2, :cond_59

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    :goto_50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_35 .. :try_end_53} :catchall_54

    goto :goto_3f

    .line 91
    :catchall_54
    move-exception v0

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    .line 92
    throw v0

    .line 85
    :cond_59
    :try_start_59
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_54

    goto :goto_50

    .line 89
    :cond_5f
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    goto :goto_16
.end method

.method public isDirectory(Ljava/io/File;)Z
    .registers 3

    .line 58
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isFile(Ljava/io/File;)Z
    .registers 3

    .line 62
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method
