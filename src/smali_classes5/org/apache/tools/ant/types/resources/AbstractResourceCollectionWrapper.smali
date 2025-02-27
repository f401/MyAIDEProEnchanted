.class public abstract Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;
.super Lorg/apache/tools/ant/types/DataType;
.source "AbstractResourceCollectionWrapper.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ONE_NESTED_MESSAGE:Ljava/lang/String; = " expects exactly one nested resource collection."


# instance fields
.field private cache:Z

.field private rc:Lorg/apache/tools/ant/types/ResourceCollection;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->cache:Z

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;
    .registers 2

    .line 204
    const-class v0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;

    return-object v0
.end method

.method private oneNested()Lorg/apache/tools/ant/BuildException;
    .registers 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expects exactly one nested resource collection."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isReference()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_2d

    move-result v0

    if-nez v0, :cond_30

    .line 69
    if-nez p1, :cond_b

    .line 70
    monitor-exit p0

    .line 83
    :goto_a
    return-void

    .line 72
    :cond_b
    :try_start_b
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    if-nez v0, :cond_28

    .line 75
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    .line 76
    invoke-static {p1}, Lorg/apache/tools/ant/Project;->getProject(Ljava/lang/Object;)Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-nez v0, :cond_22

    .line 77
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_22

    .line 79
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    .line 82
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->setChecked(Z)V
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_2d

    .line 83
    monitor-exit p0

    goto :goto_a

    .line 73
    :cond_28
    :try_start_28
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->oneNested()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_2d

    .line 65
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 67
    :cond_30
    :try_start_30
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_2d
.end method

.method protected abstract createIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
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

    .line 161
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isChecked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_24

    move-result v0

    if-eqz v0, :cond_9

    .line 162
    monitor-exit p0

    .line 172
    :goto_8
    return-void

    .line 164
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isReference()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 165
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_24

    .line 172
    :goto_12
    monitor-exit p0

    goto :goto_8

    .line 167
    :cond_14
    :try_start_14
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    instance-of v1, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v1, :cond_1f

    .line 168
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 170
    :cond_1f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->setChecked(Z)V
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_24

    goto :goto_12

    .line 160
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;
    .registers 2

    monitor-enter p0

    .line 180
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->dieOnCircularReference()V

    .line 181
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->rc:Lorg/apache/tools/ant/types/ResourceCollection;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    if-eqz v0, :cond_a

    .line 184
    monitor-exit p0

    return-object v0

    .line 182
    :cond_a
    :try_start_a
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->oneNested()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_f

    .line 179
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getSize()I
.end method

.method public isCache()Z
    .registers 2

    monitor-enter p0

    .line 57
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->cache:Z
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
    .registers 5

    const/4 v1, 0x1

    monitor-enter p0

    .line 134
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isReference()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 135
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->getRef()Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isFilesystemOnly()Z
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_40

    move-result v0

    monitor-exit p0

    .line 149
    :goto_11
    return v0

    .line 137
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->dieOnCircularReference()V

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->rc:Lorg/apache/tools/ant/types/ResourceCollection;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_40

    move-result v0

    if-eqz v0, :cond_22

    .line 140
    :cond_1f
    monitor-exit p0

    move v0, v1

    goto :goto_11

    .line 144
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 145
    const-class v3, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_40

    move-result-object v0

    if-nez v0, :cond_26

    .line 146
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_11

    .line 149
    :cond_3d
    monitor-exit p0

    move v0, v1

    goto :goto_11

    .line 133
    :catchall_40
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

    .line 91
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 92
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->getRef()Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->iterator()Ljava/util/Iterator;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1f

    move-result-object v0

    monitor-exit p0

    .line 95
    :goto_10
    return-object v0

    .line 94
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->dieOnCircularReference()V

    .line 95
    new-instance v0, Lorg/apache/tools/ant/types/resources/FailFast;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->createIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/resources/FailFast;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    goto :goto_10

    .line 90
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCache(Z)V
    .registers 3

    monitor-enter p0

    .line 49
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->cache:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 50
    monitor-exit p0

    return-void

    .line 48
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .registers 2

    monitor-enter p0

    .line 114
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 115
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->getRef()Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->size()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1a

    move-result v0

    monitor-exit p0

    .line 118
    :goto_10
    return v0

    .line 117
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->dieOnCircularReference()V

    .line 118
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->getSize()I
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1a

    move-result v0

    monitor-exit p0

    goto :goto_10

    .line 113
    :catchall_1a
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

    .line 193
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 194
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->getRef()Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->toString()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_33

    move-result-object v0

    monitor-exit p0

    .line 199
    :goto_10
    return-object v0

    .line 196
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->isEmpty()Z
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_33

    move-result v0

    if-eqz v0, :cond_1b

    .line 197
    monitor-exit p0

    const-string v0, ""

    goto :goto_10

    .line 199
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 200
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_33

    .line 199
    monitor-exit p0

    goto :goto_10

    .line 192
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method
