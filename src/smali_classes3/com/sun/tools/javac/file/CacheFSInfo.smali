.class public Lcom/sun/tools/javac/file/CacheFSInfo;
.super Lcom/sun/tools/javac/file/FSInfo;
.source "CacheFSInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/file/CacheFSInfo$Entry;
    }
.end annotation


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lcom/sun/tools/javac/file/CacheFSInfo$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/sun/tools/javac/file/FSInfo;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/file/CacheFSInfo;->cache:Ljava/util/Map;

    return-void
.end method

.method private getEntry(Ljava/io/File;)Lcom/sun/tools/javac/file/CacheFSInfo$Entry;
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/sun/tools/javac/file/CacheFSInfo;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;

    .line 103
    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;-><init>(Lcom/sun/tools/javac/file/CacheFSInfo$1;)V

    .line 105
    invoke-super {p0, p1}, Lcom/sun/tools/javac/file/FSInfo;->getCanonicalFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;->canonicalFile:Ljava/io/File;

    .line 106
    invoke-super {p0, p1}, Lcom/sun/tools/javac/file/FSInfo;->exists(Ljava/io/File;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;->exists:Z

    .line 107
    invoke-super {p0, p1}, Lcom/sun/tools/javac/file/FSInfo;->isDirectory(Ljava/io/File;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;->isDirectory:Z

    .line 108
    invoke-super {p0, p1}, Lcom/sun/tools/javac/file/FSInfo;->isFile(Ljava/io/File;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;->isFile:Z

    .line 109
    iget-object v1, p0, Lcom/sun/tools/javac/file/CacheFSInfo;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    return-object v0
.end method

.method public static preRegister(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 50
    const-class v0, Lcom/sun/tools/javac/file/FSInfo;

    new-instance v1, Lcom/sun/tools/javac/file/CacheFSInfo$1;

    invoke-direct {v1}, Lcom/sun/tools/javac/file/CacheFSInfo$1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Lcom/sun/tools/javac/util/Context$Factory;)V

    .line 57
    return-void
.end method


# virtual methods
.method public clearCache()V
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/sun/tools/javac/file/CacheFSInfo;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 61
    return-void
.end method

.method public exists(Ljava/io/File;)Z
    .registers 3

    .line 71
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/CacheFSInfo;->getEntry(Ljava/io/File;)Lcom/sun/tools/javac/file/CacheFSInfo$Entry;

    move-result-object v0

    .line 72
    iget-boolean v0, v0, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;->exists:Z

    return v0
.end method

.method public getCanonicalFile(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 65
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/CacheFSInfo;->getEntry(Ljava/io/File;)Lcom/sun/tools/javac/file/CacheFSInfo$Entry;

    move-result-object v0

    .line 66
    iget-object v0, v0, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;->canonicalFile:Ljava/io/File;

    return-object v0
.end method

.method public getJarClassPath(Ljava/io/File;)Ljava/util/List;
    .registers 4
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

    .line 92
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/CacheFSInfo;->getEntry(Ljava/io/File;)Lcom/sun/tools/javac/file/CacheFSInfo$Entry;

    move-result-object v0

    .line 93
    iget-object v1, v0, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;->jarClassPath:Ljava/util/List;

    if-nez v1, :cond_0

    .line 94
    invoke-super {p0, p1}, Lcom/sun/tools/javac/file/FSInfo;->getJarClassPath(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;->jarClassPath:Ljava/util/List;

    .line 95
    :cond_0
    iget-object v0, v0, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;->jarClassPath:Ljava/util/List;

    return-object v0
.end method

.method public isDirectory(Ljava/io/File;)Z
    .registers 3

    .line 77
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/CacheFSInfo;->getEntry(Ljava/io/File;)Lcom/sun/tools/javac/file/CacheFSInfo$Entry;

    move-result-object v0

    .line 78
    iget-boolean v0, v0, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;->isDirectory:Z

    return v0
.end method

.method public isFile(Ljava/io/File;)Z
    .registers 3

    .line 83
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/CacheFSInfo;->getEntry(Ljava/io/File;)Lcom/sun/tools/javac/file/CacheFSInfo$Entry;

    move-result-object v0

    .line 84
    iget-boolean v0, v0, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;->isFile:Z

    return v0
.end method
