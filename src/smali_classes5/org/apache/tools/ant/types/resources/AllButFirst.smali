.class public Lorg/apache/tools/ant/types/resources/AllButFirst;
.super Lorg/apache/tools/ant/types/resources/SizeLimitCollection;
.source "AllButFirst.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/SizeLimitCollection;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCollection()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AllButFirst;->getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AllButFirst;->getValidCount()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v0

    .line 40
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 39
    return-object v0
.end method

.method public size()I
    .registers 3

    monitor-enter p0

    .line 45
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AllButFirst;->getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AllButFirst;->getValidCount()I

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
