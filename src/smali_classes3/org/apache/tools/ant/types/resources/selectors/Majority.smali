.class public Lorg/apache/tools/ant/types/resources/selectors/Majority;
.super Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;
.source "Majority.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field private tie:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Majority;->tie:Z

    .line 35
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelectorContainer;-><init>([Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Majority;->tie:Z

    .line 43
    return-void
.end method


# virtual methods
.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Majority;->selectorCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 62
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    move v5, v3

    .line 63
    :goto_0
    :try_start_1
    div-int/lit8 v6, v0, 0x2

    .line 65
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Majority;->getResourceSelectors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v4

    move v1, v4

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    .line 66
    invoke-interface {v0, p1}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;->isSelected(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    if-gt v2, v6, :cond_0

    if-eqz v5, :cond_4

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Majority;->tie:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    if-ne v2, v6, :cond_4

    .line 69
    :cond_0
    monitor-exit p0

    move v0, v3

    .line 79
    :goto_2
    return v0

    :cond_1
    move v5, v4

    .line 62
    goto :goto_0

    .line 72
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 73
    if-gt v0, v6, :cond_3

    if-eqz v5, :cond_5

    :try_start_2
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/resources/selectors/Majority;->tie:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_5

    if-ne v0, v6, :cond_5

    .line 74
    :cond_3
    monitor-exit p0

    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    move v1, v0

    .line 77
    goto :goto_1

    .line 79
    :cond_6
    monitor-exit p0

    move v0, v4

    goto :goto_2

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowtie(Z)V
    .registers 3

    monitor-enter p0

    .line 50
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Majority;->tie:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
