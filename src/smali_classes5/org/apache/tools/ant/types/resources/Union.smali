.class public Lorg/apache/tools/ant/types/resources/Union;
.super Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;
.source "Union.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 74
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 75
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 65
    invoke-static {p1}, Lorg/apache/tools/ant/Project;->getProject(Ljava/lang/Object;)Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/resources/Union;-><init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 66
    return-void
.end method

.method public static getInstance(Lorg/apache/tools/ant/types/ResourceCollection;)Lorg/apache/tools/ant/types/resources/Union;
    .registers 2

    .line 43
    instance-of v0, p0, Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/apache/tools/ant/types/resources/Union;

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/resources/Union;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;)V

    move-object p0, v0

    goto :goto_6
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/Union;
    .registers 2

    .line 143
    const-class v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Union;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Union;

    return-object v0
.end method

.method static synthetic lambda$list$0(I)[Ljava/lang/String;
    .registers 2

    .line 87
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$listResources$1(I)[Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 98
    new-array v0, p0, [Lorg/apache/tools/ant/types/Resource;

    return-object v0
.end method

.method private streamResources()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<+",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-static {}, Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticStaticInterfaceCall0;->m()Ljava/util/function/Function;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/Union;->streamResources(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method private streamResources(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-",
            "Lorg/apache/tools/ant/types/Resource;",
            "+TT;>;)",
            "Ljava/util/stream/Stream",
            "<+TT;>;"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Union;->getResourceCollections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/types/resources/ResourceList$$ExternalSyntheticLambda4;

    .line 153
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    .line 152
    return-object v0
.end method


# virtual methods
.method protected getAllResources()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Union;->streamResources()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda3;

    .line 139
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 138
    return-object v0
.end method

.method protected getAllToStrings()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    sget-object v0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/Union;->streamResources(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda3;

    .line 130
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 129
    return-object v0
.end method

.method protected getCollection()Ljava/util/Collection;
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

    .line 107
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Union;->getAllResources()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getCollection(Z)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Union;->getAllToStrings()Ljava/util/Collection;

    move-result-object v0

    :goto_6
    return-object v0

    .line 121
    :cond_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Union;->getAllResources()Ljava/util/Set;

    move-result-object v0

    goto :goto_6
.end method

.method public list()[Ljava/lang/String;
    .registers 3

    .line 84
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Union;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 85
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Union;->getRef()Lorg/apache/tools/ant/types/resources/Union;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->list()[Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Union;->streamResources()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_e
.end method

.method public listResources()[Lorg/apache/tools/ant/types/Resource;
    .registers 3

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Union;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 96
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Union;->getRef()Lorg/apache/tools/ant/types/resources/Union;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->listResources()[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    .line 98
    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Union;->streamResources()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/types/resources/Union$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/Resource;

    goto :goto_e
.end method
