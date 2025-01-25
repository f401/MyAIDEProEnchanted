.class public Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;
.super Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;
.source "CCMReconfigure.java"


# static fields
.field public static final FLAG_PROJECT:Ljava/lang/String; = "/project"

.field public static final FLAG_RECURSE:Ljava/lang/String; = "/recurse"

.field public static final FLAG_VERBOSE:Ljava/lang/String; = "/verbose"


# instance fields
.field private ccmProject:Ljava/lang/String;

.field private recurse:Z

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/Continuus;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->ccmProject:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->recurse:Z

    .line 49
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->verbose:Z

    .line 54
    const-string v0, "reconfigure"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->setCcmAction(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 88
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->isRecurse()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 89
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "/recurse"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 92
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 93
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "/verbose"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 96
    :cond_1e
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->getCcmProject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 97
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "/project"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->getCcmProject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 101
    :cond_38
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 71
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->getCcmCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->getCcmAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 76
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 77
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 81
    return-void

    .line 78
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed executing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public getCcmProject()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->ccmProject:Ljava/lang/String;

    return-object v0
.end method

.method public isRecurse()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->recurse:Z

    return v0
.end method

.method public isVerbose()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->verbose:Z

    return v0
.end method

.method public setCcmProject(Ljava/lang/String;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->ccmProject:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setRecurse(Z)V
    .registers 2

    .line 133
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->recurse:Z

    .line 134
    return-void
.end method

.method public setVerbose(Z)V
    .registers 2

    .line 149
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMReconfigure;->verbose:Z

    .line 150
    return-void
.end method
