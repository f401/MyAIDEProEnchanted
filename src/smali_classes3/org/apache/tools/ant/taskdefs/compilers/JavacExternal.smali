.class public Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;
.super Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;
.source "JavacExternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;-><init>()V

    return-void
.end method

.method private execOnVMS(Lorg/apache/tools/ant/types/Commandline;I)Z
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 119
    .line 121
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/util/JavaEnvUtils;->createVmsJavaOptionFile([Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 122
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getExecutable()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 125
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    const-string v6, "-V"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    aput-object v4, v5, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v5, p2, v3}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->executeExternalCompile([Ljava/lang/String;IZ)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v3

    if-nez v3, :cond_0

    .line 133
    :goto_0
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->delete(Ljava/io/File;)V

    .line 125
    return v0

    .line 129
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 130
    :goto_1
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Failed to create a temporary file for \"-V\" switch"

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->delete(Ljava/io/File;)V

    .line 134
    throw v0

    .line 129
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 133
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isArgFileEligible(Ljava/lang/String;)Z
    .registers 2

    .line 109
    const-string v0, "-J"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveArgFileEligibleOptionsToEnd([Ljava/lang/String;)I
    .registers 7

    .line 88
    const/4 v0, 0x1

    .line 89
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    .line 90
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->isArgFileEligible(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    add-int/lit8 v1, v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 95
    aget-object v2, p1, v1

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->isArgFileEligible(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    aget-object v2, p1, v1

    .line 97
    sub-int v3, v1, v0

    if-ltz v3, :cond_1

    .line 98
    add-int/lit8 v3, v0, 0x1

    sub-int v4, v1, v0

    invoke-static {p1, v0, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    :cond_1
    aput-object v2, p1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 94
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_3
    return v0
.end method


# virtual methods
.method public execute()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 45
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v3, "Using external javac compiler"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 47
    new-instance v3, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 48
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getJavacExecutable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->assumeJava1_3Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->setupModernJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;)Lorg/apache/tools/ant/types/Commandline;

    .line 55
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->assumeJava1_2Plus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->size()I

    move-result v0

    .line 57
    :goto_1
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    .line 61
    const-string v4, "openvms"

    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    invoke-direct {p0, v3, v0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->execOnVMS(Lorg/apache/tools/ant/types/Commandline;I)Z

    move-result v0

    .line 74
    :goto_2
    return v0

    .line 52
    :cond_0
    invoke-virtual {p0, v3, v2}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->setupJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;Z)Lorg/apache/tools/ant/types/Commandline;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 55
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->assumeJava1_2Plus()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->moveArgFileEligibleOptionsToEnd([Ljava/lang/String;)I

    move-result v1

    .line 74
    :cond_3
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/compilers/JavacExternal;->executeExternalCompile([Ljava/lang/String;IZ)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method
