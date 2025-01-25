.class public Lorg/apache/tools/ant/types/resources/Sort;
.super Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;
.source "Sort.java"


# instance fields
.field private comp:Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Sort;->comp:Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V
    .registers 3

    monitor-enter p0

    .line 59
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Sort;->isReference()Z

    move-result v0

    if-nez v0, :cond_15

    .line 62
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Sort;->comp:Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->add(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V

    .line 63
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->invalidate(Ljava/lang/Object;)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Sort;->setChecked(Z)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1a

    .line 65
    monitor-exit p0

    return-void

    .line 60
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Sort;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1a

    .line 58
    :catchall_1a
    move-exception v0

    monitor-exit p0

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

    .line 77
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Sort;->isChecked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1d

    move-result v0

    if-eqz v0, :cond_9

    .line 78
    monitor-exit p0

    .line 88
    :goto_8
    return-void

    .line 82
    :cond_9
    :try_start_9
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 84
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Sort;->isReference()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Sort;->comp:Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Sort;->setChecked(Z)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    .line 88
    :cond_1b
    monitor-exit p0

    goto :goto_8

    .line 76
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getCollection()Ljava/util/Collection;
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

    monitor-enter p0

    .line 49
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Sort;->getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda0;

    const-class v2, Lorg/apache/tools/ant/types/Resource;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/resources/Archives$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Sort;->comp:Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    .line 50
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 49
    monitor-exit p0

    return-object v0

    .line 48
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
