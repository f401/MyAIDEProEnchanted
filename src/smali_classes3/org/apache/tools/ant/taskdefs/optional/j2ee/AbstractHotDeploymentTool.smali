.class public abstract Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;
.super Ljava/lang/Object;
.source "AbstractHotDeploymentTool.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/j2ee/HotDeploymentTool;


# instance fields
.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private password:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private task:Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 66
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->task:Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;
    .registers 2

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->task:Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->userName:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract isActionValid()Z
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 139
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->password:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->server:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setTask(Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->task:Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    .line 113
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->userName:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public validateAttributes()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->task:Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->isActionValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_0

    .line 103
    return-void

    .line 101
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The classpath attribute must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Invalid action \"%s\" passed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->task:Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 93
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The \"action\" attribute must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
