.class public Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;
.source "WebLogicHotDeploymentTool.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/j2ee/HotDeploymentTool;


# static fields
.field private static final STRING_BUFFER_SIZE:I = 0x400

.field private static final VALID_ACTIONS:[Ljava/lang/String;

.field private static final WEBLOGIC_DEPLOY_CLASS_NAME:Ljava/lang/String; = "weblogic.deploy"


# instance fields
.field private application:Ljava/lang/String;

.field private component:Ljava/lang/String;

.field private debug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "delete"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "deploy"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "list"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "undeploy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "update"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->VALID_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildArgsPrefix()Ljava/lang/StringBuffer;
    .registers 6

    .line 162
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v2

    .line 165
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0x400

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 166
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getServer()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-url "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->debug:Z

    if-eqz v0, :cond_1

    const-string v0, "-debug "

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-username "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    return-object v3

    .line 168
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 170
    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 173
    goto :goto_2
.end method

.method protected buildDeployArgs()Ljava/lang/String;
    .registers 4

    .line 185
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->buildArgsPrefix()Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->application:Ljava/lang/String;

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getSource()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->component:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->component:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    return-object v0
.end method

.method protected buildListArgs()Ljava/lang/String;
    .registers 2

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->buildArgsPrefix()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    return-object v0
.end method

.method protected buildUndeployArgs()Ljava/lang/String;
    .registers 3

    .line 203
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->buildArgsPrefix()Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->application:Ljava/lang/String;

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    return-object v0
.end method

.method public deploy()V
    .registers 4

    const/4 v2, 0x1

    .line 64
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Java;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 65
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    .line 66
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Java;->setFailonerror(Z)V

    .line 67
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 69
    const-string v1, "weblogic.deploy"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getArguments()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->execute()V

    .line 72
    return-void
.end method

.method public getArguments()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v1, "deploy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->buildDeployArgs()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 129
    :cond_1
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "undeploy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->buildUndeployArgs()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_3
    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->buildListArgs()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isActionValid()Z
    .registers 7

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 147
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->VALID_ACTIONS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 148
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    const/4 v0, 0x1

    .line 152
    :cond_0
    return v0

    .line 147
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setApplication(Ljava/lang/String;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->application:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setComponent(Ljava/lang/String;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->component:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    .line 223
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->debug:Z

    .line 224
    return-void
.end method

.method public validateAttributes()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/AbstractHotDeploymentTool;->validateAttributes()V

    .line 88
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 96
    const-string v1, "deploy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->application:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 103
    :cond_1
    const-string v1, "deploy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getSource()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 110
    :cond_3
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "undeploy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/WebLogicHotDeploymentTool;->application:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 115
    :cond_5
    return-void

    .line 112
    :cond_6
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "The application attribute must be set if action = %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 105
    :cond_7
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "The source attribute must be set if action = %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 98
    :cond_8
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "The application attribute must be set if action = %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 92
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The password attribute must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
