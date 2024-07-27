.class public abstract Lcom/tencent/mm/directory/AbstractDirectory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/directory/Directory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;,
        Lcom/tencent/mm/directory/AbstractDirectory$SubPath;
    }
.end annotation


# instance fields
.field protected mDirs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/mm/directory/AbstractDirectory;",
            ">;"
        }
    .end annotation
.end field

.field protected mFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSubPath(Ljava/lang/String;)Lcom/tencent/mm/directory/AbstractDirectory$SubPath;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/directory/PathNotExist;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/mm/directory/AbstractDirectory;->parsePath(Ljava/lang/String;)Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;

    move-result-object v2

    iget-object v0, v2, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->dir:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v1, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;

    const/4 v0, 0x0

    check-cast v0, Lcom/tencent/mm/directory/AbstractDirectory;

    iget-object v2, v2, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->subpath:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2}, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;-><init>(Lcom/tencent/mm/directory/AbstractDirectory;Lcom/tencent/mm/directory/AbstractDirectory;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs()Ljava/util/Map;

    move-result-object v0

    iget-object v1, v2, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->dir:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/mm/directory/PathNotExist;

    invoke-direct {v0, p1}, Lcom/tencent/mm/directory/PathNotExist;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;

    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs()Ljava/util/Map;

    move-result-object v0

    iget-object v3, v2, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->dir:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/directory/AbstractDirectory;

    iget-object v2, v2, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->subpath:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2}, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;-><init>(Lcom/tencent/mm/directory/AbstractDirectory;Lcom/tencent/mm/directory/AbstractDirectory;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private parsePath(Ljava/lang/String;)Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;
    .registers 5

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    new-instance v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, p0, v0, p1}, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;-><init>(Lcom/tencent/mm/directory/AbstractDirectory;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;-><init>(Lcom/tencent/mm/directory/AbstractDirectory;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public containsDir(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/mm/directory/AbstractDirectory;->getSubPath(Ljava/lang/String;)Lcom/tencent/mm/directory/AbstractDirectory$SubPath;
    :try_end_0
    .catch Lcom/tencent/mm/directory/PathNotExist; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->dir:Lcom/tencent/mm/directory/AbstractDirectory;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->dir:Lcom/tencent/mm/directory/AbstractDirectory;

    iget-object v0, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/directory/AbstractDirectory;->containsDir(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs()Ljava/util/Map;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public containsFile(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/mm/directory/AbstractDirectory;->getSubPath(Ljava/lang/String;)Lcom/tencent/mm/directory/AbstractDirectory$SubPath;
    :try_end_0
    .catch Lcom/tencent/mm/directory/PathNotExist; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->dir:Lcom/tencent/mm/directory/AbstractDirectory;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->dir:Lcom/tencent/mm/directory/AbstractDirectory;

    iget-object v0, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/directory/AbstractDirectory;->containsFile(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getFiles()Ljava/util/Set;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public createDir(Ljava/lang/String;)Lcom/tencent/mm/directory/Directory;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/directory/DirectoryException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/mm/directory/AbstractDirectory;->parsePath(Ljava/lang/String;)Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;

    move-result-object v1

    iget-object v0, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->dir:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs()Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->subpath:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/directory/PathAlreadyExists;

    invoke-direct {v0, p1}, Lcom/tencent/mm/directory/PathAlreadyExists;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->subpath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/directory/AbstractDirectory;->createDirLocal(Ljava/lang/String;)Lcom/tencent/mm/directory/AbstractDirectory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs()Ljava/util/Map;

    move-result-object v2

    iget-object v1, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->subpath:Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs()Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->dir:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs()Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->dir:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/directory/AbstractDirectory;

    :goto_1
    iget-object v1, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->subpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/directory/AbstractDirectory;->createDir(Ljava/lang/String;)Lcom/tencent/mm/directory/Directory;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->dir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/directory/AbstractDirectory;->createDirLocal(Ljava/lang/String;)Lcom/tencent/mm/directory/AbstractDirectory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->dir:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected abstract createDirLocal(Ljava/lang/String;)Lcom/tencent/mm/directory/AbstractDirectory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/directory/DirectoryException;
        }
    .end annotation
.end method

.method protected getAbstractDirs()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/mm/directory/AbstractDirectory;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getAbstractDirs(Z)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/mm/directory/AbstractDirectory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/directory/AbstractDirectory;->mDirs:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->loadDirs()V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/directory/AbstractDirectory;->mDirs:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/tencent/mm/directory/AbstractDirectory;->mDirs:Ljava/util/Map;

    invoke-direct {v3, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/directory/AbstractDirectory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs(Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v7, 0x2f

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/directory/AbstractDirectory;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getDir(Ljava/lang/String;)Lcom/tencent/mm/directory/Directory;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/directory/PathNotExist;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/mm/directory/AbstractDirectory;->getSubPath(Ljava/lang/String;)Lcom/tencent/mm/directory/AbstractDirectory$SubPath;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->dir:Lcom/tencent/mm/directory/AbstractDirectory;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->dir:Lcom/tencent/mm/directory/AbstractDirectory;

    iget-object v0, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/directory/AbstractDirectory;->getDir(Ljava/lang/String;)Lcom/tencent/mm/directory/Directory;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/tencent/mm/directory/PathNotExist;

    invoke-direct {v0, p1}, Lcom/tencent/mm/directory/PathNotExist;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs()Ljava/util/Map;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/directory/AbstractDirectory;

    goto :goto_0
.end method

.method public getDirs()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/mm/directory/Directory;",
            ">;^",
            "Ljava/lang/UnsupportedOperationException;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/directory/AbstractDirectory;->getDirs(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDirs(Z)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/mm/directory/Directory;",
            ">;^",
            "Ljava/lang/UnsupportedOperationException;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs(Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getFileInput(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/directory/DirectoryException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/mm/directory/AbstractDirectory;->getSubPath(Ljava/lang/String;)Lcom/tencent/mm/directory/AbstractDirectory$SubPath;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->dir:Lcom/tencent/mm/directory/AbstractDirectory;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->dir:Lcom/tencent/mm/directory/AbstractDirectory;

    iget-object v0, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/directory/AbstractDirectory;->getFileInput(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getFiles()Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/tencent/mm/directory/PathNotExist;

    invoke-direct {v0, p1}, Lcom/tencent/mm/directory/PathNotExist;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/directory/AbstractDirectory;->getFileInputLocal(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getFileInputLocal(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/directory/DirectoryException;
        }
    .end annotation
.end method

.method public getFileOutput(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/directory/DirectoryException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/mm/directory/AbstractDirectory;->parsePath(Ljava/lang/String;)Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;

    move-result-object v1

    iget-object v0, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->dir:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getFiles()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->subpath:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->subpath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/directory/AbstractDirectory;->getFileOutputLocal(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->dir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/directory/AbstractDirectory;->createDir(Ljava/lang/String;)Lcom/tencent/mm/directory/Directory;
    :try_end_0
    .catch Lcom/tencent/mm/directory/PathAlreadyExists; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iget-object v1, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->subpath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/directory/Directory;->getFileOutput(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs()Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/mm/directory/AbstractDirectory$ParsedPath;->dir:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/directory/AbstractDirectory;

    goto :goto_1
.end method

.method protected abstract getFileOutputLocal(Ljava/lang/String;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/directory/DirectoryException;
        }
    .end annotation
.end method

.method public getFiles()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/directory/AbstractDirectory;->getFiles(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFiles(Z)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/directory/AbstractDirectory;->mFiles:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->loadFiles()V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/directory/AbstractDirectory;->mFiles:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lcom/tencent/mm/directory/AbstractDirectory;->mFiles:Ljava/util/Set;

    invoke-direct {v3, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getAbstractDirs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/directory/Directory;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/tencent/mm/directory/Directory;->getFiles(Z)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v7, 0x2f

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected abstract loadDirs()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method protected abstract loadFiles()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public removeFile(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/mm/directory/AbstractDirectory;->getSubPath(Ljava/lang/String;)Lcom/tencent/mm/directory/AbstractDirectory$SubPath;
    :try_end_0
    .catch Lcom/tencent/mm/directory/PathNotExist; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, v1, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->dir:Lcom/tencent/mm/directory/AbstractDirectory;

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->dir:Lcom/tencent/mm/directory/AbstractDirectory;

    iget-object v1, v1, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/directory/AbstractDirectory;->removeFile(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getFiles()Ljava/util/Set;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/directory/AbstractDirectory;->removeFileLocal(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/directory/AbstractDirectory;->getFiles()Ljava/util/Set;

    move-result-object v0

    iget-object v1, v1, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected abstract removeFileLocal(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
