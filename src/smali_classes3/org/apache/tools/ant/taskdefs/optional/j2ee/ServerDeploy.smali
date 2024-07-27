.class public Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;
.super Lorg/apache/tools/ant/Task;
.source "ServerDeploy.java"


# instance fields
.field private action:Ljava/lang/String;

.field private source:Ljava/io/File;

.field private vendorTools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->vendorTools:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addGeneric(Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;)V
    .registers 3

    .line 62
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->setTask(Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;)V

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->vendorTools:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public addJonas(Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;)V
    .registers 3

    .line 84
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->setTask(Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;)V

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->vendorTools:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public addWeblogic(Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;)V
    .registers 3

    .line 73
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->setTask(Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;)V

    .line 74
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->vendorTools:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public execute()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->vendorTools:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/HotDeploymentTool;

    .line 106
    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/HotDeploymentTool;->validateAttributes()V

    .line 107
    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/HotDeploymentTool;->deploy()V

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/io/File;
    .registers 2

    .line 140
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->source:Ljava/io/File;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->action:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setSource(Ljava/io/File;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->source:Ljava/io/File;

    .line 150
    return-void
.end method
