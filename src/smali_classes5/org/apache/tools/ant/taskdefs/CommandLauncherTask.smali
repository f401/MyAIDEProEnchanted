.class public Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;
.super Lorg/apache/tools/ant/Task;
.source "CommandLauncherTask.java"


# instance fields
.field private commandLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

.field private vmLauncher:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V
    .registers 4

    monitor-enter p0

    .line 35
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->commandLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    if-nez v0, :cond_9

    .line 38
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->commandLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_11

    .line 39
    monitor-exit p0

    return-void

    .line 36
    :cond_9
    :try_start_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one CommandLauncher can be installed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    .line 34
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute()V
    .registers 3

    .line 43
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->commandLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    if-eqz v0, :cond_11

    .line 44
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->vmLauncher:Z

    if-eqz v0, :cond_12

    .line 45
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->commandLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->setVMLauncher(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    .line 50
    :cond_11
    :goto_11
    return-void

    .line 47
    :cond_12
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->commandLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->setShellLauncher(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    goto :goto_11
.end method

.method public setVmLauncher(Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/CommandLauncherTask;->vmLauncher:Z

    .line 54
    return-void
.end method
