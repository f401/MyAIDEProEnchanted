.class public final Lorg/apache/tools/ant/types/AntFilterReader;
.super Lorg/apache/tools/ant/types/DataType;
.source "AntFilterReader.java"


# instance fields
.field private className:Ljava/lang/String;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/Parameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->parameters:Ljava/util/List;

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/AntFilterReader;
    .registers 2

    .line 178
    const-class v0, Lorg/apache/tools/ant/types/AntFilterReader;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AntFilterReader;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/AntFilterReader;

    return-object v0
.end method


# virtual methods
.method public addParam(Lorg/apache/tools/ant/types/Parameter;)V
    .registers 3

    .line 70
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-nez v0, :cond_c

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void

    .line 71
    :cond_c
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 97
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-nez v0, :cond_20

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_15

    .line 101
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 103
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AntFilterReader;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0

    .line 98
    :cond_20
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

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

    .line 164
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isChecked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    move-result v0

    if-eqz v0, :cond_9

    .line 165
    monitor-exit p0

    .line 175
    :goto_8
    return-void

    .line 167
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 168
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_20

    .line 175
    :goto_12
    monitor-exit p0

    goto :goto_8

    .line 170
    :cond_14
    :try_start_14
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_1b

    .line 171
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/AntFilterReader;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 173
    :cond_1b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AntFilterReader;->setChecked(Z)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_20

    goto :goto_12

    .line 163
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 57
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 58
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->getRef()Lorg/apache/tools/ant/types/AntFilterReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AntFilterReader;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_e
    return-object v0

    .line 60
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->dieOnCircularReference()V

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->className:Ljava/lang/String;

    goto :goto_e
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 112
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 113
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->getRef()Lorg/apache/tools/ant/types/AntFilterReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AntFilterReader;->getClasspath()Lorg/apache/tools/ant/types/Path;

    .line 115
    :cond_d
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->dieOnCircularReference()V

    .line 116
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getParams()[Lorg/apache/tools/ant/types/Parameter;
    .registers 3

    .line 137
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 138
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->getRef()Lorg/apache/tools/ant/types/AntFilterReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AntFilterReader;->getParams()[Lorg/apache/tools/ant/types/Parameter;

    .line 140
    :cond_d
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->dieOnCircularReference()V

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->parameters:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/tools/ant/types/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/Parameter;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 3

    .line 45
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-nez v0, :cond_9

    .line 48
    iput-object p1, p0, Lorg/apache/tools/ant/types/AntFilterReader;->className:Ljava/lang/String;

    .line 49
    return-void

    .line 46
    :cond_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 81
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-nez v0, :cond_15

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_11

    .line 85
    iput-object p1, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 89
    :goto_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AntFilterReader;->setChecked(Z)V

    .line 90
    return-void

    .line 87
    :cond_11
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_c

    .line 82
    :cond_15
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 125
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-nez v0, :cond_e

    .line 128
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 129
    return-void

    .line 126
    :cond_e
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->className:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_14

    .line 159
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 160
    return-void

    .line 157
    :cond_14
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method
