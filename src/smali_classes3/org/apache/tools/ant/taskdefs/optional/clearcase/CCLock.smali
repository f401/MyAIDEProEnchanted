.class public Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;
.super Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;
.source "CCLock.java"


# static fields
.field public static final FLAG_COMMENT:Ljava/lang/String; = "-comment"

.field public static final FLAG_NUSERS:Ljava/lang/String; = "-nusers"

.field public static final FLAG_OBSOLETE:Ljava/lang/String; = "-obsolete"

.field public static final FLAG_PNAME:Ljava/lang/String; = "-pname"

.field public static final FLAG_REPLACE:Ljava/lang/String; = "-replace"


# instance fields
.field private mComment:Ljava/lang/String;

.field private mNusers:Ljava/lang/String;

.field private mObjselect:Ljava/lang/String;

.field private mObsolete:Z

.field private mPname:Ljava/lang/String;

.field private mReplace:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;-><init>()V

    .line 114
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mReplace:Z

    .line 115
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mObsolete:Z

    .line 116
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mComment:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mNusers:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mPname:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mObjselect:Ljava/lang/String;

    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 166
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getReplace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-replace"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 170
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getObsolete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-obsolete"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 176
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 178
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getObjselect()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getPname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 182
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getPnameCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 184
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getObjselect()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getObjselect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 187
    :cond_2
    return-void

    .line 174
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getNusersCommand(Lorg/apache/tools/ant/types/Commandline;)V

    goto :goto_0

    .line 179
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Should select either an element (pname) or an object (objselect)"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 335
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getComment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-comment"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNusersCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 316
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getNusers()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nusers"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getNusers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getOpType()Ljava/lang/String;
    .registers 3

    .line 372
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getPname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getPnameCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 354
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getPname()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-pname"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getPname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 130
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 131
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 134
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getViewPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 135
    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->setViewPath(Ljava/lang/String;)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getClearToolCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "lock"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 150
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring any errors that occur for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getOpType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 154
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 155
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_3

    .line 159
    :cond_2
    return-void

    .line 156
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed executing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .line 260
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getNusers()Ljava/lang/String;
    .registers 2

    .line 241
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mNusers:Ljava/lang/String;

    return-object v0
.end method

.method public getObjselect()Ljava/lang/String;
    .registers 2

    .line 306
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mObjselect:Ljava/lang/String;

    return-object v0
.end method

.method public getObsolete()Z
    .registers 2

    .line 222
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mObsolete:Z

    return v0
.end method

.method public getPname()Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mPname:Ljava/lang/String;

    return-object v0
.end method

.method public getReplace()Z
    .registers 2

    .line 204
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mReplace:Z

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 251
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mComment:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setNusers(Ljava/lang/String;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mNusers:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setObjSel(Ljava/lang/String;)V
    .registers 2

    .line 288
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mObjselect:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setObjselect(Ljava/lang/String;)V
    .registers 2

    .line 297
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mObjselect:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setObsolete(Z)V
    .registers 2

    .line 213
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mObsolete:Z

    .line 214
    return-void
.end method

.method public setPname(Ljava/lang/String;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mPname:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setReplace(Z)V
    .registers 2

    .line 195
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCLock;->mReplace:Z

    .line 196
    return-void
.end method
