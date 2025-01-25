.class public Lcom/s1243808733/util/FindFile;
.super Ljava/lang/Object;
.source "FindFile.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_c

    return-object v0

    .line 14
    :cond_c
    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_31

    aget-object v3, p0, v2

    .line 15
    invoke-interface {p1, v3}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 17
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_1b
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 20
    invoke-static {v3, p1}, Lcom/s1243808733/util/FindFile;->find(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v3

    .line 21
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_31
    return-object v0
.end method
