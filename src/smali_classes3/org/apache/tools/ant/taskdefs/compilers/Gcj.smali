.class public Lorg/apache/tools/ant/taskdefs/compilers/Gcj;
.super Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;
.source "Gcj.java"


# static fields
.field private static final CONFLICT_WITH_DASH_C:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-o"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "--main="

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-D"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "-fjni"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "-L"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->CONFLICT_WITH_DASH_C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, "Using gcj compiler"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->setupGCJCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v1

    .line 47
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    .line 49
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->executeExternalCompile([Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNativeBuild()Z
    .registers 8

    const/4 v2, 0x0

    .line 141
    .line 142
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCurrentCompilerArgs()[Ljava/lang/String;

    move-result-object v4

    move v0, v2

    move v3, v2

    .line 144
    :goto_0
    if-nez v0, :cond_1

    array-length v1, v4

    if-ge v3, v1, :cond_1

    move v1, v2

    .line 146
    :goto_1
    if-nez v0, :cond_0

    sget-object v5, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->CONFLICT_WITH_DASH_C:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 147
    aget-object v0, v4, v3

    aget-object v5, v5, v1

    .line 148
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    .line 152
    goto :goto_0

    .line 153
    :cond_1
    return v0
.end method

.method protected setupGCJCommand()Lorg/apache/tools/ant/types/Commandline;
    .registers 6

    .line 58
    new-instance v1, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 59
    new-instance v2, Lorg/apache/tools/ant/types/Path;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 63
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->getBootClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->extdirs:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->includeJavaRuntime:Z

    if-eqz v0, :cond_2

    .line 71
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Path;->addExtdirs(Lorg/apache/tools/ant/types/Path;)V

    .line 74
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->getCompileClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_b

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 84
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getExecutable()Ljava/lang/String;

    move-result-object v0

    .line 85
    if-nez v0, :cond_3

    const-string v0, "gcj"

    :cond_3
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->destDir:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 88
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "-d"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->destDir:Ljava/io/File;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 91
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->destDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->destDir:Ljava/io/File;

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->destDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 98
    :cond_4
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v3, "-classpath"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 102
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--encoding="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 104
    :cond_5
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->debug:Z

    if-eqz v0, :cond_6

    .line 105
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-g1"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 107
    :cond_6
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->optimize:Z

    if-eqz v0, :cond_7

    .line 108
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-O"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 115
    :cond_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->isNativeBuild()Z

    move-result v0

    if-nez v0, :cond_8

    .line 116
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-C"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 119
    :cond_8
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-fsource="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 124
    :cond_9
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 125
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-ftarget="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 129
    :cond_a
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->addCurrentCompilerArgs(Lorg/apache/tools/ant/types/Commandline;)V

    .line 131
    return-object v1

    .line 81
    :cond_b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/Gcj;->src:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto/16 :goto_0

    .line 93
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can\'t make output directories. Maybe permission is wrong."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
