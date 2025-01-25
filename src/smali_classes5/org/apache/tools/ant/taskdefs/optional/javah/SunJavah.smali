.class public Lorg/apache/tools/ant/taskdefs/optional/javah/SunJavah;
.super Ljava/lang/Object;
.source "SunJavah.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;


# static fields
.field public static final IMPLEMENTATION_NAME:Ljava/lang/String; = "sun"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setupJavahCommand(Lorg/apache/tools/ant/taskdefs/optional/Javah;)Lorg/apache/tools/ant/types/Commandline;
    .registers 5

    .line 74
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 76
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getDestdir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 77
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-d"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getDestdir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 81
    :cond_1f
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getOutputfile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 82
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-o"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getOutputfile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 86
    :cond_39
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 87
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-classpath"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 91
    :cond_53
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getVerbose()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 92
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-verbose"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 94
    :cond_62
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getOld()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 95
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-old"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 97
    :cond_71
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getForce()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 98
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-force"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 100
    :cond_80
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getStubs()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getOld()Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 105
    :cond_8c
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getStubs()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 106
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-stubs"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 108
    :cond_9b
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getBootclasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    if-eqz v2, :cond_b1

    .line 110
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getBootclasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 112
    :cond_b1
    const-string v2, "ignore"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->concatSystemBootClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v2

    if-lez v2, :cond_cd

    .line 114
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-bootclasspath"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 118
    :cond_cd
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getCurrentArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->addArguments([Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->logAndAddFiles(Lorg/apache/tools/ant/types/Commandline;)V

    .line 121
    return-object v0

    .line 101
    :cond_d8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "stubs only available in old mode."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method


# virtual methods
.method public compile(Lorg/apache/tools/ant/taskdefs/optional/Javah;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 49
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/javah/SunJavah;->setupJavahCommand(Lorg/apache/tools/ant/taskdefs/optional/Javah;)Lorg/apache/tools/ant/types/Commandline;

    move-result-object v1

    .line 50
    new-instance v2, Lorg/apache/tools/ant/taskdefs/ExecuteJava;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;-><init>()V

    .line 55
    :try_start_9
    const-string v0, "com.sun.tools.javah.oldjavah.Main"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_e} :catch_37

    move-result-object v0

    .line 63
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setJavaCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 66
    invoke-static {v0}, Lorg/apache/tools/ant/launch/Locator;->getClassSource(Ljava/lang/Class;)Ljava/io/File;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_2f

    .line 68
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 70
    :cond_2f
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->fork(Lorg/apache/tools/ant/ProjectComponent;)I

    move-result v0

    if-nez v0, :cond_3f

    const/4 v0, 0x1

    :goto_36
    return v0

    .line 56
    :catch_37
    move-exception v0

    .line 58
    :try_start_38
    const-string v0, "com.sun.tools.javah.Main"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_38 .. :try_end_3d} :catch_41

    move-result-object v0

    goto :goto_f

    .line 70
    :cond_3f
    const/4 v0, 0x0

    goto :goto_36

    .line 60
    :catch_41
    move-exception v0

    .line 61
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Can\'t load javah"

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method
