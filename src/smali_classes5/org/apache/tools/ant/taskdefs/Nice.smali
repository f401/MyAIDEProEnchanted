.class public Lorg/apache/tools/ant/taskdefs/Nice;
.super Lorg/apache/tools/ant/Task;
.source "Nice.java"


# instance fields
.field private currentPriority:Ljava/lang/String;

.field private newPriority:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

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

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    .line 60
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Nice;->currentPriority:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Nice;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Nice;->currentPriority:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_19
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Nice;->newPriority:Ljava/lang/Integer;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_2c

    .line 67
    :try_start_23
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Nice;->newPriority:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_2c} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_2c} :catch_2d

    .line 76
    :cond_2c
    :goto_2c
    return-void

    .line 72
    :catch_2d
    move-exception v0

    .line 73
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Priority out of range"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 68
    :catch_36
    move-exception v0

    .line 70
    const-string v0, "Unable to set new priority -a security manager is in the way"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Nice;->log(Ljava/lang/String;I)V

    goto :goto_2c
.end method

.method public setCurrentPriority(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Nice;->currentPriority:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setNewPriority(I)V
    .registers 4

    .line 92
    const/4 v0, 0x1

    if-lt p1, v0, :cond_e

    const/16 v0, 0xa

    if-gt p1, v0, :cond_e

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Nice;->newPriority:Ljava/lang/Integer;

    .line 96
    return-void

    .line 93
    :cond_e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The thread priority is out of the range 1-10"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
