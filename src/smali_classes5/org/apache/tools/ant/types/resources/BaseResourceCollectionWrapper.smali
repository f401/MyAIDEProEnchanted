.class public abstract Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;
.super Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;
.source "BaseResourceCollectionWrapper.java"


# instance fields
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


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;->coll:Ljava/util/Collection;

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

    .line 52
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;->coll:Ljava/util/Collection;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;->isCache()Z

    move-result v0

    if-nez v0, :cond_11

    .line 53
    :cond_b
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;->getCollection()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;->coll:Ljava/util/Collection;

    .line 55
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;->coll:Ljava/util/Collection;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 51
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected createIterator()Ljava/util/Iterator;
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

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;->cacheCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
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

.method protected getSize()I
    .registers 2

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;->cacheCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
