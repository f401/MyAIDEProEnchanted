.class public Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;
.super Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;
.source "CCCheckout.java"


# static fields
.field public static final FLAG_BRANCH:Ljava/lang/String; = "-branch"

.field public static final FLAG_COMMENT:Ljava/lang/String; = "-c"

.field public static final FLAG_COMMENTFILE:Ljava/lang/String; = "-cfile"

.field public static final FLAG_NOCOMMENT:Ljava/lang/String; = "-nc"

.field public static final FLAG_NODATA:Ljava/lang/String; = "-ndata"

.field public static final FLAG_NOWARN:Ljava/lang/String; = "-nwarn"

.field public static final FLAG_OUT:Ljava/lang/String; = "-out"

.field public static final FLAG_RESERVED:Ljava/lang/String; = "-reserved"

.field public static final FLAG_UNRESERVED:Ljava/lang/String; = "-unreserved"

.field public static final FLAG_VERSION:Ljava/lang/String; = "-version"


# instance fields
.field private mBranch:Ljava/lang/String;

.field private mCfile:Ljava/lang/String;

.field private mComment:Ljava/lang/String;

.field private mNdata:Z

.field private mNotco:Z

.field private mNwarn:Z

.field private mOut:Ljava/lang/String;

.field private mReserved:Z

.field private mVersion:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;-><init>()V

    .line 148
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mReserved:Z

    .line 149
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mOut:Ljava/lang/String;

    .line 150
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mNdata:Z

    .line 151
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mBranch:Ljava/lang/String;

    .line 152
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mVersion:Z

    .line 153
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mNwarn:Z

    .line 154
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mComment:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mCfile:Ljava/lang/String;

    .line 156
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mNotco:Z

    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 230
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getReserved()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 232
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-reserved"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 238
    :goto_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getOut()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 240
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getOutCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 246
    :cond_18
    :goto_18
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getBranch()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 248
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getBranchCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 254
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getNoWarn()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 256
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nwarn"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 259
    :cond_30
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 261
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 270
    :goto_39
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getViewPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 271
    return-void

    .line 235
    :cond_45
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-unreserved"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_f

    .line 241
    :cond_4f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getNoData()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 243
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-ndata"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_18

    .line 249
    :cond_5f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getVersion()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 251
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-version"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_21

    .line 262
    :cond_6f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 264
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V

    goto :goto_39

    .line 266
    :cond_79
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nc"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_39
.end method

.method private getBranchCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 463
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getBranch()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 469
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-branch"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getBranch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 472
    :cond_1a
    return-void
.end method

.method private getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 481
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 487
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-c"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 490
    :cond_1a
    return-void
.end method

.method private getCommentFileCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 499
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getCommentFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 505
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-cfile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getCommentFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 508
    :cond_1a
    return-void
.end method

.method private getOutCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 445
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getOut()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 451
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-out"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getOut()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 454
    :cond_1a
    return-void
.end method

.method private lsCheckout()Z
    .registers 4

    .line 207
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 212
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getClearToolCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "lsco"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-cview"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-short"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-d"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getViewPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getFailOnErr()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->runS(Lorg/apache/tools/ant/types/Commandline;Z)Ljava/lang/String;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    const/4 v0, 0x1

    :goto_4c
    return v0

    :cond_4d
    const/4 v0, 0x0

    goto :goto_4c
.end method


# virtual methods
.method public execute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x3

    .line 167
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 168
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 171
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getViewPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 172
    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->setViewPath(Ljava/lang/String;)V

    .line 178
    :cond_1b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getClearToolCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "checkout"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 187
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getNotco()Z

    move-result v1

    if-nez v1, :cond_57

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->lsCheckout()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 188
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already checked out in this view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getViewPathBasename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {v0, v1, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 201
    :cond_56
    return-void

    .line 192
    :cond_57
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_79

    .line 193
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring any errors that occur for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getViewPathBasename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {v1, v2, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 196
    :cond_79
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 197
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getFailOnErr()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed executing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public getBranch()Ljava/lang/String;
    .registers 2

    .line 363
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mBranch:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .line 417
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentFile()Ljava/lang/String;
    .registers 2

    .line 435
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mCfile:Ljava/lang/String;

    return-object v0
.end method

.method public getNoData()Z
    .registers 2

    .line 345
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mNdata:Z

    return v0
.end method

.method public getNoWarn()Z
    .registers 2

    .line 399
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mNwarn:Z

    return v0
.end method

.method public getNotco()Z
    .registers 2

    .line 308
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mNotco:Z

    return v0
.end method

.method public getOut()Ljava/lang/String;
    .registers 2

    .line 326
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mOut:Ljava/lang/String;

    return-object v0
.end method

.method public getReserved()Z
    .registers 2

    .line 288
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mReserved:Z

    return v0
.end method

.method public getVersion()Z
    .registers 2

    .line 381
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mVersion:Z

    return v0
.end method

.method public setBranch(Ljava/lang/String;)V
    .registers 2

    .line 354
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mBranch:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mComment:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setCommentFile(Ljava/lang/String;)V
    .registers 2

    .line 426
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mCfile:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setNoData(Z)V
    .registers 2

    .line 336
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mNdata:Z

    .line 337
    return-void
.end method

.method public setNoWarn(Z)V
    .registers 2

    .line 390
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mNwarn:Z

    .line 391
    return-void
.end method

.method public setNotco(Z)V
    .registers 2

    .line 298
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mNotco:Z

    .line 299
    return-void
.end method

.method public setOut(Ljava/lang/String;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mOut:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setReserved(Z)V
    .registers 2

    .line 279
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mReserved:Z

    .line 280
    return-void
.end method

.method public setVersion(Z)V
    .registers 2

    .line 372
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCCheckout;->mVersion:Z

    .line 373
    return-void
.end method
