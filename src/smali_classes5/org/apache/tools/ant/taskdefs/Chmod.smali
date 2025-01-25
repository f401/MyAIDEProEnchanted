.class public Lorg/apache/tools/ant/taskdefs/Chmod;
.super Lorg/apache/tools/ant/taskdefs/ExecuteOn;
.source "Chmod.java"


# instance fields
.field private defaultSet:Lorg/apache/tools/ant/types/FileSet;

.field private defaultSetDefined:Z

.field private havePerm:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;-><init>()V

    .line 42
    new-instance v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    .line 43
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    .line 44
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->havePerm:Z

    .line 50
    const-string v0, "chmod"

    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setExecutable(Ljava/lang/String;)V

    .line 51
    invoke-super {p0, v2}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setParallel(Z)V

    .line 52
    invoke-super {p0, v2}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setSkipEmptyFilesets(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method protected checkConfiguration()V
    .registers 4

    .line 161
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->havePerm:Z

    if-eqz v0, :cond_1d

    .line 166
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 167
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Chmod;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 169
    :cond_19
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->checkConfiguration()V

    .line 170
    return-void

    .line 162
    :cond_1d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Required attribute perm not set in chmod"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createPatternSet()Lorg/apache/tools/ant/types/PatternSet;
    .registers 2

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    .line 119
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createPatternSet()Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 184
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 186
    :cond_10
    :try_start_10
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->execute()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_81

    .line 188
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 189
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->filesets:Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 191
    :cond_2a
    :goto_2a
    return-void

    .line 192
    :cond_2b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->isValidOs()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 194
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->prepareExec()Lorg/apache/tools/ant/taskdefs/Execute;

    move-result-object v1

    .line 195
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Commandline;

    .line 196
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v3

    .line 197
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 199
    :try_start_52
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Chmod;->runExecute(Lorg/apache/tools/ant/taskdefs/Execute;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5c} :catch_60
    .catchall {:try_start_52 .. :try_end_5c} :catchall_7c

    .line 205
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->logFlush()V

    goto :goto_2a

    .line 201
    :catch_60
    move-exception v0

    .line 202
    :try_start_61
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_7c
    .catchall {:try_start_61 .. :try_end_7c} :catchall_7c

    .line 205
    :catchall_7c
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->logFlush()V

    .line 206
    throw v0

    .line 188
    :catchall_81
    move-exception v0

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    if-eqz v1, :cond_99

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_99

    .line 189
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->filesets:Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 191
    :cond_99
    throw v0
.end method

.method protected isValidOs()Z
    .registers 2

    .line 267
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getOs()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getOsFamily()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 268
    const-string v0, "unix"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    .line 267
    :goto_12
    return v0

    .line 268
    :cond_13
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->isValidOs()Z

    move-result v0

    goto :goto_12
.end method

.method public setAddsourcefile(Z)V
    .registers 5

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support the addsourcefile attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public setCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 5

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support the command attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public setDefaultexcludes(Z)V
    .registers 3

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setDefaultexcludes(Z)V

    .line 154
    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .registers 3

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 84
    return-void
.end method

.method public setExcludes(Ljava/lang/String;)V
    .registers 3

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setExcludes(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setExecutable(Ljava/lang/String;)V
    .registers 5

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support the executable attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public setFile(Ljava/io/File;)V
    .registers 3

    .line 72
    new-instance v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 73
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setFile(Ljava/io/File;)V

    .line 74
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Chmod;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 75
    return-void
.end method

.method public setIncludes(Ljava/lang/String;)V
    .registers 3

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSetDefined:Z

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setIncludes(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setPerm(Ljava/lang/String;)V
    .registers 3

    .line 91
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->havePerm:Z

    .line 93
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 63
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Chmod;->defaultSet:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 65
    return-void
.end method

.method public setSkipEmptyFilesets(Z)V
    .registers 5

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support the skipemptyfileset attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Chmod;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method
