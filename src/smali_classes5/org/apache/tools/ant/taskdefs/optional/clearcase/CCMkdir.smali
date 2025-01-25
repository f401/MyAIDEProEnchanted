.class public Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;
.super Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;
.source "CCMkdir.java"


# static fields
.field public static final FLAG_COMMENT:Ljava/lang/String; = "-c"

.field public static final FLAG_COMMENTFILE:Ljava/lang/String; = "-cfile"

.field public static final FLAG_NOCHECKOUT:Ljava/lang/String; = "-nco"

.field public static final FLAG_NOCOMMENT:Ljava/lang/String; = "-nc"


# instance fields
.field private mCfile:Ljava/lang/String;

.field private mComment:Ljava/lang/String;

.field private mNoco:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;-><init>()V

    .line 84
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->mComment:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->mCfile:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->mNoco:Z

    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 128
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 130
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 137
    :goto_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getNoCheckout()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 139
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nco"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 142
    :cond_18
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getViewPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 143
    return-void

    .line 131
    :cond_24
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 133
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V

    goto :goto_9

    .line 135
    :cond_2e
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nc"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 206
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 212
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-c"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 215
    :cond_1a
    return-void
.end method

.method private getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 224
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 230
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-cfile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getCommentFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 233
    :cond_1a
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 98
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getViewPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 102
    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->setViewPath(Ljava/lang/String;)V

    .line 108
    :cond_1a
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getClearToolCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "mkdir"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 113
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_50

    .line 114
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring any errors that occur for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getViewPathBasename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 117
    :cond_50
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 118
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_61

    .line 122
    :cond_60
    return-void

    .line 119
    :cond_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed executing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentFile()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->mCfile:Ljava/lang/String;

    return-object v0
.end method

.method public getNoCheckout()Z
    .registers 2

    .line 196
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->mNoco:Z

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->mComment:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setCommentFile(Ljava/lang/String;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->mCfile:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setNoCheckout(Z)V
    .registers 2

    .line 187
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkdir;->mNoco:Z

    .line 188
    return-void
.end method
