.class public Lorg/apache/tools/ant/taskdefs/optional/unix/Chown;
.super Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;
.source "Chown.java"


# instance fields
.field private haveOwner:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Chown;->haveOwner:Z

    .line 49
    const-string v0, "chown"

    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;->setExecutable(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected checkConfiguration()V
    .registers 4

    .line 68
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Chown;->haveOwner:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/AbstractAccessTask;->checkConfiguration()V

    .line 73
    return-void

    .line 69
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Required attribute owner not set in chown"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Chown;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setExecutable(Ljava/lang/String;)V
    .registers 5

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Chown;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support the executable attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Chown;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public setOwner(Ljava/lang/String;)V
    .registers 3

    .line 58
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/unix/Chown;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/unix/Chown;->haveOwner:Z

    .line 60
    return-void
.end method
