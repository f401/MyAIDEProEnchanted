.class public Lorg/apache/tools/ant/taskdefs/AugmentReference;
.super Lorg/apache/tools/ant/Task;
.source "AugmentReference.java"

# interfaces
.implements Lorg/apache/tools/ant/TypeAdapter;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method

.method private hijackId()V
    .registers 4

    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AugmentReference;->id:Ljava/lang/String;

    if-nez v0, :cond_37

    .line 64
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AugmentReference;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/AugmentReference;->id:Ljava/lang/String;

    .line 66
    if-eqz v1, :cond_39

    .line 69
    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->removeAttribute(Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "augmented reference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AugmentReference;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setElementTag(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_54

    .line 73
    :cond_37
    monitor-exit p0

    return-void

    .line 67
    :cond_39
    :try_start_39
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AugmentReference;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attribute \'id\' unset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_54
    .catchall {:try_start_39 .. :try_end_54} :catchall_54

    .line 62
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private restoreWrapperId()V
    .registers 4

    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AugmentReference;->id:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoring augment wrapper "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AugmentReference;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/AugmentReference;->log(Ljava/lang/String;I)V

    .line 90
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AugmentReference;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    .line 91
    const-string v1, "id"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AugmentReference;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AugmentReference;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setElementTag(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AugmentReference;->id:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 95
    :cond_31
    monitor-exit p0

    return-void

    .line 87
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public checkProxyClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 37
    return-void
.end method

.method public execute()V
    .registers 1

    .line 80
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AugmentReference;->restoreWrapperId()V

    .line 81
    return-void
.end method

.method public getProxy()Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    .line 43
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AugmentReference;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AugmentReference;->hijackId()V

    .line 47
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AugmentReference;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AugmentReference;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->hasReference(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 48
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AugmentReference;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AugmentReference;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "project reference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AugmentReference;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/AugmentReference;->log(Ljava/lang/String;I)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_5f

    .line 50
    monitor-exit p0

    return-object v0

    .line 52
    :cond_41
    :try_start_41
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown reference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AugmentReference;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_5f

    .line 42
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 44
    :cond_62
    :try_start_62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AugmentReference;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Project owner unset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7d
    .catchall {:try_start_62 .. :try_end_7d} :catchall_5f
.end method

.method public setProxy(Ljava/lang/Object;)V
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
