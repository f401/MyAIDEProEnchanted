.class public Lorg/apache/tools/ant/taskdefs/Java;
.super Lorg/apache/tools/ant/Task;
.source "Java.java"


# static fields
.field private static final TIMEOUT_MESSAGE:Ljava/lang/String; = "Timeout: killed the sub-process"


# instance fields
.field private cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

.field private dir:Ljava/io/File;

.field private env:Lorg/apache/tools/ant/types/Environment;

.field private error:Ljava/io/File;

.field private failOnError:Z

.field private fork:Z

.field private incompatibleWithSpawn:Z

.field private input:Ljava/io/File;

.field private inputString:Ljava/lang/String;

.field private newEnvironment:Z

.field private output:Ljava/io/File;

.field private perm:Lorg/apache/tools/ant/types/Permissions;

.field protected redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

.field protected redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

.field private resultProperty:Ljava/lang/String;

.field private spawn:Z

.field private timeout:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    .line 57
    new-instance v0, Lorg/apache/tools/ant/types/Environment;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Environment;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->env:Lorg/apache/tools/ant/types/Environment;

    .line 58
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    .line 59
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->newEnvironment:Z

    .line 60
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    .line 61
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->failOnError:Z

    .line 62
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->timeout:Ljava/lang/Long;

    .line 71
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Redirector;-><init>(Lorg/apache/tools/ant/Task;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    .line 76
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 78
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->spawn:Z

    .line 79
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Task;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    .line 57
    new-instance v0, Lorg/apache/tools/ant/types/Environment;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Environment;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->env:Lorg/apache/tools/ant/types/Environment;

    .line 58
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    .line 59
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->newEnvironment:Z

    .line 60
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    .line 61
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->failOnError:Z

    .line 62
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->timeout:Ljava/lang/Long;

    .line 71
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Redirector;-><init>(Lorg/apache/tools/ant/Task;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    .line 76
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 78
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->spawn:Z

    .line 79
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->bindToOwner(Lorg/apache/tools/ant/Task;)V

    .line 93
    return-void
.end method

.method private fork([Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 906
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    .line 907
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Execute;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->createWatchdog()Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 908
    invoke-direct {p0, v1, p1}, Lorg/apache/tools/ant/taskdefs/Java;->setupExecutable(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V

    .line 911
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v0

    .line 912
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Redirector;->complete()V

    .line 913
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->killedProcess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 916
    return v0

    .line 914
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Timeout: killed the sub-process"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    :catch_0
    move-exception v0

    .line 918
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method static synthetic lambda$run$0(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;)V
    .registers 3

    .line 1022
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/Throwable;)V
    .registers 4

    .line 1055
    invoke-static {p1}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 1056
    return-void
.end method

.method private run(Lorg/apache/tools/ant/types/CommandlineJava;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 884
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;-><init>()V

    .line 885
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->getJavaCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setJavaCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 886
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 887
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->getSystemProperties()Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setSystemProperties(Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;)V

    .line 888
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setPermissions(Lorg/apache/tools/ant/types/Permissions;)V

    .line 889
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->timeout:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setTimeout(Ljava/lang/Long;)V

    .line 890
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->createStreams()V

    .line 891
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->execute(Lorg/apache/tools/ant/Project;)V

    .line 892
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->complete()V

    .line 893
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->killedProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 898
    return-void

    .line 894
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Timeout: killed the sub-process"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :catch_0
    move-exception v0

    .line 897
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupCommandLine(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V
    .registers 4

    .line 992
    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Java;->setupCommandLineForVMS(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V

    .line 997
    :goto_0
    return-void

    .line 995
    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupCommandLineForVMS(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V
    .registers 3

    .line 1008
    invoke-static {p1, p2}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setupCommandLineForVMS(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V

    .line 1009
    return-void
.end method

.method private setupEnvironment(Lorg/apache/tools/ant/taskdefs/Execute;)V
    .registers 8

    .line 955
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->env:Lorg/apache/tools/ant/types/Environment;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Environment;->getVariables()[Ljava/lang/String;

    move-result-object v1

    .line 956
    if-eqz v1, :cond_0

    .line 957
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 958
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting environment variable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 962
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->newEnvironment:Z

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setNewenvironment(Z)V

    .line 963
    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setEnvironment([Ljava/lang/String;)V

    .line 964
    return-void
.end method

.method private setupExecutable(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V
    .registers 4

    .line 944
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 945
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->setupWorkingDir(Lorg/apache/tools/ant/taskdefs/Execute;)V

    .line 946
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->setupEnvironment(Lorg/apache/tools/ant/taskdefs/Execute;)V

    .line 947
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Java;->setupCommandLine(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V

    .line 948
    return-void
.end method

.method private setupWorkingDir(Lorg/apache/tools/ant/taskdefs/Execute;)V
    .registers 5

    .line 972
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    if-nez v0, :cond_1

    .line 973
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    .line 979
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 980
    return-void

    .line 974
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 977
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method private spawn([Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 927
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Execute;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>()V

    .line 928
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->setupExecutable(Lorg/apache/tools/ant/taskdefs/Execute;[Ljava/lang/String;)V

    .line 930
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->spawn()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    return-void

    .line 931
    :catch_0
    move-exception v0

    .line 932
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method


# virtual methods
.method public addAssertions(Lorg/apache/tools/ant/types/Assertions;)V
    .registers 4

    .line 758
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getAssertions()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v0

    if-nez v0, :cond_0

    .line 761
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setAssertions(Lorg/apache/tools/ant/types/Assertions;)V

    .line 762
    return-void

    .line 759
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one assertion declaration is allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addConfiguredRedirector(Lorg/apache/tools/ant/types/RedirectorElement;)V
    .registers 4

    .line 769
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-nez v0, :cond_0

    .line 772
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 774
    return-void

    .line 770
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "cannot have > 1 nested redirectors"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEnv(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .registers 3

    .line 682
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->env:Lorg/apache/tools/ant/types/Environment;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Environment;->addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 683
    return-void
.end method

.method public addSysproperty(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .registers 3

    .line 531
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->addSysproperty(Lorg/apache/tools/ant/types/Environment$Variable;)V

    .line 532
    return-void
.end method

.method public addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .registers 3

    .line 542
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->addSyspropertyset(Lorg/apache/tools/ant/types/PropertySet;)V

    .line 543
    return-void
.end method

.method protected checkConfiguration()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 143
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getClassname()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->getModule()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/CommandlineJava;->getSourceFile()Ljava/lang/String;

    move-result-object v2

    .line 146
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_9

    .line 149
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 153
    :cond_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getModule()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 157
    :cond_2
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    if-nez v0, :cond_3

    if-nez v2, :cond_c

    .line 160
    :cond_3
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->spawn:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_d

    .line 164
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 166
    const-string v0, "When using \'jar\' attribute classpath-settings are ignored. See the manual for more information."

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 169
    :cond_5
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->spawn:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    if-nez v0, :cond_e

    .line 180
    :cond_6
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getAssertions()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    if-nez v0, :cond_7

    .line 181
    const-string v0, "Assertion statements are currently ignored in non-forked mode"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;)V

    .line 183
    :cond_7
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    if-eqz v0, :cond_f

    .line 184
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-eqz v0, :cond_8

    .line 185
    const-string v0, "Permissions can not be set this way in forked mode."

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 187
    :cond_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->describeCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 213
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->setupRedirector()V

    .line 214
    return-void

    .line 147
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Classname must not be null."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot execute a jar in non-forked mode. Please set fork=\'true\'. "

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot execute a module in non-forked mode. Please set fork=\'true\'. "

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot execute sourcefile in non-forked mode. Please set fork=\'true\'"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot spawn a java process in non-forked mode. Please set fork=\'true\'. "

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_e
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "spawn does not allow attributes related to input, output, error, result"

    invoke-virtual {v0, v1, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 173
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "spawn also does not allow timeout"

    invoke-virtual {v0, v1, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 174
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "finally, spawn is not compatible with a nested I/O <redirector>"

    invoke-virtual {v0, v1, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 177
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You have used an attribute or nested element which is not compatible with spawn"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getVmCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v0

    if-le v0, v3, :cond_10

    .line 190
    const-string v0, "JVM args ignored when same JVM is used."

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 193
    :cond_10
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    if-eqz v0, :cond_11

    .line 194
    const-string v0, "Working directory ignored when same JVM is used."

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 197
    :cond_11
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->newEnvironment:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->env:Lorg/apache/tools/ant/types/Environment;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Environment;->getVariables()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 198
    :cond_12
    const-string v0, "Changes to environment variables are ignored when same JVM is used."

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 201
    :cond_13
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getBootclasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 202
    const-string v0, "bootclasspath ignored when same JVM is used."

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 205
    :cond_14
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-nez v0, :cond_15

    .line 206
    new-instance v0, Lorg/apache/tools/ant/types/Permissions;

    invoke-direct {v0, v3}, Lorg/apache/tools/ant/types/Permissions;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "running "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->getClassname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with default permissions (exit forbidden)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 210
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Running in same VM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->describeJavaCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public clearArgs()V
    .registers 2

    .line 1030
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->clearJavaArgs()V

    .line 1031
    return-void
.end method

.method public createArg()Lorg/apache/tools/ant/types/Commandline$Argument;
    .registers 2

    .line 458
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public createBootclasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 295
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createBootclasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 285
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createJvmarg()Lorg/apache/tools/ant/types/Commandline$Argument;
    .registers 2

    .line 513
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createVmArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public createModulepath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 315
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createModulepath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createPermissions()Lorg/apache/tools/ant/types/Permissions;
    .registers 2

    .line 344
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/tools/ant/types/Permissions;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Permissions;-><init>()V

    :cond_0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 345
    return-object v0
.end method

.method public createUpgrademodulepath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 335
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createUpgrademodulepath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

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

    .line 1043
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->timeout:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 1044
    const/4 v0, 0x0

    .line 1046
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;-><init>(J)V

    goto :goto_0
.end method

.method public execute()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 102
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    .line 103
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->checkConfiguration()V

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->executeJava()I

    move-result v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Java;->failOnError:Z

    if-nez v3, :cond_1

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Java Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 118
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Java;->maybeSetResultPropertyValue(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    .line 121
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 122
    return-void

    .line 111
    :cond_1
    :try_start_1
    new-instance v3, Lorg/apache/tools/ant/ExitStatusException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Java returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/tools/ant/ExitStatusException;-><init>(Ljava/lang/String;ILorg/apache/tools/ant/Location;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    .line 121
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->perm:Lorg/apache/tools/ant/types/Permissions;

    .line 122
    throw v0
.end method

.method public executeJava()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Java;->executeJava(Lorg/apache/tools/ant/types/CommandlineJava;)I

    move-result v0

    return v0
.end method

.method protected executeJava(Lorg/apache/tools/ant/types/CommandlineJava;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 223
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    if-eqz v2, :cond_1

    .line 224
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->spawn:Z

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/Java;->spawn([Ljava/lang/String;)V

    .line 256
    :goto_0
    return v0

    .line 228
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Java;->fork([Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 231
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->run(Lorg/apache/tools/ant/types/CommandlineJava;)V
    :try_end_1
    .catch Lorg/apache/tools/ant/ExitException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/tools/ant/ExitException;->getStatus()I
    :try_end_2
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    .line 252
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->failOnError:Z

    if-nez v2, :cond_2

    .line 255
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/Throwable;)V

    move v0, v1

    .line 256
    goto :goto_0

    .line 253
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 249
    :catch_1
    move-exception v0

    .line 250
    throw v0

    .line 236
    :catch_2
    move-exception v0

    .line 237
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 238
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/BuildException;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 240
    :cond_3
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->failOnError:Z

    if-nez v2, :cond_5

    .line 243
    const-string v2, "Timeout: killed the sub-process"

    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 244
    const-string v0, "Timeout: killed the sub-process"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 248
    goto :goto_0

    .line 246
    :cond_4
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 241
    :cond_5
    throw v0
.end method

.method public getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;
    .registers 2

    .line 1065
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    return-object v0
.end method

.method public getSysProperties()Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;
    .registers 2

    .line 1075
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getSystemProperties()Lorg/apache/tools/ant/types/CommandlineJava$SysProperties;

    move-result-object v0

    return-object v0
.end method

.method protected handleErrorFlush(Ljava/lang/String;)V
    .registers 3

    .line 852
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->getErrorStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->handleErrorFlush(Ljava/lang/String;)V

    .line 857
    :goto_0
    return-void

    .line 855
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorFlush(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleErrorOutput(Ljava/lang/String;)V
    .registers 3

    .line 836
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->getErrorStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->handleErrorOutput(Ljava/lang/String;)V

    .line 841
    :goto_0
    return-void

    .line 839
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleFlush(Ljava/lang/String;)V
    .registers 3

    .line 820
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->handleFlush(Ljava/lang/String;)V

    .line 825
    :goto_0
    return-void

    .line 823
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleFlush(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleInput([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Redirector;->handleInput([BII)I

    move-result v0

    return v0
.end method

.method protected handleOutput(Ljava/lang/String;)V
    .registers 3

    .line 785
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Redirector;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->handleOutput(Ljava/lang/String;)V

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected maybeSetResultPropertyValue(I)V
    .registers 5

    .line 481
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->resultProperty:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Java;->resultProperty:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_0
    return-void
.end method

.method protected run(Ljava/lang/String;Ljava/util/Vector;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1020
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    .line 1021
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setClassname(Ljava/lang/String;)V

    .line 1022
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Java$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/CommandlineJava;)V

    invoke-virtual {p2, v1}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    .line 1023
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Java;->run(Lorg/apache/tools/ant/types/CommandlineJava;)V

    .line 1024
    return-void
.end method

.method public setAppend(Z)V
    .registers 3

    .line 706
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setAppend(Z)V

    .line 707
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 708
    return-void
.end method

.method public setArgs(Ljava/lang/String;)V
    .registers 4

    .line 434
    const-string v0, "The args attribute is deprecated. Please use nested arg elements."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 436
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public setClassname(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setClassname(Ljava/lang/String;)V

    .line 387
    return-void

    .line 383
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot use combination of \'jar\', \'classname\', sourcefile attributes in same command"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 276
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 277
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 354
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 355
    return-void
.end method

.method public setCloneVm(Z)V
    .registers 3

    .line 449
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setCloneVm(Z)V

    .line 450
    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .registers 2

    .line 564
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->dir:Ljava/io/File;

    .line 565
    return-void
.end method

.method public setDiscardError(Z)V
    .registers 3

    .line 737
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setDiscardError(Z)V

    .line 738
    return-void
.end method

.method public setDiscardOutput(Z)V
    .registers 3

    .line 722
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setDiscardOutput(Z)V

    .line 723
    return-void
.end method

.method public setError(Ljava/io/File;)V
    .registers 3

    .line 626
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->error:Ljava/io/File;

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 628
    return-void
.end method

.method public setErrorProperty(Ljava/lang/String;)V
    .registers 3

    .line 651
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setErrorProperty(Ljava/lang/String;)V

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 653
    return-void
.end method

.method public setFailonerror(Z)V
    .registers 3

    .line 553
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->failOnError:Z

    .line 554
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 555
    return-void
.end method

.method public setFork(Z)V
    .registers 2

    .line 493
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->fork:Z

    .line 494
    return-void
.end method

.method public setInput(Ljava/io/File;)V
    .registers 4

    .line 583
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->inputString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 587
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->input:Ljava/io/File;

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 589
    return-void

    .line 584
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The \"input\" and \"inputstring\" attributes cannot both be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputString(Ljava/lang/String;)V
    .registers 4

    .line 597
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->input:Ljava/io/File;

    if-nez v0, :cond_0

    .line 601
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->inputString:Ljava/lang/String;

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 603
    return-void

    .line 598
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The \"input\" and \"inputstring\" attributes cannot both be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setJVMVersion(Ljava/lang/String;)V
    .registers 3

    .line 669
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setVmversion(Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public setJar(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getClassname()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getModule()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->setJar(Ljava/lang/String;)V

    .line 372
    return-void

    .line 368
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot use combination of \'jar\', \'sourcefile\', \'classname\', \'module\' attributes in same command"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setJvm(Ljava/lang/String;)V
    .registers 3

    .line 522
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setVm(Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public setJvmargs(Ljava/lang/String;)V
    .registers 4

    .line 502
    const-string v0, "The jvmargs attribute is deprecated. Please use nested jvmarg elements."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Java;->log(Ljava/lang/String;I)V

    .line 504
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createVmArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public setLogError(Z)V
    .registers 3

    .line 614
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setLogError(Z)V

    .line 615
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 616
    return-void
.end method

.method public setMaxmemory(Ljava/lang/String;)V
    .registers 3

    .line 661
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setMaxmemory(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setModule(Ljava/lang/String;)V

    .line 403
    return-void

    .line 399
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot use combination of \'jar\', \'module\', sourcefile attributes in same command"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setModulepath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 305
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->createModulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 306
    return-void
.end method

.method public setModulepathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 325
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->createModulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 326
    return-void
.end method

.method public setNewenvironment(Z)V
    .registers 2

    .line 695
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->newEnvironment:Z

    .line 696
    return-void
.end method

.method public setOutput(Ljava/io/File;)V
    .registers 3

    .line 573
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->output:Ljava/io/File;

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 575
    return-void
.end method

.method public setOutputproperty(Ljava/lang/String;)V
    .registers 3

    .line 638
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutputProperty(Ljava/lang/String;)V

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 640
    return-void
.end method

.method public setResultProperty(Ljava/lang/String;)V
    .registers 3

    .line 470
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->resultProperty:Ljava/lang/String;

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 472
    return-void
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJar()Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->getClassname()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/CommandlineJava;->getModule()Ljava/lang/String;

    move-result-object v2

    .line 418
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 422
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getCommandLine()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/CommandlineJava;->setSourceFile(Ljava/lang/String;)V

    .line 423
    return-void

    .line 419
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot use \'sourcefile\' in combination with \'jar\' or \'module\' or \'classname\'"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpawn(Z)V
    .registers 2

    .line 267
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->spawn:Z

    .line 268
    return-void
.end method

.method public setTimeout(Ljava/lang/Long;)V
    .registers 4

    .line 748
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Java;->timeout:Ljava/lang/Long;

    .line 749
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->incompatibleWithSpawn:Z

    .line 750
    return-void

    .line 749
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setupRedirector()V
    .registers 4

    .line 863
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->input:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInput(Ljava/io/File;)V

    .line 864
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->inputString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInputString(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->output:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutput(Ljava/io/File;)V

    .line 866
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->error:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setError(Ljava/io/File;)V

    .line 867
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirectorElement:Lorg/apache/tools/ant/types/RedirectorElement;

    if-eqz v0, :cond_0

    .line 868
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RedirectorElement;->configure(Lorg/apache/tools/ant/taskdefs/Redirector;)V

    .line 870
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->spawn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->input:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->inputString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 872
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Java;->redirector:Lorg/apache/tools/ant/taskdefs/Redirector;

    .line 873
    new-instance v1, Lorg/apache/tools/ant/util/KeepAliveInputStream;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Java;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getDefaultInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/util/KeepAliveInputStream;-><init>(Ljava/io/InputStream;)V

    .line 872
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInputStream(Ljava/io/InputStream;)V

    .line 875
    :cond_1
    return-void
.end method
