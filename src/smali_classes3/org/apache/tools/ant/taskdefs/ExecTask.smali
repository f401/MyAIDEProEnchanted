.class public Lorg/apache/tools/ant/taskdefs/ExecTask;
.super Lorg/apache/tools/ant/Task;
.source "ExecTask.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field protected cmdl:Lorg/apache/tools/ant/types/Commandline;

.field private dir:Ljava/io/File;

.field private env:Lorg/apache/tools/ant/types/Environment;

.field private error:Ljava/io/File;

.field private executable:Ljava/lang/String;

.field private failIfExecFails:Z

.field protected failOnError:Z

.field private incompatibleWithSpawn:Z

.field private input:Ljava/io/File;

.field private inputString:Ljava/lang/String;

.field protected newEnvironment:Z

.field private os:Ljava/lang/String;

.field private osFamily:Ljava/lang/String;

.field private output:Ljava/io/File;

.field protected redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

.field protected redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

.field private resolveExecutable:Z

.field private resultProperty:Ljava/lang/String;

.field private searchPath:Z

.field private spawn:Z

.field private timeout:Ljava/lang/Long;

.field private vmLauncher:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/ExecTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 52
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failOnError:Z

    .line 53
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->newEnvironment:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->timeout:Ljava/lang/Long;

    .line 55
    new-instance v0, Lorg/apache/tools/ant/types/Environment;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Environment;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->env:Lorg/apache/tools/ant/types/Environment;

    .line 56
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    .line 58
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failIfExecFails:Z

    .line 60
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resolveExecutable:Z

    .line 61
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->searchPath:Z

    .line 62
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->spawn:Z

    .line 63
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 71
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Redirector;-><init>(Lorg/apache/tools/ant/Task;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    .line 79
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->vmLauncher:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Task;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 52
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failOnError:Z

    .line 53
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->newEnvironment:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->timeout:Ljava/lang/Long;

    .line 55
    new-instance v0, Lorg/apache/tools/ant/types/Environment;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Environment;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->env:Lorg/apache/tools/ant/types/Environment;

    .line 56
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    .line 58
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failIfExecFails:Z

    .line 60
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resolveExecutable:Z

    .line 61
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->searchPath:Z

    .line 62
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->spawn:Z

    .line 63
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 71
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Redirector;-><init>(Lorg/apache/tools/ant/Task;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    .line 79
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->vmLauncher:Z

    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->bindToOwner(Lorg/apache/tools/ant/Task;)V

    .line 97
    return-void
.end method

.method private getPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 747
    const-string v0, "PATH="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPath(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 751
    const-string v0, "PATH"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 752
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Path"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private isPath(Ljava/lang/String;)Z
    .registers 3

    .line 742
    const-string v0, "PATH="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    const-string v0, "Path="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 742
    :goto_0
    return v0

    .line 743
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addConfiguredRedirector(Lorg/apache/tools/ant/types/RedirectorElement;)V
    .registers 4

    .line 420
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-nez v0, :cond_0

    .line 423
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 425
    return-void

    .line 421
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "cannot have > 1 nested <redirector>s"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEnv(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .registers 3

    .line 319
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->env:Lorg/apache/tools/ant/types/Environment;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Environment;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 320
    return-void
.end method

.method protected checkConfiguration()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 538
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 541
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 544
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 547
    :cond_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->spawn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    if-nez v0, :cond_5

    .line 556
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setupRedirector()V

    .line 557
    return-void

    .line 542
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 545
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "spawn does not allow attributes related to input, output, error, result"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 550
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "spawn also does not allow timeout"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 551
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "finally, spawn is not compatible with a nested I/O <redirector>"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 553
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You have used an attribute or nested element which is not compatible with spawn"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "no executable specified"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public createArg()Lorg/apache/tools/ant/types/Commandline$Argument;
    .registers 2

    .line 328
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method protected createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v0

    return-object v0
.end method

.method protected createWatchdog()Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 731
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->timeout:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 732
    const/4 v0, 0x0

    .line 731
    :goto_0
    return-object v0

    .line 732
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;-><init>(J)V

    goto :goto_0
.end method

.method public execute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->isValidOs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    .line 524
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->executable:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->searchPath:Z

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/ExecTask;->resolveExecutable(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->checkConfiguration()V

    .line 527
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->prepareExec()Lorg/apache/tools/ant/taskdefs/Execute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->runExec(Lorg/apache/tools/ant/taskdefs/Execute;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    .line 530
    throw v0
.end method

.method public final getOs()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->os:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsFamily()Ljava/lang/String;
    .registers 2

    .line 442
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->osFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getResolveExecutable()Z
    .registers 2

    .line 310
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resolveExecutable:Z

    return v0
.end method

.method protected isValidOs()Z
    .registers 6

    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 588
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->osFamily:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    :goto_0
    return v0

    .line 594
    :cond_0
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current OS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    .line 596
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->os:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This OS, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was not found in the specified list of valid OSes: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->os:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 603
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected logFlush()V
    .registers 1

    .line 739
    return-void
.end method

.method protected maybeSetResultPropertyValue(I)V
    .registers 5

    .line 351
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resultProperty:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 352
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resultProperty:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_0
    return-void
.end method

.method protected prepareExec()Lorg/apache/tools/ant/taskdefs/Execute;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    .line 628
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-eqz v0, :cond_1

    .line 629
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;)V

    .line 631
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Execute;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createWatchdog()Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 632
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 633
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 634
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->vmLauncher:Z

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setVMLauncher(Z)V

    .line 635
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->env:Lorg/apache/tools/ant/types/Environment;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Environment;->getVariables()[Ljava/lang/String;

    move-result-object v2

    .line 636
    if-eqz v2, :cond_2

    .line 637
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 638
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting environment variable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    :cond_2
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->newEnvironment:Z

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setNewenvironment(Z)V

    .line 643
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setEnvironment([Ljava/lang/String;)V

    .line 644
    return-object v1
.end method

.method protected resolveExecutable(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    .line 459
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resolveExecutable:Z

    if-nez v1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-object p1

    .line 463
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 464
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 465
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 468
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 469
    sget-object v2, Lorg/apache/tools/ant/taskdefs/ExecTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v2, v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 471
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 475
    :cond_3
    if-eqz p2, :cond_0

    .line 476
    const/4 v1, 0x0

    .line 477
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->env:Lorg/apache/tools/ant/types/Environment;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Environment;->getVariables()[Ljava/lang/String;

    move-result-object v3

    .line 478
    if-eqz v3, :cond_4

    .line 479
    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    .line 480
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/ExecTask;->isPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 481
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 486
    :cond_4
    if-nez v1, :cond_5

    .line 487
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Execute;->getEnvironmentVariables()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getPath(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 488
    if-eqz v2, :cond_5

    .line 489
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 492
    :cond_5
    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 494
    sget-object v4, Lorg/apache/tools/ant/taskdefs/ExecTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v4, v5, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 496
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 497
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 479
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 493
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected runExec(Lorg/apache/tools/ant/taskdefs/Execute;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    .line 697
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 699
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->runExecute(Lorg/apache/tools/ant/taskdefs/Execute;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->logFlush()V

    .line 710
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 701
    :try_start_1
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failIfExecFails:Z

    if-nez v1, :cond_0

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execute failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 708
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->logFlush()V

    .line 709
    throw v0

    .line 702
    :cond_0
    :try_start_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 703
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected final runExecute(Lorg/apache/tools/ant/taskdefs/Execute;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->spawn:Z

    if-nez v0, :cond_4

    .line 660
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v0

    .line 663
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Execute;->killedProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failOnError:Z

    if-nez v1, :cond_2

    .line 668
    const-string v1, "Timeout: killed the sub-process"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    .line 670
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->maybeSetResultPropertyValue(I)V

    .line 671
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->complete()V

    .line 672
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failOnError:Z

    if-nez v1, :cond_3

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    .line 682
    :cond_1
    :goto_0
    return-void

    .line 666
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Timeout: killed the sub-process"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 680
    :cond_4
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Execute;->spawn()V

    goto :goto_0
.end method

.method public setAppend(Z)V
    .registers 3

    .line 379
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setAppend(Z)V

    .line 380
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 381
    return-void
.end method

.method public setCommand(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 171
    const-string v0, "The command attribute is deprecated.\nPlease use the executable attribute and nested arg elements."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->log(Ljava/lang/String;I)V

    .line 173
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    .line 174
    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->dir:Ljava/io/File;

    .line 146
    return-void
.end method

.method public setDiscardError(Z)V
    .registers 3

    .line 410
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setDiscardError(Z)V

    .line 411
    return-void
.end method

.method public setDiscardOutput(Z)V
    .registers 3

    .line 395
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setDiscardOutput(Z)V

    .line 396
    return-void
.end method

.method public setError(Ljava/io/File;)V
    .registers 3

    .line 234
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->error:Ljava/io/File;

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 236
    return-void
.end method

.method public setErrorProperty(Ljava/lang/String;)V
    .registers 3

    .line 258
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setErrorProperty(Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 260
    return-void
.end method

.method public setExecutable(Ljava/lang/String;)V
    .registers 3

    .line 136
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->executable:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->cmdl:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public setFailIfExecutionFails(Z)V
    .registers 3

    .line 366
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failIfExecFails:Z

    .line 367
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 368
    return-void
.end method

.method public setFailonerror(Z)V
    .registers 3

    .line 268
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->failOnError:Z

    .line 269
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 270
    return-void
.end method

.method public setInput(Ljava/io/File;)V
    .registers 4

    .line 193
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->inputString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 197
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->input:Ljava/io/File;

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 199
    return-void

    .line 194
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The \"input\" and \"inputstring\" attributes cannot both be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputString(Ljava/lang/String;)V
    .registers 4

    .line 207
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->input:Ljava/io/File;

    if-nez v0, :cond_0

    .line 211
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->inputString:Ljava/lang/String;

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 213
    return-void

    .line 208
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The \"input\" and \"inputstring\" attributes cannot both be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLogError(Z)V
    .registers 3

    .line 222
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setLogError(Z)V

    .line 223
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 224
    return-void
.end method

.method public setNewenvironment(Z)V
    .registers 2

    .line 279
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->newEnvironment:Z

    .line 280
    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->os:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setOsFamily(Ljava/lang/String;)V
    .registers 3

    .line 433
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->osFamily:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setOutput(Ljava/io/File;)V
    .registers 3

    .line 183
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->output:Ljava/io/File;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 185
    return-void
.end method

.method public setOutputproperty(Ljava/lang/String;)V
    .registers 3

    .line 245
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutputProperty(Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 247
    return-void
.end method

.method public setResolveExecutable(Z)V
    .registers 2

    .line 289
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resolveExecutable:Z

    .line 290
    return-void
.end method

.method public setResultProperty(Ljava/lang/String;)V
    .registers 3

    .line 340
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->resultProperty:Ljava/lang/String;

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 342
    return-void
.end method

.method public setSearchPath(Z)V
    .registers 2

    .line 299
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->searchPath:Z

    .line 300
    return-void
.end method

.method public setSpawn(Z)V
    .registers 2

    .line 106
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->spawn:Z

    .line 107
    return-void
.end method

.method public setTimeout(Ljava/lang/Integer;)V
    .registers 4

    .line 127
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setTimeout(Ljava/lang/Long;)V

    .line 129
    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public setTimeout(Ljava/lang/Long;)V
    .registers 4

    .line 117
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->timeout:Ljava/lang/Long;

    .line 118
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->incompatibleWithSpawn:Z

    .line 119
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVMLauncher(Z)V
    .registers 2

    .line 613
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->vmLauncher:Z

    .line 614
    return-void
.end method

.method protected setupRedirector()V
    .registers 3

    .line 563
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->input:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInput(Ljava/io/File;)V

    .line 564
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->inputString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInputString(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->output:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutput(Ljava/io/File;)V

    .line 566
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecTask;->error:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setError(Ljava/io/File;)V

    .line 567
    return-void
.end method
