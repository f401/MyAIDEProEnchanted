.class public abstract Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;
.super Lorg/apache/tools/ant/types/DataType;
.source "BaseResourceCollectionContainer.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;
.implements Ljava/lang/Cloneable;


# instance fields
.field private cache:Z

.field private coll:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private rc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cache:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cache:Z

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 58
    return-void
.end method

.method private cacheCollection()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 257
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isCache()Z

    move-result v0

    if-nez v0, :cond_11

    .line 258
    :cond_b
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->getCollection()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;

    .line 260
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 256
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;
    .registers 2

    .line 253
    const-class v0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;

    return-object v0
.end method

.method static synthetic lambda$isFilesystemOnly$0(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 2

    .line 176
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->asOptional(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_30

    move-result v0

    if-nez v0, :cond_2b

    .line 100
    if-nez p1, :cond_b

    .line 101
    monitor-exit p0

    .line 113
    :goto_a
    return-void

    .line 103
    :cond_b
    :try_start_b
    invoke-static {p1}, Lorg/apache/tools/ant/Project;->getProject(Ljava/lang/Object;)Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 104
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_1a

    .line 106
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    .line 109
    :cond_1a
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->invalidate(Ljava/lang/Object;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->setChecked(Z)V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_30

    .line 113
    monitor-exit p0

    goto :goto_a

    .line 98
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_30

    .line 96
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_18

    move-result v0

    if-nez v0, :cond_1b

    .line 125
    :try_start_7
    new-instance v0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_f} :catch_11
    .catchall {:try_start_7 .. :try_end_f} :catchall_18

    .line 128
    monitor-exit p0

    return-void

    .line 126
    :catch_11
    move-exception v0

    .line 127
    :try_start_12
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_18

    .line 120
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_18
.end method

.method public clear()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 81
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z

    move-result v0

    if-nez v0, :cond_18

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->invalidate(Ljava/lang/Object;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->setChecked(Z)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1d

    .line 88
    monitor-exit p0

    return-void

    .line 82
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1d

    .line 80
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .line 226
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    .line 229
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;
    :try_end_12
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_12} :catch_13

    .line 230
    return-object v0

    .line 231
    :catch_13
    move-exception v0

    .line 232
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 6
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

    .line 188
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isChecked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_30

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    monitor-exit p0

    .line 201
    :goto_8
    return-void

    .line 191
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 192
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_30

    .line 201
    :goto_12
    monitor-exit p0

    goto :goto_8

    .line 194
    :cond_14
    :try_start_14
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 195
    instance-of v2, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v2, :cond_1a

    .line 196
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_30

    goto :goto_1a

    .line 187
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    .line 199
    :cond_33
    const/4 v0, 0x1

    :try_start_34
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->setChecked(Z)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_30

    goto :goto_12
.end method

.method protected abstract getCollection()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end method

.method public final getResourceCollections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 208
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->dieOnCircularReference()V

    .line 209
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 207
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCache()Z
    .registers 2

    monitor-enter p0

    .line 73
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cache:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic isEmpty()Z
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$isEmpty(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    return v0
.end method

.method public isFilesystemOnly()Z
    .registers 3

    monitor-enter p0

    .line 165
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 166
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->getRef()Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isFilesystemOnly()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_35

    move-result v0

    monitor-exit p0

    .line 175
    :goto_10
    return v0

    .line 168
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->dieOnCircularReference()V

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->rc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_35

    move-result v0

    if-eqz v0, :cond_25

    .line 171
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_10

    .line 175
    :cond_25
    :try_start_25
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cacheCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda1;

    .line 176
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_35

    move-result v0

    .line 175
    monitor-exit p0

    goto :goto_10

    .line 164
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 139
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 140
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->getRef()Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->iterator()Ljava/util/Iterator;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    move-result-object v0

    monitor-exit p0

    .line 143
    :goto_10
    return-object v0

    .line 142
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->dieOnCircularReference()V

    .line 143
    new-instance v0, Lorg/apache/tools/ant/types/resources/FailFast;

    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cacheCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/resources/FailFast;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_23

    monitor-exit p0

    goto :goto_10

    .line 138
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCache(Z)V
    .registers 3

    monitor-enter p0

    .line 65
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cache:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 66
    monitor-exit p0

    return-void

    .line 64
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .registers 2

    monitor-enter p0

    .line 152
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 153
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->getRef()Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->size()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    move-result v0

    monitor-exit p0

    .line 156
    :goto_10
    return v0

    .line 155
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->dieOnCircularReference()V

    .line 156
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cacheCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1e

    move-result v0

    monitor-exit p0

    goto :goto_10

    .line 151
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 242
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 243
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->getRef()Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->toString()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_39

    move-result-object v0

    monitor-exit p0

    .line 248
    :goto_10
    return-object v0

    .line 245
    :cond_11
    :try_start_11
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->cacheCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_39

    move-result v0

    if-eqz v0, :cond_1f

    .line 246
    monitor-exit p0

    const-string v0, ""

    goto :goto_10

    .line 248
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;->coll:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 249
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_39

    .line 248
    monitor-exit p0

    goto :goto_10

    .line 241
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method
