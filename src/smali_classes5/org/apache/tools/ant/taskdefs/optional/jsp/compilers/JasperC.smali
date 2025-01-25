.class public Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;
.super Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/DefaultJspCompilerAdapter;
.source "JasperC.java"


# instance fields
.field mangler:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/DefaultJspCompilerAdapter;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->mangler:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;

    .line 55
    return-void
.end method

.method private getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 154
    if-nez v0, :cond_1a

    .line 155
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 156
    const-string v1, "only"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 158
    :goto_19
    return-object v0

    :cond_1a
    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    goto :goto_19
.end method

.method private isTomcat5x()Z
    .registers 3

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_b} :catch_1f

    move-result-object v1

    .line 166
    :try_start_c
    const-string v0, "org.apache.jasper.tagplugins.jstl.If"

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_18

    .line 167
    if-eqz v1, :cond_16

    :try_start_13
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_16} :catch_1f

    :cond_16
    const/4 v0, 0x1

    .line 169
    :goto_17
    return v0

    .line 165
    :catchall_18
    move-exception v0

    if-eqz v1, :cond_1e

    :try_start_1b
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_22

    :cond_1e
    :goto_1e
    :try_start_1e
    throw v0
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 168
    :catch_1f
    move-exception v0

    .line 169
    const/4 v0, 0x0

    goto :goto_17

    .line 165
    :catchall_22
    move-exception v1

    goto :goto_1e
.end method

.method private setupJasperCommand()Lorg/apache/tools/ant/types/CommandlineJava;
    .registers 5

    .line 110
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    .line 111
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v1

    .line 112
    const-string v2, "-d"

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getDestdir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/io/File;)V

    .line 113
    const-string v2, "-p"

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->isTomcat5x()Z

    move-result v2

    if-nez v2, :cond_99

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getVerbose()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;)V

    .line 123
    :goto_39
    const-string v2, "-uriroot"

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getUriroot()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/io/File;)V

    .line 124
    const-string v2, "-uribase"

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getUribase()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/io/File;)V

    .line 125
    const-string v2, "-ieplugin"

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getIeplugin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v2, "-webinc"

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getWebinc()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/io/File;)V

    .line 127
    const-string v2, "-webxml"

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getWebxml()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/io/File;)V

    .line 128
    const-string v2, "-die9"

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->isMapped()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 131
    const-string v2, "-mapped"

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;)V

    .line 133
    :cond_76
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getWebApp()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;

    move-result-object v2

    if-eqz v2, :cond_89

    .line 134
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getWebApp()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;->getDirectory()Ljava/io/File;

    move-result-object v1

    .line 135
    const-string v2, "-webapp"

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/io/File;)V

    .line 137
    :cond_89
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getCompileList()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->logAndAddFilesToCompile(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;Ljava/util/Vector;Lorg/apache/tools/ant/types/CommandlineJava;)V

    .line 138
    return-object v0

    .line 118
    :cond_99
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    const-string v3, "this task doesn\'t support Tomcat 5.x properly, please use the Tomcat provided jspc task instead"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;)V

    goto :goto_39
.end method


# virtual methods
.method public createMangler()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;
    .registers 2

    .line 146
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->mangler:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;

    return-object v0
.end method

.method public execute()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v6, 0x1

    .line 65
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v0

    const-string v1, "Using jasper compiler"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    .line 66
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->setupJasperCommand()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v0

    .line 71
    :try_start_f
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Java;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->owner:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 72
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    .line 73
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v3

    if-eqz v3, :cond_68

    .line 74
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "using user supplied classpath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 80
    :goto_3d
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 81
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Java;->setDir(Ljava/io/File;)V

    .line 82
    const-string v2, "org.apache.jasper.JspC"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getJavaCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_59} :catch_82
    .catchall {:try_start_f .. :try_end_59} :catchall_8a

    const/4 v0, 0x0

    :goto_5a
    if-ge v0, v3, :cond_93

    aget-object v4, v2, v0

    .line 85
    :try_start_5e
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 77
    :cond_68
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "using system classpath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_81} :catch_82
    .catchall {:try_start_5e .. :try_end_81} :catchall_8a

    goto :goto_3d

    .line 94
    :catch_82
    move-exception v0

    .line 95
    :try_start_83
    instance-of v1, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v1, :cond_b2

    .line 96
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    throw v0
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_8a

    .line 101
    :catchall_8a
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->deleteEmptyJavaFiles()V

    .line 102
    throw v0

    .line 87
    :cond_93
    :try_start_93
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getFailonerror()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setFailonerror(Z)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    .line 91
    const-string v0, "jasperc"

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setTaskName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Java;->execute()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_aa} :catch_82
    .catchall {:try_start_93 .. :try_end_aa} :catchall_8a

    .line 93
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->deleteEmptyJavaFiles()V

    return v6

    .line 98
    :cond_b2
    :try_start_b2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 99
    const-string v2, "Error running jsp compiler: "

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_c2
    .catchall {:try_start_b2 .. :try_end_c2} :catchall_8a
.end method
