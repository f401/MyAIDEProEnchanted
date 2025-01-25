.class public Lorg/apache/tools/ant/types/resources/MultiRootFileSet;
.super Lorg/apache/tools/ant/types/AbstractFileSet;
.source "MultiRootFileSet.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# instance fields
.field private baseDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private cache:Z

.field private type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

.field private union:Lorg/apache/tools/ant/types/resources/Union;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;-><init>()V

    .line 41
    sget-object v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->file:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->cache:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->baseDirs:Ljava/util/List;

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/MultiRootFileSet;
    .registers 2

    .line 171
    const-class v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;

    return-object v0
.end method

.method private merge()Lorg/apache/tools/ant/types/resources/Union;
    .registers 3

    monitor-enter p0

    .line 175
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->cache:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->union:Lorg/apache/tools/ant/types/resources/Union;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1b

    if-eqz v0, :cond_b

    .line 176
    monitor-exit p0

    .line 183
    :goto_a
    return-object v0

    .line 178
    :cond_b
    :try_start_b
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    .line 179
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->setup(Lorg/apache/tools/ant/types/resources/Union;)V

    .line 180
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->cache:Z

    if-eqz v1, :cond_19

    .line 181
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->union:Lorg/apache/tools/ant/types/resources/Union;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1b

    .line 183
    :cond_19
    monitor-exit p0

    goto :goto_a

    .line 174
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setup(Lorg/apache/tools/ant/types/resources/Union;)V
    .registers 7

    .line 187
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->baseDirs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 188
    new-instance v2, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;

    iget-object v3, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v0, v4}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;-><init>(Lorg/apache/tools/ant/types/resources/MultiRootFileSet;Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;Ljava/io/File;Lorg/apache/tools/ant/types/resources/MultiRootFileSet$1;)V

    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    goto :goto_6

    .line 190
    :cond_1e
    return-void
.end method


# virtual methods
.method public addConfiguredBaseDir(Lorg/apache/tools/ant/types/resources/FileResource;)V
    .registers 4

    .line 94
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_10

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->baseDirs:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void

    .line 95
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 116
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->getRef()Lorg/apache/tools/ant/types/resources/MultiRootFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 121
    :goto_e
    return-object v0

    .line 118
    :cond_f
    invoke-super {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->baseDirs:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->baseDirs:Ljava/util/List;

    .line 120
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->union:Lorg/apache/tools/ant/types/resources/Union;

    goto :goto_e
.end method

.method public synthetic isEmpty()Z
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$isEmpty(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    return v0
.end method

.method public isFilesystemOnly()Z
    .registers 2

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 131
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->getRef()Lorg/apache/tools/ant/types/resources/MultiRootFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->merge()Lorg/apache/tools/ant/types/resources/Union;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_e
.end method

.method public setBaseDirs(Ljava/lang/String;)V
    .registers 8

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 82
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 83
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_2f

    aget-object v3, v1, v0

    .line 84
    iget-object v4, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->baseDirs:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 80
    :cond_2a
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 87
    :cond_2f
    return-void
.end method

.method public setCache(Z)V
    .registers 3

    monitor-enter p0

    .line 68
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_b

    .line 71
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->cache:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    .line 72
    monitor-exit p0

    return-void

    .line 69
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_10

    .line 67
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDir(Ljava/io/File;)V
    .registers 4

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support the dir attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 102
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->baseDirs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 105
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 106
    return-void

    .line 103
    :cond_c
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setType(Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;)V
    .registers 3

    .line 57
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_9

    .line 60
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    .line 61
    return-void

    .line 58
    :cond_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public size()I
    .registers 2

    .line 142
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 143
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->getRef()Lorg/apache/tools/ant/types/resources/MultiRootFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->size()I

    move-result v0

    .line 145
    :goto_e
    return v0

    :cond_f
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->merge()Lorg/apache/tools/ant/types/resources/Union;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->size()I

    move-result v0

    goto :goto_e
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 165
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->getRef()Lorg/apache/tools/ant/types/resources/MultiRootFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet;->merge()Lorg/apache/tools/ant/types/resources/Union;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
