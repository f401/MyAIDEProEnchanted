.class public Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSCHECKOUT;
.super Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;
.source "MSVSSCHECKOUT.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildCmdLine()Lorg/apache/tools/ant/types/Commandline;
    .registers 4

    .line 38
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 41
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSCHECKOUT;->getVsspath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 49
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSCHECKOUT;->getSSCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "Checkout"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSCHECKOUT;->getVsspath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSCHECKOUT;->getLocalpath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSCHECKOUT;->getAutoresponse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSCHECKOUT;->getRecursive()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSCHECKOUT;->getVersionDateLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSCHECKOUT;->getLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSCHECKOUT;->getFileTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSCHECKOUT;->getWritableFiles()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSCHECKOUT;->getGetLocalCopy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 71
    return-object v0

    .line 42
    :cond_7f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "vsspath attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSCHECKOUT;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setAutoresponse(Ljava/lang/String;)V
    .registers 2

    .line 131
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->setInternalAutoResponse(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2

    .line 111
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->setInternalDate(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setFileTimeStamp(Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;)V
    .registers 2

    .line 140
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->setInternalFileTimeStamp(Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;)V

    .line 141
    return-void
.end method

.method public setGetLocalCopy(Z)V
    .registers 2

    .line 163
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->setInternalGetLocalCopy(Z)V

    .line 164
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2

    .line 122
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->setInternalLabel(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public setLocalpath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 80
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->setInternalLocalPath(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setRecursive(Z)V
    .registers 2

    .line 89
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->setInternalRecursive(Z)V

    .line 90
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 100
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->setInternalVersion(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public setWritableFiles(Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;)V
    .registers 2

    .line 154
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;->setInternalWritableFiles(Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$WritableFiles;)V

    .line 155
    return-void
.end method
