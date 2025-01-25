.class public abstract Lorg/apache/tools/ant/util/ContainerMapper;
.super Ljava/lang/Object;
.source "ContainerMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# instance fields
.field private mappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/util/FileNameMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/ContainerMapper;->mappers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 5

    monitor-enter p0

    .line 66
    if-eq p0, p1, :cond_18

    :try_start_3
    instance-of v1, p1, Lorg/apache/tools/ant/util/ContainerMapper;

    if-eqz v1, :cond_11

    move-object v0, p1

    check-cast v0, Lorg/apache/tools/ant/util/ContainerMapper;

    move-object v1, v0

    .line 68
    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/util/ContainerMapper;->contains(Lorg/apache/tools/ant/util/FileNameMapper;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 72
    :cond_11
    iget-object v1, p0, Lorg/apache/tools/ant/util/ContainerMapper;->mappers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_20

    .line 73
    monitor-exit p0

    return-void

    .line 69
    :cond_18
    :try_start_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Circular mapper containment condition detected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    .line 65
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addConfigured(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 2

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/ContainerMapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 55
    return-void
.end method

.method public addConfiguredMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .registers 3

    .line 41
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/ContainerMapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 42
    return-void
.end method

.method protected contains(Lorg/apache/tools/ant/util/FileNameMapper;)Z
    .registers 6

    const/4 v1, 0x1

    monitor-enter p0

    .line 82
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/util/ContainerMapper;->mappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/FileNameMapper;
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_2b

    .line 83
    if-ne v0, p1, :cond_19

    .line 84
    monitor-exit p0

    move v0, v1

    .line 91
    :goto_18
    return v0

    .line 86
    :cond_19
    :try_start_19
    instance-of v3, v0, Lorg/apache/tools/ant/util/ContainerMapper;

    if-eqz v3, :cond_8

    check-cast v0, Lorg/apache/tools/ant/util/ContainerMapper;

    .line 87
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ContainerMapper;->contains(Lorg/apache/tools/ant/util/FileNameMapper;)Z
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_2b

    move-result v0

    if-eqz v0, :cond_8

    .line 88
    monitor-exit p0

    move v0, v1

    goto :goto_18

    .line 91
    :cond_28
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_18

    .line 81
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMappers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/util/FileNameMapper;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/util/ContainerMapper;->mappers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2

    .line 109
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 2

    .line 118
    return-void
.end method
