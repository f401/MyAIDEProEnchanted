.class public abstract Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;
.super Lorg/apache/tools/ant/Task;
.source "SOS.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/sos/SOSCmd;


# static fields
.field private static final ERROR_EXIT_STATUS:I = 0xff


# instance fields
.field protected commandLine:Lorg/apache/tools/ant/types/Commandline;

.field private comment:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private localPath:Ljava/lang/String;

.field private noCache:Z

.field private noCompress:Z

.field private projectPath:Ljava/lang/String;

.field private recursive:Z

.field private sosCmdDir:Ljava/lang/String;

.field private sosHome:Ljava/lang/String;

.field private sosPassword:Ljava/lang/String;

.field private sosServerPath:Ljava/lang/String;

.field private sosUsername:Ljava/lang/String;

.field private verbose:Z

.field private version:Ljava/lang/String;

.field private vssServerPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 42
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosCmdDir:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosUsername:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosPassword:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->projectPath:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->vssServerPath:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosServerPath:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosHome:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->localPath:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->version:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->label:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->comment:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->filename:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->noCompress:Z

    .line 56
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->noCache:Z

    .line 57
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->recursive:Z

    .line 58
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->verbose:Z

    return-void
.end method


# virtual methods
.method abstract buildCmdLine()Lorg/apache/tools/ant/types/Commandline;
.end method

.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->buildCmdLine()Lorg/apache/tools/ant/types/Commandline;

    .line 396
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->run(Lorg/apache/tools/ant/types/Commandline;)I

    move-result v0

    .line 397
    const/16 v1, 0xff

    if-eq v0, v1, :cond_e

    .line 401
    return-void

    .line 398
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed executing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method protected getComment()Ljava/lang/String;
    .registers 2

    .line 240
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->comment:Ljava/lang/String;

    return-object v0
.end method

.method protected getFilename()Ljava/lang/String;
    .registers 2

    .line 312
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->filename:Ljava/lang/String;

    return-object v0
.end method

.method protected getLabel()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->label:Ljava/lang/String;

    return-object v0
.end method

.method protected getLocalPath()Ljava/lang/String;
    .registers 5

    .line 360
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->localPath:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 361
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 374
    :goto_10
    return-object v0

    .line 364
    :cond_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 366
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_2d
    const/4 v0, 0x1

    .line 367
    :goto_2e
    if-eqz v0, :cond_53

    .line 372
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;)V

    .line 374
    :cond_4c
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 366
    :cond_51
    const/4 v0, 0x0

    goto :goto_2e

    .line 368
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " creation was not successful for an unknown reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method protected getNoCache()Ljava/lang/String;
    .registers 2

    .line 331
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->noCache:Z

    if-eqz v0, :cond_7

    const-string v0, "-nocache"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method protected getNoCompress()Ljava/lang/String;
    .registers 2

    .line 322
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->noCompress:Z

    if-eqz v0, :cond_7

    const-string v0, "-nocompress"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method protected getOptionalAttributes()V
    .registers 3

    .line 463
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getVerbose()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getNoCompress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getSosHome()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 469
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getNoCache()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 475
    :goto_2d
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 476
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-workdir"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 479
    :cond_4b
    return-void

    .line 471
    :cond_4c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-soshome"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getSosHome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method protected getPassword()Ljava/lang/String;
    .registers 2

    .line 272
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosPassword:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method protected getProjectPath()Ljava/lang/String;
    .registers 2

    .line 280
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->projectPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getRecursive()Ljava/lang/String;
    .registers 2

    .line 349
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->recursive:Z

    if-eqz v0, :cond_7

    const-string v0, "-recursive"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method protected getRequiredAttributes()V
    .registers 4

    .line 429
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getSosCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getSosServerPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 434
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-server"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getSosServerPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 440
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-name"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-password"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getVssServerPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 450
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-database"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getVssServerPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getProjectPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 456
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-project"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->commandLine:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getProjectPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 458
    return-void

    .line 454
    :cond_9a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "projectpath attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 448
    :cond_a6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "vssserverpath attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 438
    :cond_b2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "username attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 432
    :cond_be
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "sosserverpath attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected getSosCommand()Ljava/lang/String;
    .registers 3

    .line 228
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosCmdDir:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 229
    const-string v0, "soscmd"

    .line 231
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosCmdDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "soscmd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected getSosHome()Ljava/lang/String;
    .registers 2

    .line 296
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosHome:Ljava/lang/String;

    return-object v0
.end method

.method protected getSosServerPath()Ljava/lang/String;
    .registers 2

    .line 304
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosServerPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getUsername()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosUsername:Ljava/lang/String;

    return-object v0
.end method

.method protected getVerbose()Ljava/lang/String;
    .registers 2

    .line 340
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->verbose:Z

    if-eqz v0, :cond_7

    const-string v0, "-verbose"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method protected getVersion()Ljava/lang/String;
    .registers 2

    .line 248
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->version:Ljava/lang/String;

    return-object v0
.end method

.method protected getVssServerPath()Ljava/lang/String;
    .registers 2

    .line 288
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->vssServerPath:Ljava/lang/String;

    return-object v0
.end method

.method protected run(Lorg/apache/tools/ant/types/Commandline;)I
    .registers 6

    .line 412
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 416
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 417
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 418
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 419
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setVMLauncher(Z)V

    .line 420
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2e

    move-result v0

    return v0

    .line 421
    :catch_2e
    move-exception v0

    .line 422
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method protected setInternalComment(Ljava/lang/String;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->comment:Ljava/lang/String;

    .line 204
    return-void
.end method

.method protected setInternalFilename(Ljava/lang/String;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->filename:Ljava/lang/String;

    .line 188
    return-void
.end method

.method protected setInternalLabel(Ljava/lang/String;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->label:Ljava/lang/String;

    .line 212
    return-void
.end method

.method protected setInternalRecursive(Z)V
    .registers 2

    .line 195
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->recursive:Z

    .line 196
    return-void
.end method

.method protected setInternalVersion(Ljava/lang/String;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->version:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public final setLocalPath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 168
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->localPath:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public final setNoCache(Z)V
    .registers 2

    .line 73
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->noCache:Z

    .line 74
    return-void
.end method

.method public final setNoCompress(Z)V
    .registers 2

    .line 82
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->noCompress:Z

    .line 83
    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosPassword:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public final setProjectPath(Ljava/lang/String;)V
    .registers 4

    .line 123
    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 124
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->projectPath:Ljava/lang/String;

    .line 128
    :goto_a
    return-void

    .line 126
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->projectPath:Ljava/lang/String;

    goto :goto_a
.end method

.method public final setSosCmd(Ljava/lang/String;)V
    .registers 3

    .line 92
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->translatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosCmdDir:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public final setSosHome(Ljava/lang/String;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosHome:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public final setSosServerPath(Ljava/lang/String;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosServerPath:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->sosUsername:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setVerbose(Z)V
    .registers 2

    .line 177
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->verbose:Z

    .line 178
    return-void
.end method

.method public final setVssServerPath(Ljava/lang/String;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/sos/SOS;->vssServerPath:Ljava/lang/String;

    .line 139
    return-void
.end method
