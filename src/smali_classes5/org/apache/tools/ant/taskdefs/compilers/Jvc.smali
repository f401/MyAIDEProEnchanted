.class public Lorg/apache/tools/ant/taskdefs/compilers/Jvc;
.super Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;
.source "Jvc.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v3, "Using jvc compiler"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 44
    new-instance v3, Lorg/apache/tools/ant/types/Path;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v3, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 48
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->getBootClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 50
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 53
    :cond_1e
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->includeJavaRuntime:Z

    if-eqz v0, :cond_27

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/Path;->addExtdirs(Lorg/apache/tools/ant/types/Path;)V

    .line 59
    :cond_27
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->getCompileClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_db

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 69
    :goto_37
    new-instance v4, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v4}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 70
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getExecutable()Ljava/lang/String;

    move-result-object v0

    .line 71
    if-nez v0, :cond_48

    const-string v0, "jvc"

    :cond_48
    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->destDir:Ljava/io/File;

    if-eqz v0, :cond_61

    .line 74
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v5, "/d"

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->destDir:Ljava/io/File;

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 79
    :cond_61
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v5, "/cp:p"

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v3, "build.compiler.jvc.extensions"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_e4

    .line 85
    invoke-static {v0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 88
    :goto_81
    if-eqz v0, :cond_95

    .line 90
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "/x-"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "/nomessage"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 96
    :cond_95
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "/nologo"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 98
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->debug:Z

    if-eqz v0, :cond_ab

    .line 99
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "/g"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 101
    :cond_ab
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->optimize:Z

    if-eqz v0, :cond_b8

    .line 102
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "/O"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 104
    :cond_b8
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->verbose:Z

    if-eqz v0, :cond_c5

    .line 105
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "/verbose"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 108
    :cond_c5
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->addCurrentCompilerArgs(Lorg/apache/tools/ant/types/Commandline;)V

    .line 110
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v0

    .line 111
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    .line 113
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v2}, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->executeExternalCompile([Ljava/lang/String;IZ)I

    move-result v0

    if-nez v0, :cond_e2

    move v0, v1

    :goto_da
    return v0

    .line 66
    :cond_db
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jvc;->src:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto/16 :goto_37

    :cond_e2
    move v0, v2

    goto :goto_da

    :cond_e4
    move v0, v1

    goto :goto_81
.end method
