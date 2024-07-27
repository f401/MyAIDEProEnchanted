.class public Lorg/apache/tools/ant/types/resources/Last;
.super Lorg/apache/tools/ant/types/resources/SizeLimitCollection;
.source "Last.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/SizeLimitCollection;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCollection()Ljava/util/Collection;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 42
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Last;->getValidCount()I

    move-result v1

    .line 43
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Last;->getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v2

    .line 44
    invoke-interface {v2}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v3

    .line 45
    sub-int v0, v3, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 47
    invoke-interface {v2}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    int-to-long v6, v4

    invoke-interface {v0, v6, v7}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 51
    if-eq v5, v1, :cond_0

    if-ge v3, v1, :cond_1

    if-ne v5, v3, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    const-string v6, "Resource collection %s reports size %d but returns %d elements."

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v9

    const/4 v2, 0x2

    add-int v3, v5, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 60
    if-le v5, v1, :cond_2

    .line 61
    invoke-virtual {p0, v2, v9}, Lorg/apache/tools/ant/types/resources/Last;->log(Ljava/lang/String;I)V

    .line 62
    sub-int v1, v5, v1

    invoke-interface {v0, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
