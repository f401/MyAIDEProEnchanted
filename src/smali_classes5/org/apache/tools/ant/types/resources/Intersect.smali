.class public Lorg/apache/tools/ant/types/resources/Intersect;
.super Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;
.source "Intersect.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer;-><init>()V

    return-void
.end method

.method static synthetic lambda$getCollection$0(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/Set;
    .registers 3

    .line 55
    invoke-interface {p0}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static synthetic lambda$getCollection$1(Ljava/util/Set;Ljava/util/function/Function;Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 59
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method protected getCollection()Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 46
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Intersect;->getResourceCollections()Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 48
    if-ge v1, v4, :cond_26

    .line 49
    if-ne v1, v6, :cond_23

    const-string v0, "collection"

    :goto_10
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "The intersection of %d resource %s is undefined."

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_23
    const-string v0, "collections"

    goto :goto_10

    .line 54
    :cond_26
    sget-object v1, Lorg/apache/tools/ant/types/resources/Intersect$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/types/resources/Intersect$$ExternalSyntheticLambda1;

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 58
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v3, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 59
    new-instance v0, Lorg/apache/tools/ant/types/resources/Intersect$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3, v1}, Lorg/apache/tools/ant/types/resources/Intersect$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;Ljava/util/function/Function;)V

    invoke-interface {v2, v0}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 60
    return-object v3
.end method
