.class public Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;
.super Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;
.source "CCUnlock.java"


# static fields
.field public static final FLAG_COMMENT:Ljava/lang/String; = "-comment"

.field public static final FLAG_PNAME:Ljava/lang/String; = "-pname"


# instance fields
.field private mComment:Ljava/lang/String;

.field private mPname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;-><init>()V

    .line 83
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->mComment:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->mPname:Ljava/lang/String;

    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 131
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 133
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getObjSelect()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getPname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 137
    :cond_f
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getPnameCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 139
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getObjSelect()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 140
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getObjSelect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 142
    :cond_23
    return-void

    .line 134
    :cond_24
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Should select either an element (pname) or an object (objselect)"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCommentCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 216
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getComment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 226
    :goto_6
    return-void

    .line 224
    :cond_7
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-comment"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private getOpType()Ljava/lang/String;
    .registers 3

    .line 253
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getPname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getPnameCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 235
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getPname()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 245
    :goto_6
    return-void

    .line 243
    :cond_7
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-pname"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getPname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 95
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getViewPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 100
    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->setViewPath(Ljava/lang/String;)V

    .line 106
    :cond_1a
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getClearToolCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "unlock"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_50

    .line 116
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring any errors that occur for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getOpType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 119
    :cond_50
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 120
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_61

    .line 124
    :cond_60
    return-void

    .line 121
    :cond_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed executing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getObjselect()Ljava/lang/String;
    .registers 2

    .line 206
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->getObjSelect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPname()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->mPname:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->mComment:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setObjSel(Ljava/lang/String;)V
    .registers 2

    .line 197
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->setObjSelect(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public setObjselect(Ljava/lang/String;)V
    .registers 2

    .line 187
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->setObjSelect(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public setPname(Ljava/lang/String;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUnlock;->mPname:Ljava/lang/String;

    .line 170
    return-void
.end method
