.class public Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSLABEL;
.super Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;
.source "MSVSSLABEL.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;-><init>()V

    return-void
.end method


# virtual methods
.method buildCmdLine()Lorg/apache/tools/ant/types/Commandline;
    .registers 5

    .line 36
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 39
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSLABEL;->getVsspath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 43
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSLABEL;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_64

    .line 52
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSLABEL;->getSSCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "Label"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSLABEL;->getVsspath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSLABEL;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSLABEL;->getAutoresponse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSLABEL;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSLABEL;->getLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 68
    return-object v0

    .line 45
    :cond_64
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "label attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSLABEL;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 40
    :cond_70
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "vsspath attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSLABEL;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setAutoresponse(Ljava/lang/String;)V
    .registers 2

    .line 106
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->setInternalAutoResponse(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 97
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->setInternalComment(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2

    .line 79
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->setInternalLabel(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 88
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->setInternalVersion(Ljava/lang/String;)V

    .line 89
    return-void
.end method
