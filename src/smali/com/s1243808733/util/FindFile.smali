.class public Lcom/s1243808733/util/FindFile;
.super Ljava/lang/Object;
.source "FindFile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    .line 21
    :cond_0
    return-object v0

    .line 14
    :cond_1
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 15
    invoke-interface {p1, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 20
    invoke-static {v4, p1}, Lcom/s1243808733/util/FindFile;->find(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v4

    .line 21
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
