.class public Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;
.super Lorg/apache/tools/ant/Task;
.source "PropertyHelperTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;
    }
.end annotation


# instance fields
.field private delegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private propertyHelper:Lorg/apache/tools/ant/PropertyHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method

.method private getAddDelegateList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 139
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->delegates:Ljava/util/List;

    if-nez v0, :cond_c

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->delegates:Ljava/util/List;

    .line 142
    :cond_c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->delegates:Ljava/util/List;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 138
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V
    .registers 3

    monitor-enter p0

    .line 89
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->getAddDelegateList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 90
    monitor-exit p0

    return-void

    .line 88
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addConfigured(Lorg/apache/tools/ant/PropertyHelper;)V
    .registers 4

    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->propertyHelper:Lorg/apache/tools/ant/PropertyHelper;

    if-nez v0, :cond_9

    .line 81
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->propertyHelper:Lorg/apache/tools/ant/PropertyHelper;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_11

    .line 82
    monitor-exit p0

    return-void

    .line 79
    :cond_9
    :try_start_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one PropertyHelper can be installed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    .line 77
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createDelegate()Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;
    .registers 3

    .line 97
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;-><init>(Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$1;)V

    .line 98
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->getAddDelegateList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-object v0
.end method

.method public execute()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v5, 0x4

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->propertyHelper:Lorg/apache/tools/ant/PropertyHelper;

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->delegates:Ljava/util/List;

    if-eqz v0, :cond_55

    .line 115
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->propertyHelper:Lorg/apache/tools/ant/PropertyHelper;

    .line 116
    if-nez v0, :cond_5d

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    move-object v1, v0

    .line 121
    :goto_1c
    monitor-enter v1

    .line 122
    :try_start_1d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->delegates:Ljava/util/List;

    if-eqz v0, :cond_64

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 124
    instance-of v3, v0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;

    if-eqz v3, :cond_61

    .line 125
    check-cast v0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;->access$100(Lorg/apache/tools/ant/taskdefs/PropertyHelperTask$DelegateElement;)Lorg/apache/tools/ant/PropertyHelper$Delegate;

    move-result-object v0

    .line 126
    :goto_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding PropertyHelper delegate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->log(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/PropertyHelper;->add(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V

    goto :goto_25

    .line 130
    :catchall_52
    move-exception v0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_1d .. :try_end_54} :catchall_52

    throw v0

    .line 112
    :cond_55
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Either a new PropertyHelper or one or more PropertyHelper delegates are required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_5d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->propertyHelper:Lorg/apache/tools/ant/PropertyHelper;

    move-object v1, v0

    goto :goto_1c

    .line 125
    :cond_61
    :try_start_61
    check-cast v0, Lorg/apache/tools/ant/PropertyHelper$Delegate;

    goto :goto_39

    .line 130
    :cond_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_52

    .line 131
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->propertyHelper:Lorg/apache/tools/ant/PropertyHelper;

    if-eqz v0, :cond_8a

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Installing PropertyHelper "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->propertyHelper:Lorg/apache/tools/ant/PropertyHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->log(Ljava/lang/String;I)V

    .line 134
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "ant.PropertyHelper"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PropertyHelperTask;->propertyHelper:Lorg/apache/tools/ant/PropertyHelper;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    :cond_8a
    return-void

    .line 109
    :cond_8b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Project instance not set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
