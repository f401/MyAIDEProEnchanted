.class public Lorg/apache/tools/ant/taskdefs/compilers/Jikes;
.super Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;
.source "Jikes.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;-><init>()V

    return-void
.end method

.method private addPropertyParams(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 6

    const/4 v3, 0x1

    .line 178
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->project:Lorg/apache/tools/ant/Project;

    const-string v1, "build.compiler.emacs"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_1a

    invoke-static {v0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 180
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "+E"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 189
    :cond_1a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->project:Lorg/apache/tools/ant/Project;

    const-string v1, "build.compiler.warnings"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_41

    .line 191
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v2, "!! the build.compiler.warnings property is deprecated. !!"

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 193
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v2, "!! Use the nowarn attribute instead. !!"

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 194
    invoke-static {v0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 195
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nowarn"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 198
    :cond_41
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getNowarn()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 199
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-nowarn"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 205
    :cond_52
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->project:Lorg/apache/tools/ant/Project;

    const-string v1, "build.compiler.pedantic"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_6b

    invoke-static {v0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 207
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "+P"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 215
    :cond_6b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->project:Lorg/apache/tools/ant/Project;

    const-string v1, "build.compiler.fulldepend"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_84

    .line 217
    invoke-static {v0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 218
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "+F"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 220
    :cond_84
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

    .line 48
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v2, "Using jikes compiler"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 50
    new-instance v2, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 55
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_1ad

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    .line 62
    :goto_14
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 63
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "-sourcepath"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 67
    :cond_2a
    new-instance v3, Lorg/apache/tools/ant/types/Path;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v3, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 69
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 71
    :cond_3d
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->includeJavaRuntime:Z

    .line 78
    :cond_3f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->getCompileClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 81
    const-string v0, "jikes.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_58

    .line 83
    new-instance v4, Lorg/apache/tools/ant/types/Path;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v4, v5, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 86
    :cond_58
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->extdirs:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 87
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v4, "-extdirs"

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 91
    :cond_76
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getExecutable()Ljava/lang/String;

    move-result-object v0

    .line 92
    if-nez v0, :cond_82

    const-string v0, "jikes"

    :cond_82
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->deprecation:Z

    if-eqz v0, :cond_92

    .line 95
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v4, "-deprecation"

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 98
    :cond_92
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->destDir:Ljava/io/File;

    if-eqz v0, :cond_a8

    .line 99
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v4, "-d"

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->destDir:Ljava/io/File;

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 103
    :cond_a8
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v4, "-classpath"

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_ce

    .line 107
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "-encoding"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 110
    :cond_ce
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->debug:Z

    if-eqz v0, :cond_1bc

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getDebugLevel()Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_1b1

    .line 113
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-g:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 120
    :goto_f2
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->optimize:Z

    if-eqz v0, :cond_ff

    .line 121
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "-O"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 123
    :cond_ff
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->verbose:Z

    if-eqz v0, :cond_10c

    .line 124
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "-verbose"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 126
    :cond_10c
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->depend:Z

    if-eqz v0, :cond_119

    .line 127
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "-depend"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 130
    :cond_119
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->target:Ljava/lang/String;

    if-eqz v0, :cond_12f

    .line 131
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "-target"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->target:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 135
    :cond_12f
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->addPropertyParams(Lorg/apache/tools/ant/types/Commandline;)V

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17d

    .line 138
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "-source"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v3, "1.1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_159

    const-string v3, "1.2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c7

    .line 143
    :cond_159
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Jikes doesn\'t support \'-source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', will use \'-source 1.3\' instead"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "1.3"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 150
    :cond_17d
    :goto_17d
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->addCurrentCompilerArgs(Lorg/apache/tools/ant/types/Commandline;)V

    .line 152
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v0

    .line 154
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->getBootClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_19e

    .line 156
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v4

    const-string v5, "-bootclasspath"

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 159
    :cond_19e
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    .line 161
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->executeExternalCompile([Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1cf

    move v0, v1

    :goto_1ac
    return v0

    .line 58
    :cond_1ad
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Jikes;->src:Lorg/apache/tools/ant/types/Path;

    goto/16 :goto_14

    .line 115
    :cond_1b1
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "-g"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_f2

    .line 118
    :cond_1bc
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "-g:none"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_f2

    .line 147
    :cond_1c7
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_17d

    .line 161
    :cond_1cf
    const/4 v0, 0x0

    goto :goto_1ac
.end method
