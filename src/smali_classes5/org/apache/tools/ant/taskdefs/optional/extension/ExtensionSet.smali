.class public Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;
.super Lorg/apache/tools/ant/types/DataType;
.source "ExtensionSet.java"


# instance fields
.field private final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionsFilesets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensions:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensionsFilesets:Ljava/util/List;

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;
    .registers 2

    .line 145
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;

    return-object v0
.end method


# virtual methods
.method public addExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;)V
    .registers 3

    .line 55
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_10

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void

    .line 56
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 81
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_10

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensionsFilesets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void

    .line 82
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addLibfileset(Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;)V
    .registers 3

    .line 68
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_10

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->setChecked(Z)V

    .line 72
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensionsFilesets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void

    .line 69
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
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

    .line 128
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->isChecked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_2a

    move-result v0

    if-eqz v0, :cond_9

    .line 129
    monitor-exit p0

    .line 142
    :goto_8
    return-void

    .line 131
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 132
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_2a

    .line 142
    :goto_12
    monitor-exit p0

    goto :goto_8

    .line 134
    :cond_14
    :try_start_14
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;

    .line 135
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_2a

    goto :goto_1a

    .line 127
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 137
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensionsFilesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 138
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_33

    .line 140
    :cond_43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->setChecked(Z)V
    :try_end_47
    .catchall {:try_start_2d .. :try_end_47} :catchall_2a

    goto :goto_12
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensionsFilesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 122
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 123
    return-void

    .line 120
    :cond_14
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public toExtensions(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 98
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->getRef()Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->toExtensions(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v0

    .line 103
    :goto_e
    return-object v0

    .line 100
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->dieOnCircularReference()V

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensions:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->toExtensions(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensionsFilesets:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->extractExtensions(Lorg/apache/tools/ant/Project;Ljava/util/List;Ljava/util/List;)V

    .line 103
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtensionSet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->toExtensions(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
