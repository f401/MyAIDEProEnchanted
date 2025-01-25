.class public Lorg/apache/tools/ant/taskdefs/ConditionTask;
.super Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;
.source "ConditionTask.java"


# instance fields
.field private alternative:Ljava/lang/Object;

.field private property:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 50
    const-string v0, "condition"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    .line 43
    const-string v0, "true"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->value:Ljava/lang/Object;

    .line 44
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->alternative:Ljava/lang/Object;

    .line 51
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->countConditions()I

    move-result v0

    if-gt v0, v2, :cond_b6

    .line 114
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->countConditions()I

    move-result v0

    if-lt v0, v2, :cond_a6

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    if-eqz v0, :cond_9e

    .line 121
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->getConditions()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/condition/Condition;

    .line 122
    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/condition/Condition;->eval()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Condition true; setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->log(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/PropertyHelper;->setNewProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    :goto_52
    return-void

    .line 125
    :cond_53
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->alternative:Ljava/lang/Object;

    if-eqz v0, :cond_87

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Condition false; setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->alternative:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->log(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->alternative:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/PropertyHelper;->setNewProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_52

    .line 129
    :cond_87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Condition false; not setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->log(Ljava/lang/String;I)V

    goto :goto_52

    .line 119
    :cond_9e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The property attribute is required."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_a6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must nest a condition into <%s>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->getTaskName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 110
    :cond_b6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must not nest more than one condition into <%s>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->getTaskName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public setElse(Ljava/lang/Object;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->alternative:Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public setElse(Ljava/lang/String;)V
    .registers 2

    .line 99
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->setElse(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->value:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 79
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->setValue(Ljava/lang/Object;)V

    .line 80
    return-void
.end method
