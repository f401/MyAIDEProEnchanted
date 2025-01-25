.class public Lorg/apache/tools/ant/types/resources/MappedResourceCollection;
.super Lorg/apache/tools/ant/types/DataType;
.source "MappedResourceCollection.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;
.implements Ljava/lang/Cloneable;


# instance fields
.field private cache:Z

.field private cachedColl:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private enableMultipleMappings:Z

.field private mapper:Lorg/apache/tools/ant/types/Mapper;

.field private nested:Lorg/apache/tools/ant/types/ResourceCollection;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 47
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    .line 49
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->enableMultipleMappings:Z

    .line 50
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cache:Z

    .line 51
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cachedColl:Ljava/util/Collection;

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

    .line 227
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cachedColl:Ljava/util/Collection;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cache:Z

    if-nez v0, :cond_f

    .line 228
    :cond_9
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cachedColl:Ljava/util/Collection;

    .line 230
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cachedColl:Ljava/util/Collection;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 226
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkInitialized()V
    .registers 4

    .line 218
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    if-eqz v0, :cond_8

    .line 223
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->dieOnCircularReference()V

    .line 224
    return-void

    .line 219
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A nested resource collection element is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method private getCollection()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_27

    new-instance v0, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    .line 238
    :goto_9
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->enableMultipleMappings:Z

    if-eqz v1, :cond_2c

    .line 239
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 240
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 247
    :goto_1c
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0

    .line 235
    :cond_27
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    goto :goto_9

    .line 245
    :cond_2c
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/util/FileNameMapper;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_1c
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/MappedResourceCollection;
    .registers 2

    .line 264
    const-class v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;

    return-object v0
.end method

.method static synthetic lambda$getCollection$0(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/MergingMapper;)Lorg/apache/tools/ant/types/resources/MappedResource;
    .registers 3

    .line 243
    new-instance v0, Lorg/apache/tools/ant/types/resources/MappedResource;

    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/types/resources/MappedResource;-><init>(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-object v0
.end method

.method static synthetic lambda$getCollection$1(Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/Resource;)Ljava/util/stream/Stream;
    .registers 4

    .line 240
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda4;

    .line 241
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda3;

    .line 242
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/Resource;)V

    .line 243
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method static synthetic lambda$getCollection$2(Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/MappedResource;
    .registers 3

    .line 245
    new-instance v0, Lorg/apache/tools/ant/types/resources/MappedResource;

    invoke-direct {v0, p1, p0}, Lorg/apache/tools/ant/types/resources/MappedResource;-><init>(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isReference()Z

    move-result v0

    if-nez v0, :cond_25

    .line 62
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    if-nez v0, :cond_16

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->setChecked(Z)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cachedColl:Ljava/util/Collection;

    .line 69
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_22

    .line 70
    monitor-exit p0

    return-void

    .line 63
    :cond_16
    :try_start_16
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 65
    const-string v1, "Only one resource collection can be nested into mappedresources"

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_22

    .line 58
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 60
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 3

    .line 97
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 98
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .line 179
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;

    .line 181
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    .line 182
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    .line 183
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cachedColl:Ljava/util/Collection;
    :try_end_11
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_11} :catch_12

    .line 184
    return-object v0

    .line 185
    :catch_12
    move-exception v0

    .line 186
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isReference()Z

    move-result v0

    if-nez v0, :cond_29

    .line 81
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_1d

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->setChecked(Z)V

    .line 86
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cachedColl:Ljava/util/Collection;

    .line 88
    return-object v0

    .line 82
    :cond_1d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 79
    :cond_29
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 5
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

    .line 200
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isChecked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_2e

    move-result v0

    if-eqz v0, :cond_9

    .line 201
    monitor-exit p0

    .line 215
    :goto_8
    return-void

    .line 203
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isReference()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 204
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_2e

    .line 215
    :goto_12
    monitor-exit p0

    goto :goto_8

    .line 206
    :cond_14
    :try_start_14
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->checkInitialized()V

    .line 207
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_1e

    .line 208
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 210
    :cond_1e
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    instance-of v1, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v1, :cond_29

    .line 211
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 213
    :cond_29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->setChecked(Z)V
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_2e

    goto :goto_12

    .line 199
    :catchall_2e
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
    .registers 2

    .line 129
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 130
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getRef()Lorg/apache/tools/ant/types/resources/MappedResourceCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isFilesystemOnly()Z

    move-result v0

    .line 133
    :goto_e
    return v0

    .line 132
    :cond_f
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->checkInitialized()V

    .line 133
    const/4 v0, 0x0

    goto :goto_e
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

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 154
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getRef()Lorg/apache/tools/ant/types/resources/MappedResourceCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    :goto_e
    return-object v0

    .line 156
    :cond_f
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->checkInitialized()V

    .line 157
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cacheCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_e
.end method

.method public setCache(Z)V
    .registers 2

    .line 121
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cache:Z

    .line 122
    return-void
.end method

.method public setEnableMultipleMappings(Z)V
    .registers 2

    .line 112
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->enableMultipleMappings:Z

    .line 113
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->nested:Lorg/apache/tools/ant/types/ResourceCollection;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_c

    .line 169
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 170
    return-void

    .line 167
    :cond_c
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public size()I
    .registers 2

    .line 141
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 142
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getRef()Lorg/apache/tools/ant/types/resources/MappedResourceCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->size()I

    move-result v0

    .line 145
    :goto_e
    return v0

    .line 144
    :cond_f
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->checkInitialized()V

    .line 145
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->cacheCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

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
    .registers 3

    .line 256
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 257
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->getRef()Lorg/apache/tools/ant/types/resources/MappedResourceCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, ""

    goto :goto_e

    .line 260
    :cond_18
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MappedResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method
