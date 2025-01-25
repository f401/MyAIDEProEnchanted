.class public Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;
.super Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
.source "DelegatedResourceComparator.java"


# instance fields
.field private resourceComparators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    return-void
.end method

.method private static composite(Ljava/util/List;)Ljava/util/Comparator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;>;)",
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    .line 127
    if-eqz p0, :cond_1f

    .line 128
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 129
    if-nez v1, :cond_18

    move-object v1, v0

    .line 131
    goto :goto_8

    .line 133
    :cond_18
    invoke-interface {v1, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    move-object v1, v0

    .line 134
    goto :goto_8

    :cond_1e
    move-object v0, v1

    .line 136
    :cond_1f
    if-nez v0, :cond_25

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple$$ExternalSyntheticStaticInterfaceCall0;->m()Ljava/util/Comparator;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;
    .registers 2

    .line 122
    const-class v0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V
    .registers 3

    monitor-enter p0

    .line 44
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->isReference()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_24

    move-result v0

    if-nez v0, :cond_1f

    .line 47
    if-nez p1, :cond_b

    .line 48
    monitor-exit p0

    .line 53
    :goto_a
    return-void

    .line 50
    :cond_b
    :try_start_b
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :cond_14
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->setChecked(Z)V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_24

    .line 53
    monitor-exit p0

    goto :goto_a

    .line 45
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_24

    .line 43
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 6
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

    .line 104
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 119
    :goto_6
    return-void

    .line 107
    :cond_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 108
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_6

    .line 110
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    .line 112
    instance-of v2, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v2, :cond_21

    .line 113
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_21

    .line 117
    :cond_35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->setChecked(Z)V

    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 63
    if-ne p1, p0, :cond_7

    .line 64
    monitor-exit p0

    .line 73
    :goto_6
    return v0

    .line 66
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->isReference()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 67
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->getRef()Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_31

    move-result v0

    monitor-exit p0

    goto :goto_6

    .line 69
    :cond_17
    :try_start_17
    instance-of v2, p1, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    if-eqz v2, :cond_2e

    .line 70
    check-cast p1, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    iget-object v2, p1, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    .line 71
    iget-object v3, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_31

    if-nez v3, :cond_29

    if-nez v2, :cond_27

    :goto_25
    monitor-exit p0

    goto :goto_6

    :cond_27
    move v0, v1

    goto :goto_25

    :cond_29
    :try_start_29
    invoke-interface {v3, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_31

    move-result v0

    goto :goto_25

    .line 73
    :cond_2e
    monitor-exit p0

    move v0, v1

    goto :goto_6

    .line 62
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .registers 2

    monitor-enter p0

    .line 82
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 83
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->getRef()Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->hashCode()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1d

    move-result v0

    monitor-exit p0

    .line 85
    :goto_10
    return v0

    :cond_11
    :try_start_11
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_1d

    if-nez v0, :cond_18

    const/4 v0, 0x0

    :goto_16
    monitor-exit p0

    goto :goto_10

    :cond_18
    :try_start_18
    invoke-interface {v0}, Ljava/util/List;->hashCode()I
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1d

    move-result v0

    goto :goto_16

    .line 81
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected resourceCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
    .registers 4

    monitor-enter p0

    .line 91
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->resourceComparators:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->composite(Ljava/util/List;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
