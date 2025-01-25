.class public Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;
.super Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;
.source "CCMkbl.java"


# static fields
.field public static final FLAG_COMMENT:Ljava/lang/String; = "-c"

.field public static final FLAG_COMMENTFILE:Ljava/lang/String; = "-cfile"

.field public static final FLAG_FULL:Ljava/lang/String; = "-full"

.field public static final FLAG_IDENTICAL:Ljava/lang/String; = "-identical"

.field public static final FLAG_INCREMENTAL:Ljava/lang/String; = "-incremental"

.field public static final FLAG_NLABEL:Ljava/lang/String; = "-nlabel"

.field public static final FLAG_NOCOMMENT:Ljava/lang/String; = "-nc"


# instance fields
.field private mBaselineRootName:Ljava/lang/String;

.field private mCfile:Ljava/lang/String;

.field private mComment:Ljava/lang/String;

.field private mFull:Z

.field private mIdentical:Z

.field private mNlabel:Z

.field private mNwarn:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;-><init>()V

    .line 114
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mComment:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mCfile:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mBaselineRootName:Ljava/lang/String;

    .line 117
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mNwarn:Z

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mIdentical:Z

    .line 119
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mFull:Z

    .line 120
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mNlabel:Z

    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 162
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 164
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 172
    :goto_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getIdentical()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 174
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-identical"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 177
    :cond_18
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getFull()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 179
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-full"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 185
    :goto_27
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getNlabel()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 187
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nlabel"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 191
    :cond_36
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getBaselineRootName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 192
    return-void

    .line 165
    :cond_42
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 167
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V

    goto :goto_9

    .line 169
    :cond_4c
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nc"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_9

    .line 182
    :cond_56
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-incremental"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_27
.end method

.method private getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 327
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 333
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-c"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 336
    :cond_1a
    return-void
.end method

.method private getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 345
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 351
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-cfile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getCommentFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 354
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

    .line 131
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 132
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 135
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getViewPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 136
    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->setViewPath(Ljava/lang/String;)V

    .line 142
    :cond_1a
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getClearToolCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "mkbl"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 147
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_50

    .line 148
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring any errors that occur for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getBaselineRootName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 151
    :cond_50
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 152
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_61

    .line 156
    :cond_60
    return-void

    .line 153
    :cond_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed executing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public getBaselineRootName()Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mBaselineRootName:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentFile()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mCfile:Ljava/lang/String;

    return-object v0
.end method

.method public getFull()Z
    .registers 2

    .line 299
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mFull:Z

    return v0
.end method

.method public getIdentical()Z
    .registers 2

    .line 281
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mIdentical:Z

    return v0
.end method

.method public getNlabel()Z
    .registers 2

    .line 317
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mNlabel:Z

    return v0
.end method

.method public getNoWarn()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mNwarn:Z

    return v0
.end method

.method public setBaselineRootName(Ljava/lang/String;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mBaselineRootName:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mComment:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setCommentFile(Ljava/lang/String;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mCfile:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setFull(Z)V
    .registers 2

    .line 290
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mFull:Z

    .line 291
    return-void
.end method

.method public setIdentical(Z)V
    .registers 2

    .line 272
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mIdentical:Z

    .line 273
    return-void
.end method

.method public setNlabel(Z)V
    .registers 2

    .line 308
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mNlabel:Z

    .line 309
    return-void
.end method

.method public setNoWarn(Z)V
    .registers 2

    .line 254
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMkbl;->mNwarn:Z

    .line 255
    return-void
.end method
