.class public Lorg/apache/tools/ant/types/resources/selectors/Compare;
.super Lorg/apache/tools/ant/types/DataType;
.source "Compare.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field private against:Lorg/apache/tools/ant/types/Quantifier;

.field private comp:Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

.field private control:Lorg/apache/tools/ant/types/resources/Union;

.field private when:Lorg/apache/tools/ant/types/Comparison;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 40
    new-instance v0, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->comp:Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    .line 41
    sget-object v0, Lorg/apache/tools/ant/types/Quantifier;->ALL:Lorg/apache/tools/ant/types/Quantifier;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->against:Lorg/apache/tools/ant/types/Quantifier;

    .line 43
    sget-object v0, Lorg/apache/tools/ant/types/Comparison;->EQUAL:Lorg/apache/tools/ant/types/Comparison;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->when:Lorg/apache/tools/ant/types/Comparison;

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;
    .registers 2

    .line 144
    const-class v0, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    return-object v0
.end method

.method private oneControl()Lorg/apache/tools/ant/BuildException;
    .registers 6

    .line 148
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s the <control> element should be specified exactly once."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V
    .registers 3

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->comp:Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->add(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 54
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createControl()Lorg/apache/tools/ant/types/ResourceCollection;
    .registers 2

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->control:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->control:Lorg/apache/tools/ant/types/resources/Union;

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->control:Lorg/apache/tools/ant/types/resources/Union;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 92
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->oneControl()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
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

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->isChecked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    monitor-exit p0

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 135
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->control:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_2

    .line 136
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 138
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->comp:Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->setChecked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 8

    const/4 v0, 0x0

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->isReference()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->getRef()Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;->isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    .line 117
    :goto_0
    return v0

    .line 105
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->control:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v1, :cond_3

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->dieOnCircularReference()V

    .line 110
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->control:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 111
    iget-object v4, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->when:Lorg/apache/tools/ant/types/Comparison;

    iget-object v5, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->comp:Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;

    invoke-virtual {v5, p1, v0}, Lorg/apache/tools/ant/types/resources/comparators/DelegatedResourceComparator;->compare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/types/Comparison;->evaluate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 116
    goto :goto_1

    .line 114
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_2

    .line 117
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->against:Lorg/apache/tools/ant/types/Quantifier;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/types/Quantifier;->evaluate(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 106
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->oneControl()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAgainst(Lorg/apache/tools/ant/types/Quantifier;)V
    .registers 3

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->against:Lorg/apache/tools/ant/types/Quantifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 66
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWhen(Lorg/apache/tools/ant/types/Comparison;)V
    .registers 3

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Compare;->when:Lorg/apache/tools/ant/types/Comparison;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/selectors/Compare;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
