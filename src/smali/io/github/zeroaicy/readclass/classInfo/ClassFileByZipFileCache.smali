.class public Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;
.super Ljava/util/LinkedHashMap;
.source "ClassFileByZipFileCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x64


# instance fields
.field private maxCacheSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 19
    const/high16 v0, 0x3f400000  # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 20
    iput p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;->maxCacheSize:I

    return-void
.end method


# virtual methods
.method public closeAll()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;->values()Ljava/util/Collection;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 55
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    .line 57
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;->clear()V

    return-void

    .line 53
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    .line 55
    invoke-virtual {v1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->close()V

    goto :goto_b
.end method

.method public getClassFileByZipFile(Ljava/lang/String;)Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    if-nez v0, :cond_10

    .line 45
    new-instance v0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    invoke-direct {v0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1, v0}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;->put(Ljava/lang/String;Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;)Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    :cond_10
    return-object v0
.end method

.method public put(Ljava/lang/String;Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;)Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "添加: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZipFileCache"

    invoke-static {v1, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    return-object p1
.end method

.method public bridge put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    invoke-virtual {p0, p1, p2}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;->put(Ljava/lang/String;Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;)Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;

    move-result-object p1

    return-object p1
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 33
    invoke-virtual {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;->size()I

    move-result v0

    iget v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFileCache;->maxCacheSize:I

    if-gt v0, v1, :cond_a

    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    :goto_b
    if-eqz v0, :cond_27

    .line 35
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "删除: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ZipFileCache"

    invoke-static {v1, p1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return v0
.end method
