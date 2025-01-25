.class public Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;
.super Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;
.source "CCUpdate.java"


# static fields
.field public static final FLAG_CURRENTTIME:Ljava/lang/String; = "-ctime"

.field public static final FLAG_GRAPHICAL:Ljava/lang/String; = "-graphical"

.field public static final FLAG_LOG:Ljava/lang/String; = "-log"

.field public static final FLAG_NOVERWRITE:Ljava/lang/String; = "-noverwrite"

.field public static final FLAG_OVERWRITE:Ljava/lang/String; = "-overwrite"

.field public static final FLAG_PRESERVETIME:Ljava/lang/String; = "-ptime"

.field public static final FLAG_RENAME:Ljava/lang/String; = "-rename"


# instance fields
.field private mCtime:Z

.field private mGraphical:Z

.field private mLog:Ljava/lang/String;

.field private mOverwrite:Z

.field private mPtime:Z

.field private mRename:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/ClearCase;-><init>()V

    .line 113
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mGraphical:Z

    .line 114
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mOverwrite:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mRename:Z

    .line 116
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mCtime:Z

    .line 117
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mPtime:Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mLog:Ljava/lang/String;

    return-void
.end method

.method private checkOptions(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getGraphical()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 167
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-graphical"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 193
    :goto_f
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getViewPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 194
    return-void

    .line 169
    :cond_1b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getOverwrite()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 171
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-overwrite"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 180
    :goto_2a
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getCurrentTime()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 182
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-ctime"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 189
    :cond_39
    :goto_39
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getLogCommand(Lorg/apache/tools/ant/types/Commandline;)V

    goto :goto_f

    .line 172
    :cond_3d
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getRename()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 174
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-rename"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_2a

    .line 177
    :cond_4d
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-noverwrite"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_2a

    .line 183
    :cond_57
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getPreserveTime()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 185
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-ptime"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_39
.end method

.method private getLogCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 313
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getLog()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 323
    :goto_6
    return-void

    .line 321
    :cond_7
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-log"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getLog()Ljava/lang/String;

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

    .line 129
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 130
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 133
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getViewPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 134
    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->setViewPath(Ljava/lang/String;)V

    .line 140
    :cond_1a
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getClearToolCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "update"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->checkOptions(Lorg/apache/tools/ant/types/Commandline;)V

    .line 147
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 150
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring any errors that occur for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getViewPathBasename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 153
    :cond_5c
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v1

    .line 154
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getFailOnErr()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 158
    :cond_6c
    return-void

    .line 155
    :cond_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed executing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public getCurrentTime()Z
    .registers 2

    .line 266
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mCtime:Z

    return v0
.end method

.method public getGraphical()Z
    .registers 2

    .line 211
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mGraphical:Z

    return v0
.end method

.method public getLog()Ljava/lang/String;
    .registers 2

    .line 304
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mLog:Ljava/lang/String;

    return-object v0
.end method

.method public getOverwrite()Z
    .registers 2

    .line 229
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mOverwrite:Z

    return v0
.end method

.method public getPreserveTime()Z
    .registers 2

    .line 285
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mPtime:Z

    return v0
.end method

.method public getRename()Z
    .registers 2

    .line 247
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mRename:Z

    return v0
.end method

.method public setCurrentTime(Z)V
    .registers 2

    .line 257
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mCtime:Z

    .line 258
    return-void
.end method

.method public setGraphical(Z)V
    .registers 2

    .line 202
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mGraphical:Z

    .line 203
    return-void
.end method

.method public setLog(Ljava/lang/String;)V
    .registers 2

    .line 295
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mLog:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setOverwrite(Z)V
    .registers 2

    .line 220
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mOverwrite:Z

    .line 221
    return-void
.end method

.method public setPreserveTime(Z)V
    .registers 2

    .line 276
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mPtime:Z

    .line 277
    return-void
.end method

.method public setRename(Z)V
    .registers 2

    .line 238
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/clearcase/CCUpdate;->mRename:Z

    .line 239
    return-void
.end method
