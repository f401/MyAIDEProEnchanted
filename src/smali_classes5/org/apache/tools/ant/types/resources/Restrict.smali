.class public Lorg/apache/tools/ant/types/resources/Restrict;
.super Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;
.source "Restrict.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# instance fields
.field private w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;-><init>()V

    .line 38
    new-instance v0, Lorg/apache/tools/ant/types/resources/Restrict$1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/resources/Restrict$1;-><init>(Lorg/apache/tools/ant/types/resources/Restrict;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/Restrict;
    .registers 2

    .line 160
    const-class v0, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Restrict;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Restrict;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    monitor-enter p0

    .line 53
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->isReference()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1b

    move-result v0

    if-nez v0, :cond_16

    .line 56
    if-nez p1, :cond_b

    .line 57
    monitor-exit p0

    .line 61
    :goto_a
    return-void

    .line 59
    :cond_b
    :try_start_b
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Restrict;->setChecked(Z)V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_1b

    .line 61
    monitor-exit p0

    goto :goto_a

    .line 54
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1b

    .line 52
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V
    .registers 3

    monitor-enter p0

    .line 85
    if-nez p1, :cond_5

    .line 86
    monitor-exit p0

    .line 90
    :goto_4
    return-void

    .line 88
    :cond_5
    :try_start_5
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 89
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->invalidate(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_d

    .line 90
    monitor-exit p0

    goto :goto_4

    .line 84
    :catchall_d
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

    monitor-enter p0

    .line 146
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->isChecked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1d

    move-result v0

    if-eqz v0, :cond_9

    .line 147
    monitor-exit p0

    .line 157
    :goto_8
    return-void

    .line 151
    :cond_9
    :try_start_9
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->isReference()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/Restrict;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Restrict;->setChecked(Z)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    .line 157
    :cond_1b
    monitor-exit p0

    goto :goto_8

    .line 145
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCache()Z
    .registers 2

    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->isCache()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
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

    monitor-enter p0

    .line 124
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 125
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->getRef()Lorg/apache/tools/ant/types/resources/Restrict;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->isFilesystemOnly()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1c

    move-result v0

    monitor-exit p0

    .line 128
    :goto_10
    return v0

    .line 127
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->dieOnCircularReference()V

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->isFilesystemOnly()Z
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1c

    move-result v0

    monitor-exit p0

    goto :goto_10

    .line 123
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final iterator()Ljava/util/Iterator;
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

    monitor-enter p0

    .line 98
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 99
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->getRef()Lorg/apache/tools/ant/types/resources/Restrict;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->iterator()Ljava/util/Iterator;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1c

    move-result-object v0

    monitor-exit p0

    .line 102
    :goto_10
    return-object v0

    .line 101
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->dieOnCircularReference()V

    .line 102
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->iterator()Ljava/util/Iterator;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1c

    move-result-object v0

    monitor-exit p0

    goto :goto_10

    .line 97
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCache(Z)V
    .registers 3

    monitor-enter p0

    .line 68
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->setCache(Z)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .registers 2

    monitor-enter p0

    .line 111
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 112
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->getRef()Lorg/apache/tools/ant/types/resources/Restrict;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->size()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1c

    move-result v0

    monitor-exit p0

    .line 115
    :goto_10
    return v0

    .line 114
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->dieOnCircularReference()V

    .line 115
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->size()I
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1c

    move-result v0

    monitor-exit p0

    goto :goto_10

    .line 110
    :catchall_1c
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
    .registers 2

    monitor-enter p0

    .line 137
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 138
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->getRef()Lorg/apache/tools/ant/types/resources/Restrict;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->toString()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1c

    move-result-object v0

    monitor-exit p0

    .line 141
    :goto_10
    return-object v0

    .line 140
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Restrict;->dieOnCircularReference()V

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Restrict;->w:Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/LazyResourceCollectionWrapper;->toString()Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1c

    move-result-object v0

    monitor-exit p0

    goto :goto_10

    .line 136
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
