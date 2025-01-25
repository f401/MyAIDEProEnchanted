.class public Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;
.super Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;
.source "JonasHotDeploymentTool.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/j2ee/HotDeploymentTool;


# static fields
.field protected static final DEFAULT_ORB:Ljava/lang/String; = "RMI"

.field private static final JONAS_DEPLOY_CLASS_NAME:Ljava/lang/String; = "org.objectweb.jonas.adm.JonasAdmin"

.field private static final VALID_ACTIONS:[Ljava/lang/String;


# instance fields
.field private davidHost:Ljava/lang/String;

.field private davidPort:I

.field private jonasroot:Ljava/io/File;

.field private orb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 56
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

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->VALID_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->orb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 6

    .line 130
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/GenericHotDeploymentTool;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 132
    if-nez v0, :cond_13

    .line 133
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 135
    :cond_13
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->orb:Ljava/lang/String;

    if-eqz v1, :cond_67

    .line 136
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->jonasroot:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->orb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_jonas.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->jonasroot:Ljava/io/File;

    const-string v4, "config/"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 142
    :cond_67
    return-object v0
.end method

.method protected isActionValid()Z
    .registers 7

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 235
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->VALID_ACTIONS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_d
    if-ge v1, v4, :cond_18

    aget-object v5, v3, v1

    .line 236
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 237
    const/4 v0, 0x1

    .line 241
    :cond_18
    return v0

    .line 235
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public setDavidhost(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->davidHost:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setDavidport(I)V
    .registers 2

    .line 96
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->davidPort:I

    .line 97
    return-void
.end method

.method public setJonasroot(Ljava/io/File;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->jonasroot:Ljava/io/File;

    .line 107
    return-void
.end method

.method public setOrb(Ljava/lang/String;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->orb:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public validateAttributes()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getJava()Lorg/apache/tools/ant/taskdefs/Java;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_193

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->isActionValid()Z

    move-result v2

    if-eqz v2, :cond_185

    .line 173
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 174
    const-string v2, "org.objectweb.jonas.adm.JonasAdmin"

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->setClassName(Ljava/lang/String;)V

    .line 177
    :cond_1f
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->jonasroot:Ljava/io/File;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 178
    :cond_29
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-Dinstall.root="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-Djava.security.policy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->jonasroot:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/config/java.policy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 182
    const-string v2, "DAVID"

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->orb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 183
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Dorg.omg.CORBA.ORBClass=org.objectweb.david.libs.binding.orbs.iiop.IIOPORB"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Dorg.omg.CORBA.ORBSingletonClass=org.objectweb.david.libs.binding.orbs.ORBSingletonClass"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Djavax.rmi.CORBA.StubClass=org.objectweb.david.libs.stub_factories.rmi.StubDelegate"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Djavax.rmi.CORBA.PortableRemoteObjectClass=org.objectweb.david.libs.binding.rmi.ORBPortableRemoteObjectDelegate"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Djavax.rmi.CORBA.UtilClass=org.objectweb.david.libs.helpers.RMIUtilDelegate"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Ddavid.CosNaming.default_method=0"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-Ddavid.rmi.ValueHandlerClass=com.sun.corba.se.internal.io.ValueHandlerImpl"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->davidHost:Ljava/lang/String;

    if-eqz v2, :cond_c9

    .line 197
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-Ddavid.CosNaming.default_host="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->davidHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 200
    :cond_c9
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->davidPort:I

    if-eqz v2, :cond_e7

    .line 201
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-Ddavid.CosNaming.default_port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->davidPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 207
    :cond_e7
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getServer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_109

    .line 208
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 211
    :cond_109
    const-string v2, "deploy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_121

    .line 212
    const-string v2, "update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_121

    .line 213
    const-string v2, "redeploy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    .line 214
    :cond_121
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getSource()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 220
    :cond_141
    :goto_141
    return-void

    .line 215
    :cond_142
    const-string v2, "delete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_152

    const-string v2, "undeploy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_173

    .line 216
    :cond_152
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-r "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/JonasHotDeploymentTool;->getTask()Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/j2ee/ServerDeploy;->getSource()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    goto :goto_141

    .line 217
    :cond_173
    const-string v2, "list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_141

    .line 218
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-l"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_141

    .line 170
    :cond_185
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Invalid action \"%s\" passed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 166
    :cond_193
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The \"action\" attribute must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
