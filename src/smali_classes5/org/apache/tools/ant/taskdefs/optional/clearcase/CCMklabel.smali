.class public Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;
.super Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;
.source "CCMklabel.java"


# static fields
.field public static final FLAG_COMMENT:Ljava/lang/String; = "-c"

.field public static final FLAG_COMMENTFILE:Ljava/lang/String; = "-cfile"

.field public static final FLAG_NOCOMMENT:Ljava/lang/String; = "-nc"

.field public static final FLAG_RECURSE:Ljava/lang/String; = "-recurse"

.field public static final FLAG_REPLACE:Ljava/lang/String; = "-replace"

.field public static final FLAG_VERSION:Ljava/lang/String; = "-version"


# instance fields
.field private mCfile:Ljava/lang/String;

.field private mComment:Ljava/lang/String;

.field private mRecurse:Z

.field private mReplace:Z

.field private mTypeName:Ljava/lang/String;

.field private mVOB:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;-><init>()V

    .line 111
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mReplace:Z

    .line 112
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mRecurse:Z

    .line 113
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mVersion:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mTypeName:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mVOB:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mComment:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mCfile:Ljava/lang/String;

    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getReplace()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 167
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-replace"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 170
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getRecurse()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 172
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-recurse"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 175
    :cond_1e
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 177
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getVersionCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 180
    :cond_27
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 182
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 190
    :goto_30
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 192
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getTypeCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 196
    :cond_39
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getViewPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 197
    return-void

    .line 183
    :cond_45
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 185
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V

    goto :goto_30

    .line 187
    :cond_4f
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nc"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_30
.end method

.method private getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 350
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 356
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-c"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 359
    :cond_1a
    return-void
.end method

.method private getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 368
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 374
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-cfile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getCommentFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 377
    :cond_1a
    return-void
.end method

.method private getTypeCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 387
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 388
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getVOB()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getVOB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    :cond_28
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 394
    :cond_2f
    return-void
.end method

.method private getVersionCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 332
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 338
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-version"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 341
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

    .line 128
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 129
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 137
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getViewPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_20

    .line 138
    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->setViewPath(Ljava/lang/String;)V

    .line 144
    :cond_20
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getClearToolCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "mklabel"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_56

    .line 150
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring any errors that occur for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getViewPathBasename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 153
    :cond_56
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 154
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_67

    .line 158
    :cond_66
    return-void

    .line 155
    :cond_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed executing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 133
    :cond_82
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Required attribute TypeName not specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .line 268
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentFile()Ljava/lang/String;
    .registers 2

    .line 286
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mCfile:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurse()Z
    .registers 2

    .line 232
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mRecurse:Z

    return v0
.end method

.method public getReplace()Z
    .registers 2

    .line 214
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mReplace:Z

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .registers 2

    .line 304
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getVOB()Ljava/lang/String;
    .registers 2

    .line 322
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mVOB:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 250
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mComment:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setCommentFile(Ljava/lang/String;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mCfile:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setRecurse(Z)V
    .registers 2

    .line 223
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mRecurse:Z

    .line 224
    return-void
.end method

.method public setReplace(Z)V
    .registers 2

    .line 205
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mReplace:Z

    .line 206
    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .registers 2

    .line 295
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mTypeName:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setVOB(Ljava/lang/String;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mVOB:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCMklabel;->mVersion:Ljava/lang/String;

    .line 242
    return-void
.end method
