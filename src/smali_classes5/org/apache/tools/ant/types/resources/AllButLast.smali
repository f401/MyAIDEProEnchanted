.class public Lorg/apache/tools/ant/types/resources/AllButLast;
.super Lorg/apache/tools/ant/types/resources/SizeLimitCollection;
.source "AllButLast.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/SizeLimitCollection;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCollection()Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AllButLast;->getValidCount()I

    move-result v0

    .line 42
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AllButLast;->getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v1

    .line 43
    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v2

    if-le v0, v2, :cond_13

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 46
    :goto_12
    return-object v0

    :cond_13
    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v1

    int-to-long v4, v1

    int-to-long v0, v0

    sub-long v0, v4, v0

    invoke-interface {v2, v0, v1}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    .line 47
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_12
.end method

.method public size()I
    .registers 3

    monitor-enter p0

    .line 52
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AllButLast;->getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AllButLast;->getValidCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
