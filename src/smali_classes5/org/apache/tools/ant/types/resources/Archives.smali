.class public Lorg/apache/tools/ant/types/resources/Archives;
.super Lorg/apache/tools/ant/types/DataType;
.source "Archives.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;
.implements Ljava/lang/Cloneable;


# instance fields
.field private tars:Lorg/apache/tools/ant/types/resources/Union;

.field private zips:Lorg/apache/tools/ant/types/resources/Union;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 45
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->zips:Lorg/apache/tools/ant/types/resources/Union;

    .line 46
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->tars:Lorg/apache/tools/ant/types/resources/Union;

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/Archives;
    .registers 2

    .line 211
    const-class v0, Lorg/apache/tools/ant/types/resources/Archives;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Archives;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Archives;

    return-object v0
.end method

.method private streamArchives()Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Lorg/apache/tools/ant/types/ArchiveFileSet;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 163
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->zips:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 164
    new-instance v3, Lorg/apache/tools/ant/types/ZipFileSet;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/ZipFileSet;-><init>()V

    invoke-virtual {p0, v3, v0}, Lorg/apache/tools/ant/types/resources/Archives;->configureArchive(Lorg/apache/tools/ant/types/ArchiveFileSet;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/ArchiveFileSet;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 166
    :cond_24
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->tars:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 167
    new-instance v3, Lorg/apache/tools/ant/types/TarFileSet;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/TarFileSet;-><init>()V

    invoke-virtual {p0, v3, v0}, Lorg/apache/tools/ant/types/resources/Archives;->configureArchive(Lorg/apache/tools/ant/types/ArchiveFileSet;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/ArchiveFileSet;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 169
    :cond_43
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .line 138
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Archives;

    .line 139
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Archives;->zips:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/Union;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/Union;

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/Archives;->zips:Lorg/apache/tools/ant/types/resources/Union;

    .line 140
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Archives;->tars:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/Union;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/Union;

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/Archives;->tars:Lorg/apache/tools/ant/types/resources/Union;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 141
    return-object v0

    .line 142
    :catch_1b
    move-exception v0

    .line 143
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected configureArchive(Lorg/apache/tools/ant/types/ArchiveFileSet;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/ArchiveFileSet;
    .registers 4

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 183
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/ArchiveFileSet;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    .line 184
    return-object p1
.end method

.method public createTars()Lorg/apache/tools/ant/types/resources/Union;
    .registers 2

    .line 69
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->isReference()Z

    move-result v0

    if-nez v0, :cond_d

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Archives;->setChecked(Z)V

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->tars:Lorg/apache/tools/ant/types/resources/Union;

    return-object v0

    .line 70
    :cond_d
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public createZips()Lorg/apache/tools/ant/types/resources/Union;
    .registers 2

    .line 55
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->isReference()Z

    move-result v0

    if-nez v0, :cond_d

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Archives;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->zips:Lorg/apache/tools/ant/types/resources/Union;

    return-object v0

    .line 56
    :cond_d
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 198
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->isChecked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_23

    move-result v0

    if-eqz v0, :cond_9

    .line 199
    monitor-exit p0

    .line 208
    :goto_8
    return-void

    .line 201
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->isReference()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 202
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_23

    .line 208
    :goto_12
    monitor-exit p0

    goto :goto_8

    .line 204
    :cond_14
    :try_start_14
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->zips:Lorg/apache/tools/ant/types/resources/Union;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/Archives;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 205
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->tars:Lorg/apache/tools/ant/types/resources/Union;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/Archives;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Archives;->setChecked(Z)V
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_23

    goto :goto_12

    .line 197
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected grabArchives()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/ArchiveFileSet;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Archives;->streamArchives()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic isEmpty()Z
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$isEmpty(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    return v0
.end method

.method public isFilesystemOnly()Z
    .registers 2

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 109
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Archives;->getRef()Lorg/apache/tools/ant/types/resources/Archives;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Archives;->isFilesystemOnly()Z

    move-result v0

    .line 113
    :goto_e
    return v0

    .line 111
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->dieOnCircularReference()V

    .line 113
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 97
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Archives;->getRef()Lorg/apache/tools/ant/types/resources/Archives;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Archives;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    :goto_e
    return-object v0

    .line 99
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->dieOnCircularReference()V

    .line 100
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Archives;->streamArchives()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 101
    const-class v1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda0;

    const-class v2, Lorg/apache/tools/ant/types/Resource;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_e
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 123
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->zips:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->getResourceCollections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Archives;->tars:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->getResourceCollections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 126
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 127
    return-void

    .line 124
    :cond_1c
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public size()I
    .registers 3

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 84
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Archives;->getRef()Lorg/apache/tools/ant/types/resources/Archives;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Archives;->size()I

    move-result v0

    .line 87
    :goto_e
    return v0

    .line 86
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Archives;->dieOnCircularReference()V

    .line 87
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Archives;->streamArchives()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    goto :goto_e
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
