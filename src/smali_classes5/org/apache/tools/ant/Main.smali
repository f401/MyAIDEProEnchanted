.class public Lorg/apache/tools/ant/Main;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lorg/apache/tools/ant/launch/AntMain;


# static fields
.field public static final DEFAULT_BUILD_FILENAME:Ljava/lang/String; = "build.xml"

.field private static final LAUNCH_COMMANDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOPROPERTIES:Lorg/apache/tools/ant/property/GetProperty;

.field private static antVersion:Ljava/lang/String;

.field private static shortAntVersion:Ljava/lang/String;


# instance fields
.field private allowInput:Z

.field private buildFile:Ljava/io/File;

.field private final definedProps:Ljava/util/Properties;

.field private emacsMode:Z

.field private err:Ljava/io/PrintStream;

.field private final extraArguments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private inputHandlerClassname:Ljava/lang/String;

.field private isLogFileUsed:Z

.field private keepGoingMode:Z

.field private final listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loggerClassname:Ljava/lang/String;

.field private msgOutputLevel:I

.field private out:Ljava/io/PrintStream;

.field private projectHelp:Z

.field private final propertyFiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Z

.field private readyToRun:Z

.field private silent:Z

.field private final targets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private threadPriority:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x0

    .line 69
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-lib"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-cp"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "-noclasspath"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "--noclasspath"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "-nouserlib"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "-main"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/Main;->LAUNCH_COMMANDS:Ljava/util/Set;

    .line 159
    sget-object v0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda10;->INSTANCE:Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda10;

    sput-object v0, Lorg/apache/tools/ant/Main;->NOPROPERTIES:Lorg/apache/tools/ant/property/GetProperty;

    .line 1021
    sput-object v4, Lorg/apache/tools/ant/Main;->antVersion:Ljava/lang/String;

    .line 1026
    sput-object v4, Lorg/apache/tools/ant/Main;->shortAntVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    .line 83
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->out:Ljava/io/PrintStream;

    .line 86
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->err:Ljava/io/PrintStream;

    .line 89
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->targets:Ljava/util/Vector;

    .line 92
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->definedProps:Ljava/util/Properties;

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->listeners:Ljava/util/Vector;

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->propertyFiles:Ljava/util/Vector;

    .line 101
    iput-boolean v3, p0, Lorg/apache/tools/ant/Main;->allowInput:Z

    .line 104
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->keepGoingMode:Z

    .line 111
    iput-object v2, p0, Lorg/apache/tools/ant/Main;->loggerClassname:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lorg/apache/tools/ant/Main;->inputHandlerClassname:Ljava/lang/String;

    .line 122
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->emacsMode:Z

    .line 127
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->silent:Z

    .line 133
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->readyToRun:Z

    .line 139
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    .line 145
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->isLogFileUsed:Z

    .line 150
    iput-object v2, p0, Lorg/apache/tools/ant/Main;->threadPriority:Ljava/lang/Integer;

    .line 155
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->proxy:Z

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->extraArguments:Ljava/util/Map;

    .line 282
    return-void
.end method

.method protected constructor <init>([Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    .line 83
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->out:Ljava/io/PrintStream;

    .line 86
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->err:Ljava/io/PrintStream;

    .line 89
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->targets:Ljava/util/Vector;

    .line 92
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->definedProps:Ljava/util/Properties;

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->listeners:Ljava/util/Vector;

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->propertyFiles:Ljava/util/Vector;

    .line 101
    iput-boolean v3, p0, Lorg/apache/tools/ant/Main;->allowInput:Z

    .line 104
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->keepGoingMode:Z

    .line 111
    iput-object v2, p0, Lorg/apache/tools/ant/Main;->loggerClassname:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lorg/apache/tools/ant/Main;->inputHandlerClassname:Ljava/lang/String;

    .line 122
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->emacsMode:Z

    .line 127
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->silent:Z

    .line 133
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->readyToRun:Z

    .line 139
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    .line 145
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->isLogFileUsed:Z

    .line 150
    iput-object v2, p0, Lorg/apache/tools/ant/Main;->threadPriority:Ljava/lang/Integer;

    .line 155
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->proxy:Z

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->extraArguments:Ljava/util/Map;

    .line 297
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/Main;->processArgs([Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method private addInputHandler(Lorg/apache/tools/ant/Project;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->inputHandlerClassname:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 919
    new-instance v0, Lorg/apache/tools/ant/input/DefaultInputHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/input/DefaultInputHandler;-><init>()V

    .line 926
    :goto_9
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->setInputHandler(Lorg/apache/tools/ant/input/InputHandler;)V

    .line 927
    return-void

    .line 921
    :cond_d
    const-class v1, Lorg/apache/tools/ant/Main;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lorg/apache/tools/ant/input/InputHandler;

    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/input/InputHandler;

    .line 924
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method private createLogger()Lorg/apache/tools/ant/BuildLogger;
    .registers 5

    const/4 v1, 0x1

    .line 936
    iget-boolean v0, p0, Lorg/apache/tools/ant/Main;->silent:Z

    if-eqz v0, :cond_23

    .line 938
    new-instance v0, Lorg/apache/tools/ant/listener/SilentLogger;

    invoke-direct {v0}, Lorg/apache/tools/ant/listener/SilentLogger;-><init>()V

    .line 939
    iput v1, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    .line 940
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->emacsMode:Z

    .line 956
    :goto_e
    iget v1, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/BuildLogger;->setMessageOutputLevel(I)V

    .line 957
    iget-object v1, p0, Lorg/apache/tools/ant/Main;->out:Ljava/io/PrintStream;

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/BuildLogger;->setOutputPrintStream(Ljava/io/PrintStream;)V

    .line 958
    iget-object v1, p0, Lorg/apache/tools/ant/Main;->err:Ljava/io/PrintStream;

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/BuildLogger;->setErrorPrintStream(Ljava/io/PrintStream;)V

    .line 959
    iget-boolean v1, p0, Lorg/apache/tools/ant/Main;->emacsMode:Z

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/BuildLogger;->setEmacsMode(Z)V

    .line 961
    return-object v0

    .line 941
    :cond_23
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->loggerClassname:Ljava/lang/String;

    if-eqz v0, :cond_5c

    .line 943
    :try_start_27
    const-class v1, Lorg/apache/tools/ant/Main;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lorg/apache/tools/ant/BuildLogger;

    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/BuildLogger;
    :try_end_35
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_27 .. :try_end_35} :catch_36

    goto :goto_e

    .line 946
    :catch_36
    move-exception v0

    .line 947
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The specified logger class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/Main;->loggerClassname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could not be used because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 947
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 950
    throw v0

    .line 953
    :cond_5c
    new-instance v0, Lorg/apache/tools/ant/DefaultLogger;

    invoke-direct {v0}, Lorg/apache/tools/ant/DefaultLogger;-><init>()V

    goto :goto_e
.end method

.method private findBuildFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 687
    iget v0, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_20

    .line 688
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Searching for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 691
    :cond_20
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 695
    :goto_33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_40

    .line 697
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/Main;->getParentFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 701
    if-nez v1, :cond_41

    .line 702
    const/4 v0, 0x0

    .line 709
    :cond_40
    return-object v0

    .line 706
    :cond_41
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_33
.end method

.method private static findTargetPosition(Ljava/util/Vector;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1193
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1195
    const/4 v1, 0x0

    move v2, v3

    :goto_6
    if-ge v1, v3, :cond_1b

    if-ne v2, v3, :cond_1b

    .line 1196
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1c

    move v0, v1

    .line 1195
    :goto_17
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_6

    .line 1200
    :cond_1b
    return v2

    :cond_1c
    move v0, v2

    goto :goto_17
.end method

.method public static getAntVersion()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-class v0, Lorg/apache/tools/ant/Main;

    monitor-enter v0

    .line 1039
    :try_start_3
    sget-object v0, Lorg/apache/tools/ant/Main;->antVersion:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_54

    if-nez v0, :cond_45

    .line 1041
    :try_start_7
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1042
    const-class v1, Lorg/apache/tools/ant/Main;

    const-string v2, "/org/apache/tools/ant/version.txt"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1044
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1045
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1046
    const-string v1, "VERSION"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/tools/ant/Main;->shortAntVersion:Ljava/lang/String;

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apache Ant(TM) version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/tools/ant/Main;->shortAntVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " compiled on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    const-string v2, "DATE"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/Main;->antVersion:Ljava/lang/String;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_45} :catch_59
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_45} :catch_4b
    .catchall {:try_start_7 .. :try_end_45} :catchall_54

    .line 1058
    :cond_45
    :try_start_45
    sget-object v0, Lorg/apache/tools/ant/Main;->antVersion:Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_54

    const-class v1, Lorg/apache/tools/ant/Main;

    monitor-exit v1

    return-object v0

    .line 1054
    :catch_4b
    move-exception v0

    .line 1055
    :try_start_4c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Could not load the version information."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_54

    .line 1038
    :catchall_54
    move-exception v0

    const-class v1, Lorg/apache/tools/ant/Main;

    monitor-exit v1

    throw v0

    .line 1051
    :catch_59
    move-exception v0

    .line 1052
    :try_start_5a
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load the version information:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_75
    .catchall {:try_start_5a .. :try_end_75} :catchall_54
.end method

.method private getParentFile(Ljava/io/File;)Ljava/io/File;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 662
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 664
    if-eqz v0, :cond_25

    iget v1, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_25

    .line 665
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Searching in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 668
    :cond_25
    return-object v0
.end method

.method public static getShortAntVersion()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1073
    sget-object v0, Lorg/apache/tools/ant/Main;->shortAntVersion:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1074
    invoke-static {}, Lorg/apache/tools/ant/Main;->getAntVersion()Ljava/lang/String;

    .line 1076
    :cond_7
    sget-object v0, Lorg/apache/tools/ant/Main;->shortAntVersion:Ljava/lang/String;

    return-object v0
.end method

.method private handleArgBuildFile([Ljava/lang/String;I)I
    .registers 8

    .line 514
    :try_start_0
    new-instance v0, Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_2} :catch_14

    add-int/lit8 v1, p2, 0x1

    aget-object v2, p1, v1

    :try_start_6
    sget-char v3, Ljava/io/File;->separatorChar:C

    .line 515
    const/16 v4, 0x2f

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;
    :try_end_13
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_13} :catch_14

    .line 519
    return v1

    .line 516
    :catch_14
    move-exception v0

    .line 517
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must specify a buildfile when using the -buildfile argument"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleArgDefine([Ljava/lang/String;I)I
    .registers 7

    .line 548
    aget-object v0, p1, p2

    .line 549
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 551
    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 552
    if-lez v2, :cond_20

    .line 553
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 561
    :goto_1a
    iget-object v2, p0, Lorg/apache/tools/ant/Main;->definedProps:Ljava/util/Properties;

    invoke-virtual {v2, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    return p2

    .line 555
    :cond_20
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_2a

    .line 556
    add-int/lit8 p2, p2, 0x1

    aget-object v0, p1, p2

    goto :goto_1a

    .line 558
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing value for property "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleArgInputHandler([Ljava/lang/String;I)I
    .registers 5

    .line 582
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->inputHandlerClassname:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 587
    add-int/lit8 v0, p2, 0x1

    :try_start_6
    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/apache/tools/ant/Main;->inputHandlerClassname:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_a} :catch_b

    .line 592
    return v0

    .line 588
    :catch_b
    move-exception v0

    .line 589
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must specify a classname when using the -inputhandler argument"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_14
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one input handler class may be specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleArgListener([Ljava/lang/String;I)I
    .registers 5

    .line 526
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->listeners:Ljava/util/Vector;

    add-int/lit8 v1, p2, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_c

    .line 527
    add-int/lit8 v0, p2, 0x1

    return v0

    .line 528
    :catch_c
    move-exception v0

    .line 529
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must specify a classname when using the -listener argument"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleArgLogger([Ljava/lang/String;I)I
    .registers 5

    .line 567
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->loggerClassname:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 572
    add-int/lit8 v0, p2, 0x1

    :try_start_6
    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/apache/tools/ant/Main;->loggerClassname:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_a} :catch_b

    .line 576
    return v0

    .line 573
    :catch_b
    move-exception v0

    .line 574
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must specify a classname when using the -logger argument"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_14
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one logger class may be specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleArgNice([Ljava/lang/String;I)I
    .registers 6

    .line 611
    add-int/lit8 v0, p2, 0x1

    :try_start_2
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/Main;->threadPriority:Ljava/lang/Integer;
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_a} :catch_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_a} :catch_24

    .line 619
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1c

    iget-object v1, p0, Lorg/apache/tools/ant/Main;->threadPriority:Ljava/lang/Integer;

    .line 622
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1c

    .line 626
    return v0

    .line 623
    :cond_1c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Niceness value is out of the range 1-10"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :catch_24
    move-exception v1

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized niceness value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :catch_3e
    move-exception v0

    .line 613
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must supply a niceness value (1-10) after the -nice option"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleArgPropertyFile([Ljava/lang/String;I)I
    .registers 6

    .line 599
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->propertyFiles:Ljava/util/Vector;

    add-int/lit8 v1, p2, 0x1

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 604
    return v1

    .line 600
    :catch_a
    move-exception v0

    .line 601
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must specify a property filename when using the -propertyfile argument"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleLogfile()V
    .registers 2

    .line 260
    iget-boolean v0, p0, Lorg/apache/tools/ant/Main;->isLogFileUsed:Z

    if-eqz v0, :cond_e

    .line 261
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 262
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 264
    :cond_e
    return-void
.end method

.method static synthetic lambda$processArgs$2(Ljava/lang/Class;)Ljava/util/List;
    .registers 2

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$removeDuplicateTargets$6(Ljava/util/Map;Ljava/lang/String;Lorg/apache/tools/ant/Target;)V
    .registers 5

    .line 1103
    invoke-virtual {p2}, Lorg/apache/tools/ant/Target;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Target;

    .line 1108
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_21

    .line 1109
    :cond_1a
    invoke-virtual {p2}, Lorg/apache/tools/ant/Target;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    :cond_21
    return-void
.end method

.method static synthetic lambda$removeDuplicateTargets$7(Lorg/apache/tools/ant/Target;)Lorg/apache/tools/ant/Target;
    .registers 1

    .line 1113
    return-object p0
.end method

.method static synthetic lambda$removeDuplicateTargets$8(Lorg/apache/tools/ant/Target;Lorg/apache/tools/ant/Target;)Lorg/apache/tools/ant/Target;
    .registers 2

    .line 1113
    return-object p1
.end method

.method static synthetic lambda$setProperties$5(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 866
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadPropertyFiles()V
    .registers 8

    .line 635
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->propertyFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 636
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 637
    const/4 v1, 0x0

    :try_start_18
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_4e

    move-result-object v1

    .line 638
    :try_start_25
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_47

    .line 639
    if-eqz v1, :cond_2d

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_4e

    .line 645
    :cond_2d
    :goto_2d
    invoke-virtual {v3}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda9;-><init>(Lorg/apache/tools/ant/Main;)V

    .line 646
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v3}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda4;-><init>(Lorg/apache/tools/ant/Main;Ljava/util/Properties;)V

    .line 647
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_6

    .line 637
    :catchall_47
    move-exception v4

    if-eqz v1, :cond_4d

    :try_start_4a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_72

    :cond_4d
    :goto_4d
    :try_start_4d
    throw v4
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 639
    :catch_4e
    move-exception v1

    .line 640
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not load property file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2d

    .line 637
    :catchall_72
    move-exception v1

    goto :goto_4d

    .line 649
    :cond_74
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 274
    invoke-static {p0, v0, v0}, Lorg/apache/tools/ant/Main;->start([Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)V

    .line 275
    return-void
.end method

.method private static printDescription(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 1087
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1088
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;)V

    .line 1090
    :cond_d
    return-void
.end method

.method private static printMessage(Ljava/lang/Throwable;)V
    .registers 3

    .line 169
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_b

    .line 171
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    :cond_b
    return-void
.end method

.method private static printTargets(Lorg/apache/tools/ant/Project;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 1228
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    .line 1230
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1231
    :goto_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gt v0, p5, :cond_16

    .line 1232
    invoke-virtual {v4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1234
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1235
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    move v1, v2

    .line 1237
    :goto_29
    if-ge v1, v6, :cond_8d

    .line 1238
    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    if-eqz p2, :cond_59

    .line 1241
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p5, v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    :cond_59
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    invoke-virtual {p3}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    invoke-virtual {p3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1247
    invoke-virtual {p3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1248
    const-string v7, ", "

    const-string v8, "   depends on: "

    invoke-static {v7, v8, v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1247
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    :cond_89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    .line 1251
    :cond_8d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1252
    return-void
.end method

.method private static printTargets(Lorg/apache/tools/ant/Project;ZZ)V
    .registers 15

    const/4 v6, 0x0

    .line 1128
    .line 1129
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getTargets()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/Main;->removeDuplicateTargets(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1132
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1133
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1134
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1135
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1136
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1138
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v6

    :cond_2b
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Target;

    .line 1139
    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1140
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2b

    .line 1143
    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getDescription()Ljava/lang/String;

    move-result-object v10

    .line 1145
    if-nez v10, :cond_58

    .line 1146
    invoke-static {v7, v9}, Lorg/apache/tools/ant/Main;->findTargetPosition(Ljava/util/Vector;Ljava/lang/String;)I

    move-result v10

    .line 1147
    invoke-virtual {v7, v9, v10}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1148
    if-eqz p2, :cond_2b

    .line 1149
    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getDependencies()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {v8, v0, v10}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_2b

    .line 1152
    :cond_58
    invoke-static {v1, v9}, Lorg/apache/tools/ant/Main;->findTargetPosition(Ljava/util/Vector;Ljava/lang/String;)I

    move-result v11

    .line 1153
    invoke-virtual {v1, v9, v11}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1154
    invoke-virtual {v2, v10, v11}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1155
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v5, :cond_6c

    .line 1156
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    .line 1158
    :cond_6c
    if-eqz p2, :cond_2b

    .line 1159
    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getDependencies()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {v3, v0, v11}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_2b

    .line 1164
    :cond_76
    const-string v4, "Main targets:"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/tools/ant/Main;->printTargets(Lorg/apache/tools/ant/Project;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;I)V

    .line 1168
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1169
    const/4 p1, 0x1

    .line 1168
    :cond_83
    if-eqz p1, :cond_8f

    .line 1172
    const/4 v2, 0x0

    const-string v4, "Other targets:"

    move-object v0, p0

    move-object v1, v7

    move-object v3, v8

    move v5, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/tools/ant/Main;->printTargets(Lorg/apache/tools/ant/Project;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;I)V

    .line 1171
    :cond_8f
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getDefaultTarget()Ljava/lang/String;

    move-result-object v0

    .line 1176
    if-eqz v0, :cond_af

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_af

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;)V

    .line 1176
    :cond_af
    return-void
.end method

.method private static printUsage()V
    .registers 3

    .line 968
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ant [options] [target [target2 [target3] ...]]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 969
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Options: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 970
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -help, -h              print this message and exit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -projecthelp, -p       print project help information and exit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 972
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -version               print the version information and exit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 973
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -diagnostics           print information that might be helpful to"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 974
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                         diagnose or report problems and exit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 975
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -quiet, -q             be extra quiet"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 976
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -silent, -S            print nothing but task outputs and build failures"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 977
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -verbose, -v           be extra verbose"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 978
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -debug, -d             print debugging information"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 979
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -emacs, -e             produce logging information without adornments"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 980
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -lib <path>            specifies a path to search for jars and classes"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 981
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -logfile <file>        use given file for log"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 982
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    -l     <file>                \'\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 983
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -logger <classname>    the class which is to perform logging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 984
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -listener <classname>  add an instance of class as a project listener"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 985
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -noinput               do not allow interactive input"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 986
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -buildfile <file>      use given buildfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 987
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    -file    <file>              \'\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 988
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    -f       <file>              \'\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 989
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -D<property>=<value>   use value for given property"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 990
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -keep-going, -k        execute all targets that do not depend"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 991
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                         on failed target(s)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 992
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -propertyfile <name>   load all properties from file with -D"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 993
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                         properties taking precedence"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 994
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -inputhandler <class>  the class which will handle input requests"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 995
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -find <file>           (s)earch for buildfile towards the root of"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 996
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    -s  <file>           the filesystem and use it"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 997
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -nice  number          A niceness value for the main thread:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 998
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                         1 (lowest) to 10 (highest); 5 is the default"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 999
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -nouserlib             Run ant without using the jar files from"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1000
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                         ${user.home}/.ant/lib"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1001
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -noclasspath           Run ant without using CLASSPATH"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1002
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -autoproxy             Java1.5+: use the OS proxy settings"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1003
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -main <class>          override Ant\'s normal entry point"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1004
    invoke-static {}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getInstance()Lorg/apache/tools/ant/ArgumentProcessorRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_108
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ArgumentProcessor;

    .line 1005
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0, v2}, Lorg/apache/tools/ant/ArgumentProcessor;->printUsage(Ljava/io/PrintStream;)V

    goto :goto_108

    .line 1007
    :cond_11a
    return-void
.end method

.method private static printVersion(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1015
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lorg/apache/tools/ant/Main;->getAntVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method private processArgs([Ljava/lang/String;)V
    .registers 16

    .line 310
    invoke-static {}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getInstance()Lorg/apache/tools/ant/ArgumentProcessorRegistry;

    move-result-object v9

    .line 322
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_b
    array-length v0, p1

    if-ge v7, v0, :cond_25a

    .line 323
    aget-object v10, p1, v7

    .line 325
    const-string v0, "-help"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "-h"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_20
    const/4 v4, 0x1

    move-object v0, v1

    .line 322
    :goto_22
    add-int/lit8 v7, v7, 0x1

    move-object v1, v0

    goto :goto_b

    .line 327
    :cond_26
    const-string v0, "-version"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 328
    const/4 v5, 0x1

    move-object v0, v1

    goto :goto_22

    .line 329
    :cond_31
    const-string v0, "-diagnostics"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 330
    const/4 v6, 0x1

    move-object v0, v1

    goto :goto_22

    .line 331
    :cond_3c
    const-string v0, "-quiet"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "-q"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 332
    :cond_4c
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    move-object v0, v1

    goto :goto_22

    .line 333
    :cond_51
    const-string v0, "-verbose"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "-v"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 334
    :cond_61
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    move-object v0, v1

    goto :goto_22

    .line 335
    :cond_66
    const-string v0, "-debug"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    const-string v0, "-d"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 336
    :cond_76
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    move-object v0, v1

    goto :goto_22

    .line 337
    :cond_7b
    const-string v0, "-silent"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string v0, "-S"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 338
    :cond_8b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->silent:Z

    move-object v0, v1

    goto :goto_22

    .line 339
    :cond_90
    const-string v0, "-noinput"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->allowInput:Z

    move-object v0, v1

    goto :goto_22

    .line 341
    :cond_9d
    const-string v0, "-logfile"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    const-string v0, "-l"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 343
    :cond_ad
    :try_start_ad
    new-instance v0, Ljava/io/File;

    add-int/lit8 v2, v7, 0x1

    aget-object v2, p1, v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    add-int/lit8 v7, v7, 0x1

    .line 348
    new-instance v2, Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v8}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->isLogFileUsed:Z
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_cb} :catch_251
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_ad .. :try_end_cb} :catch_248

    move-object v0, v1

    .line 359
    goto/16 :goto_22

    .line 360
    :cond_ce
    const-string v0, "-buildfile"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e6

    const-string v0, "-file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e6

    .line 361
    const-string v0, "-f"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 362
    :cond_e6
    invoke-direct {p0, p1, v7}, Lorg/apache/tools/ant/Main;->handleArgBuildFile([Ljava/lang/String;I)I

    move-result v7

    move-object v0, v1

    goto/16 :goto_22

    .line 363
    :cond_ed
    const-string v0, "-listener"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 364
    invoke-direct {p0, p1, v7}, Lorg/apache/tools/ant/Main;->handleArgListener([Ljava/lang/String;I)I

    move-result v7

    move-object v0, v1

    goto/16 :goto_22

    .line 365
    :cond_fc
    const-string v0, "-D"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 366
    invoke-direct {p0, p1, v7}, Lorg/apache/tools/ant/Main;->handleArgDefine([Ljava/lang/String;I)I

    move-result v7

    move-object v0, v1

    goto/16 :goto_22

    .line 367
    :cond_10b
    const-string v0, "-logger"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 368
    invoke-direct {p0, p1, v7}, Lorg/apache/tools/ant/Main;->handleArgLogger([Ljava/lang/String;I)I

    move-result v7

    move-object v0, v1

    goto/16 :goto_22

    .line 369
    :cond_11a
    const-string v0, "-inputhandler"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 370
    invoke-direct {p0, p1, v7}, Lorg/apache/tools/ant/Main;->handleArgInputHandler([Ljava/lang/String;I)I

    move-result v7

    move-object v0, v1

    goto/16 :goto_22

    .line 371
    :cond_129
    const-string v0, "-emacs"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_139

    const-string v0, "-e"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    :cond_139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->emacsMode:Z

    move-object v0, v1

    goto/16 :goto_22

    .line 373
    :cond_13f
    const-string v0, "-projecthelp"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14f

    const-string v0, "-p"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_155

    .line 375
    :cond_14f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    move-object v0, v1

    goto/16 :goto_22

    .line 376
    :cond_155
    const-string v0, "-find"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_165

    const-string v0, "-s"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    :cond_165
    const/4 v3, 0x1

    .line 379
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_245

    .line 380
    add-int/lit8 v1, v7, 0x1

    aget-object v0, p1, v1

    move v7, v1

    goto/16 :goto_22

    .line 382
    :cond_172
    const-string v0, "-propertyfile"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_181

    .line 383
    invoke-direct {p0, p1, v7}, Lorg/apache/tools/ant/Main;->handleArgPropertyFile([Ljava/lang/String;I)I

    move-result v7

    move-object v0, v1

    goto/16 :goto_22

    .line 384
    :cond_181
    const-string v0, "-k"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_191

    const-string v0, "-keep-going"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 385
    :cond_191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->keepGoingMode:Z

    move-object v0, v1

    goto/16 :goto_22

    .line 386
    :cond_197
    const-string v0, "-nice"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 387
    invoke-direct {p0, p1, v7}, Lorg/apache/tools/ant/Main;->handleArgNice([Ljava/lang/String;I)I

    move-result v7

    move-object v0, v1

    goto/16 :goto_22

    .line 388
    :cond_1a6
    sget-object v0, Lorg/apache/tools/ant/Main;->LAUNCH_COMMANDS:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_229

    .line 397
    const-string v0, "-autoproxy"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->proxy:Z

    move-object v0, v1

    goto/16 :goto_22

    .line 399
    :cond_1bc
    const-string v0, "-"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_221

    .line 400
    const/4 v8, 0x0

    .line 401
    invoke-virtual {v9}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1cd
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3cf

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ArgumentProcessor;

    .line 402
    invoke-interface {v0, p1, v7}, Lorg/apache/tools/ant/ArgumentProcessor;->readArguments([Ljava/lang/String;I)I

    move-result v12

    .line 403
    const/4 v13, -0x1

    if-eq v12, v13, :cond_1cd

    .line 404
    iget-object v8, p0, Lorg/apache/tools/ant/Main;->extraArguments:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v11, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda6;

    invoke-interface {v8, v0, v11}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 405
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    array-length v11, p1

    invoke-interface {v8, v12, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 406
    const/4 v0, 0x1

    .line 401
    :goto_1fb
    if-eqz v0, :cond_200

    move-object v0, v1

    .line 417
    goto/16 :goto_22

    .line 412
    :cond_200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lorg/apache/tools/ant/Main;->printUsage()V

    .line 415
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_221
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->targets:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_22

    .line 392
    :cond_229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ant\'s Main method is being handed an option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " that is only for the launcher class.\nThis can be caused by a version mismatch between the ant script/.bat file and Ant itself."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_245
    move-object v0, v1

    .line 379
    goto/16 :goto_22

    .line 355
    :catch_248
    move-exception v0

    .line 356
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must specify a log file when using the -log argument"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :catch_251
    move-exception v0

    .line 351
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot write on the specified log file. Make sure the path exists and you have write permissions."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_25a
    iget v0, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    const/4 v7, 0x3

    if-ge v0, v7, :cond_261

    if-eqz v5, :cond_264

    .line 424
    :cond_261
    invoke-static {v0}, Lorg/apache/tools/ant/Main;->printVersion(I)V

    .line 427
    :cond_264
    if-nez v4, :cond_26a

    if-nez v5, :cond_26a

    if-eqz v6, :cond_279

    .line 428
    :cond_26a
    if-eqz v4, :cond_26f

    .line 429
    invoke-static {}, Lorg/apache/tools/ant/Main;->printUsage()V

    .line 431
    :cond_26f
    if-eqz v6, :cond_278

    .line 432
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    invoke-static {v0, v1}, Lorg/apache/tools/ant/Diagnostics;->doReport(Ljava/io/PrintStream;I)V

    .line 505
    :cond_278
    :goto_278
    return-void

    .line 438
    :cond_279
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    if-nez v0, :cond_291

    .line 440
    if-eqz v3, :cond_33f

    .line 441
    if-eqz v1, :cond_2f4

    .line 442
    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/Main;->findBuildFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    .line 455
    :cond_28d
    :goto_28d
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    if-eqz v0, :cond_337

    .line 472
    :cond_291
    :goto_291
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3aa

    .line 477
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2b2

    .line 478
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    const-string v3, "build.xml"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_385

    .line 480
    iput-object v0, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    .line 488
    :cond_2b2
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    .line 492
    invoke-direct {p0}, Lorg/apache/tools/ant/Main;->loadPropertyFiles()V

    .line 494
    iget v0, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2e2

    .line 495
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buildfile: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 498
    :cond_2e2
    if-eqz v2, :cond_2f0

    .line 499
    iput-object v2, p0, Lorg/apache/tools/ant/Main;->out:Ljava/io/PrintStream;

    .line 500
    iput-object v2, p0, Lorg/apache/tools/ant/Main;->err:Ljava/io/PrintStream;

    .line 501
    invoke-static {v2}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 502
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 504
    :cond_2f0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->readyToRun:Z

    goto :goto_278

    .line 445
    :cond_2f4
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelperRepository;->getInstance()Lorg/apache/tools/ant/ProjectHelperRepository;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectHelperRepository;->getHelpers()Ljava/util/Iterator;

    move-result-object v1

    .line 447
    :cond_2fc
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ProjectHelper;

    .line 448
    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectHelper;->getDefaultBuildFile()Ljava/lang/String;

    move-result-object v0

    .line 449
    iget v3, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_321

    .line 450
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Searching the default build file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    :cond_321
    const-string v3, "user.dir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/apache/tools/ant/Main;->findBuildFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    .line 453
    if-nez v0, :cond_28d

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2fc

    goto/16 :goto_28d

    .line 456
    :cond_337
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Could not locate a build file!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_33f
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelperRepository;->getInstance()Lorg/apache/tools/ant/ProjectHelperRepository;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectHelperRepository;->getHelpers()Ljava/util/Iterator;

    move-result-object v1

    .line 462
    :cond_347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ProjectHelper;

    .line 463
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectHelper;->getDefaultBuildFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    .line 464
    iget v0, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_375

    .line 465
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying the default build file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    :cond_375
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_291

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_347

    goto/16 :goto_291

    .line 482
    :cond_385
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "What? Buildfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is a dir!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 483
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Build failed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_3aa
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buildfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Build failed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3cf
    move v0, v8

    goto/16 :goto_1fb
.end method

.method private static removeDuplicateTargets(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;"
        }
    .end annotation

    .line 1101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1102
    new-instance v1, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1112
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda7;->INSTANCE:Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda7;

    sget-object v2, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda8;->INSTANCE:Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda8;

    sget-object v3, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda3;

    .line 1113
    invoke-static {v1, v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1112
    return-object v0
.end method

.method private runBuild(Ljava/lang/ClassLoader;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v12, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 725
    iget-boolean v0, p0, Lorg/apache/tools/ant/Main;->readyToRun:Z

    if-nez v0, :cond_9

    .line 848
    :cond_8
    :goto_8
    return-void

    .line 729
    :cond_9
    invoke-static {}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getInstance()Lorg/apache/tools/ant/ArgumentProcessorRegistry;

    move-result-object v5

    .line 731
    invoke-virtual {v5}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ArgumentProcessor;

    .line 732
    iget-object v1, p0, Lorg/apache/tools/ant/Main;->extraArguments:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 733
    if-eqz v1, :cond_15

    .line 734
    invoke-interface {v0, v1}, Lorg/apache/tools/ant/ArgumentProcessor;->handleArg(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_8

    .line 740
    :cond_36
    new-instance v6, Lorg/apache/tools/ant/Project;

    invoke-direct {v6}, Lorg/apache/tools/ant/Project;-><init>()V

    .line 741
    invoke-virtual {v6, p1}, Lorg/apache/tools/ant/Project;->setCoreLoader(Ljava/lang/ClassLoader;)V

    .line 746
    :try_start_3e
    invoke-virtual {p0, v6}, Lorg/apache/tools/ant/Main;->addBuildListeners(Lorg/apache/tools/ant/Project;)V

    .line 747
    invoke-direct {p0, v6}, Lorg/apache/tools/ant/Main;->addInputHandler(Lorg/apache/tools/ant/Project;)V

    .line 749
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 750
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 751
    sget-object v9, Ljava/lang/System;->in:Ljava/io/InputStream;
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_4a} :catch_eb
    .catch Ljava/lang/Error; {:try_start_3e .. :try_end_4a} :catch_1f2
    .catchall {:try_start_3e .. :try_end_4a} :catchall_1f5

    .line 753
    :try_start_4a
    iget-boolean v0, p0, Lorg/apache/tools/ant/Main;->allowInput:Z

    if-eqz v0, :cond_53

    .line 754
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v6, v0}, Lorg/apache/tools/ant/Project;->setDefaultInputStream(Ljava/io/InputStream;)V

    .line 756
    :cond_53
    new-instance v0, Lorg/apache/tools/ant/DemuxInputStream;

    invoke-direct {v0, v6}, Lorg/apache/tools/ant/DemuxInputStream;-><init>(Lorg/apache/tools/ant/Project;)V

    invoke-static {v0}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V

    .line 757
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Lorg/apache/tools/ant/DemuxOutputStream;

    const/4 v10, 0x0

    invoke-direct {v1, v6, v10}, Lorg/apache/tools/ant/DemuxOutputStream;-><init>(Lorg/apache/tools/ant/Project;Z)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 758
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Lorg/apache/tools/ant/DemuxOutputStream;

    const/4 v10, 0x1

    invoke-direct {v1, v6, v10}, Lorg/apache/tools/ant/DemuxOutputStream;-><init>(Lorg/apache/tools/ant/Project;Z)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 761
    iget-boolean v0, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    if-nez v0, :cond_7e

    .line 762
    invoke-virtual {v6}, Lorg/apache/tools/ant/Project;->fireBuildStarted()V

    .line 766
    :cond_7e
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->threadPriority:Ljava/lang/Integer;
    :try_end_80
    .catchall {:try_start_4a .. :try_end_80} :catchall_e0

    if-eqz v0, :cond_a6

    .line 768
    :try_start_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting Ant\'s thread priority to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/Main;->threadPriority:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v6, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 770
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/Main;->threadPriority:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_a6
    .catch Ljava/lang/SecurityException; {:try_start_82 .. :try_end_a6} :catch_fd
    .catchall {:try_start_82 .. :try_end_a6} :catchall_e0

    .line 777
    :cond_a6
    :goto_a6
    :try_start_a6
    invoke-direct {p0, v6}, Lorg/apache/tools/ant/Main;->setProperties(Lorg/apache/tools/ant/Project;)V

    .line 779
    iget-boolean v0, p0, Lorg/apache/tools/ant/Main;->keepGoingMode:Z

    invoke-virtual {v6, v0}, Lorg/apache/tools/ant/Project;->setKeepGoingMode(Z)V

    .line 780
    iget-boolean v0, p0, Lorg/apache/tools/ant/Main;->proxy:Z

    if-eqz v0, :cond_ba

    .line 782
    new-instance v0, Lorg/apache/tools/ant/util/ProxySetup;

    invoke-direct {v0, v6}, Lorg/apache/tools/ant/util/ProxySetup;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 783
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ProxySetup;->enableProxies()V

    .line 786
    :cond_ba
    invoke-virtual {v5}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c2
    :goto_c2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_104

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ArgumentProcessor;

    .line 787
    iget-object v1, p0, Lorg/apache/tools/ant/Main;->extraArguments:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 788
    if-eqz v1, :cond_c2

    .line 789
    invoke-interface {v0, v6, v1}, Lorg/apache/tools/ant/ArgumentProcessor;->prepareConfigure(Lorg/apache/tools/ant/Project;Ljava/util/List;)V
    :try_end_df
    .catchall {:try_start_a6 .. :try_end_df} :catchall_e0

    goto :goto_c2

    .line 820
    :catchall_e0
    move-exception v0

    :try_start_e1
    invoke-static {v8}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 821
    invoke-static {v7}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 822
    invoke-static {v9}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V

    .line 823
    throw v0
    :try_end_eb
    .catch Ljava/lang/RuntimeException; {:try_start_e1 .. :try_end_eb} :catch_eb
    .catch Ljava/lang/Error; {:try_start_e1 .. :try_end_eb} :catch_1f2
    .catchall {:try_start_e1 .. :try_end_eb} :catchall_1f5

    .line 824
    :catch_eb
    move-exception v0

    .line 826
    :goto_ec
    :try_start_ec
    throw v0
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_ed

    .line 828
    :catchall_ed
    move-exception v1

    move-object v2, v0

    :goto_ef
    iget-boolean v0, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    if-eqz v0, :cond_1d0

    .line 844
    if-eqz v2, :cond_fc

    .line 845
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 843
    :cond_fc
    :goto_fc
    throw v1

    .line 771
    :catch_fd
    move-exception v0

    .line 773
    :try_start_fe
    const-string v0, "A security manager refused to set the -nice value"

    invoke-virtual {v6, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;)V

    goto :goto_a6

    .line 793
    :cond_104
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-static {v6, v0}, Lorg/apache/tools/ant/ProjectHelper;->configureProject(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    .line 795
    invoke-virtual {v5}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_111
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_155

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ArgumentProcessor;

    .line 796
    iget-object v1, p0, Lorg/apache/tools/ant/Main;->extraArguments:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 797
    if-eqz v1, :cond_111

    .line 798
    invoke-interface {v0, v6, v1}, Lorg/apache/tools/ant/ArgumentProcessor;->handleArg(Lorg/apache/tools/ant/Project;Ljava/util/List;)Z
    :try_end_12e
    .catchall {:try_start_fe .. :try_end_12e} :catchall_e0

    move-result v0

    if-eqz v0, :cond_111

    .line 820
    :try_start_131
    invoke-static {v8}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 821
    invoke-static {v7}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 822
    invoke-static {v9}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V
    :try_end_13a
    .catch Ljava/lang/RuntimeException; {:try_start_131 .. :try_end_13a} :catch_eb
    .catch Ljava/lang/Error; {:try_start_131 .. :try_end_13a} :catch_1f2
    .catchall {:try_start_131 .. :try_end_13a} :catchall_1f5

    .line 828
    iget-boolean v0, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    if-nez v0, :cond_8

    .line 830
    const/4 v0, 0x0

    :try_start_13f
    invoke-virtual {v6, v0}, Lorg/apache/tools/ant/Project;->fireBuildFinished(Ljava/lang/Throwable;)V
    :try_end_142
    .catchall {:try_start_13f .. :try_end_142} :catchall_144

    goto/16 :goto_8

    .line 831
    :catchall_144
    move-exception v0

    .line 834
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Caught an exception while logging the end of the build.  Exception was:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 842
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 804
    :cond_155
    :try_start_155
    iget-boolean v0, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    if-eqz v0, :cond_190

    .line 805
    invoke-static {v6}, Lorg/apache/tools/ant/Main;->printDescription(Lorg/apache/tools/ant/Project;)V

    .line 806
    iget v0, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_18c

    move v1, v3

    :goto_162
    if-le v0, v12, :cond_18e

    move v0, v3

    :goto_165
    invoke-static {v6, v1, v0}, Lorg/apache/tools/ant/Main;->printTargets(Lorg/apache/tools/ant/Project;ZZ)V
    :try_end_168
    .catchall {:try_start_155 .. :try_end_168} :catchall_e0

    .line 820
    :try_start_168
    invoke-static {v8}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 821
    invoke-static {v7}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 822
    invoke-static {v9}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V
    :try_end_171
    .catch Ljava/lang/RuntimeException; {:try_start_168 .. :try_end_171} :catch_eb
    .catch Ljava/lang/Error; {:try_start_168 .. :try_end_171} :catch_1f2
    .catchall {:try_start_168 .. :try_end_171} :catchall_1f5

    .line 828
    iget-boolean v0, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    if-nez v0, :cond_8

    .line 830
    const/4 v0, 0x0

    :try_start_176
    invoke-virtual {v6, v0}, Lorg/apache/tools/ant/Project;->fireBuildFinished(Ljava/lang/Throwable;)V
    :try_end_179
    .catchall {:try_start_176 .. :try_end_179} :catchall_17b

    goto/16 :goto_8

    .line 831
    :catchall_17b
    move-exception v0

    .line 834
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Caught an exception while logging the end of the build.  Exception was:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 842
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_18c
    move v1, v4

    .line 806
    goto :goto_162

    :cond_18e
    move v0, v4

    goto :goto_165

    .line 812
    :cond_190
    :try_start_190
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->targets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 813
    invoke-virtual {v6}, Lorg/apache/tools/ant/Project;->getDefaultTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a7

    .line 814
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->targets:Ljava/util/Vector;

    invoke-virtual {v6}, Lorg/apache/tools/ant/Project;->getDefaultTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 818
    :cond_1a7
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->targets:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Lorg/apache/tools/ant/Project;->executeTargets(Ljava/util/Vector;)V
    :try_end_1ac
    .catchall {:try_start_190 .. :try_end_1ac} :catchall_e0

    .line 820
    :try_start_1ac
    invoke-static {v8}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 821
    invoke-static {v7}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 822
    invoke-static {v9}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V
    :try_end_1b5
    .catch Ljava/lang/RuntimeException; {:try_start_1ac .. :try_end_1b5} :catch_eb
    .catch Ljava/lang/Error; {:try_start_1ac .. :try_end_1b5} :catch_1f2
    .catchall {:try_start_1ac .. :try_end_1b5} :catchall_1f5

    .line 823
    iget-boolean v0, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    if-nez v0, :cond_8

    .line 830
    const/4 v0, 0x0

    :try_start_1ba
    invoke-virtual {v6, v0}, Lorg/apache/tools/ant/Project;->fireBuildFinished(Ljava/lang/Throwable;)V
    :try_end_1bd
    .catchall {:try_start_1ba .. :try_end_1bd} :catchall_1bf

    goto/16 :goto_8

    .line 831
    :catchall_1bf
    move-exception v0

    .line 834
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Caught an exception while logging the end of the build.  Exception was:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 842
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 830
    :cond_1d0
    :try_start_1d0
    invoke-virtual {v6, v2}, Lorg/apache/tools/ant/Project;->fireBuildFinished(Ljava/lang/Throwable;)V
    :try_end_1d3
    .catchall {:try_start_1d0 .. :try_end_1d3} :catchall_1d5

    goto/16 :goto_fc

    .line 831
    :catchall_1d5
    move-exception v0

    .line 834
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Caught an exception while logging the end of the build.  Exception was:"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 837
    if-eqz v2, :cond_1ec

    .line 838
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "There has been an error prior to that:"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 842
    :cond_1ec
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 824
    :catch_1f2
    move-exception v0

    goto/16 :goto_ec

    .line 828
    :catchall_1f5
    move-exception v0

    move-object v1, v0

    goto/16 :goto_ef
.end method

.method private setProperties(Lorg/apache/tools/ant/Project;)V
    .registers 6

    .line 852
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->init()V

    .line 855
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 857
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/tools/ant/Main;->definedProps:Ljava/util/Properties;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 859
    sget-object v2, Lorg/apache/tools/ant/Main;->NOPROPERTIES:Lorg/apache/tools/ant/property/GetProperty;

    .line 862
    new-instance v3, Lorg/apache/tools/ant/property/ResolvePropertyMap;

    invoke-virtual {v0}, Lorg/apache/tools/ant/PropertyHelper;->getExpanders()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v3, p1, v2, v0}, Lorg/apache/tools/ant/property/ResolvePropertyMap;-><init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/property/GetProperty;Ljava/util/Collection;)V

    .line 863
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v0, v2}, Lorg/apache/tools/ant/property/ResolvePropertyMap;->resolveAllProperties(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 866
    new-instance v0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/Project;)V

    invoke-interface {v1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 868
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    .line 869
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 868
    const-string v1, "ant.file"

    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v0, "ant.file.type"

    const-string v1, "file"

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->targets:Ljava/util/Vector;

    .line 881
    const-string v1, ","

    invoke-static {v1, v0}, Lorg/apache/tools/ant/Main$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 880
    const-string v1, "ant.project.invoked-targets"

    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method public static start([Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)V
    .registers 4

    .line 189
    new-instance v0, Lorg/apache/tools/ant/Main;

    invoke-direct {v0}, Lorg/apache/tools/ant/Main;-><init>()V

    .line 190
    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/tools/ant/Main;->startAnt([Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)V

    .line 191
    return-void
.end method


# virtual methods
.method protected addBuildListeners(Lorg/apache/tools/ant/Project;)V
    .registers 7

    .line 894
    invoke-direct {p0}, Lorg/apache/tools/ant/Main;->createLogger()Lorg/apache/tools/ant/BuildLogger;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    .line 896
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 897
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, v2, :cond_31

    .line 898
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 899
    const-class v3, Lorg/apache/tools/ant/Main;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 900
    const-class v4, Lorg/apache/tools/ant/BuildListener;

    invoke-static {v0, v3, v4}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/BuildListener;

    .line 902
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    .line 904
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    .line 897
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 906
    :cond_31
    return-void
.end method

.method protected exit(I)V
    .registers 2

    .line 251
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 252
    return-void
.end method

.method public synthetic lambda$loadPropertyFiles$3$Main(Ljava/lang/String;)Z
    .registers 3

    .line 646
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->definedProps:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public synthetic lambda$loadPropertyFiles$4$Main(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 5

    .line 647
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->definedProps:Ljava/util/Properties;

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic lambda$startAnt$1$Main(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 5

    .line 216
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->definedProps:Ljava/util/Properties;

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startAnt([Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)V
    .registers 8

    const/4 v0, 0x1

    .line 206
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/Main;->processArgs([Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3d

    .line 212
    if-eqz p2, :cond_12

    .line 215
    invoke-virtual {p2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda5;-><init>(Lorg/apache/tools/ant/Main;Ljava/util/Properties;)V

    .line 216
    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 223
    :cond_12
    :try_start_12
    invoke-direct {p0, p3}, Lorg/apache/tools/ant/Main;->runBuild(Ljava/lang/ClassLoader;)V
    :try_end_15
    .catch Lorg/apache/tools/ant/ExitStatusException; {:try_start_12 .. :try_end_15} :catch_1d
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_12 .. :try_end_15} :catch_25
    .catchall {:try_start_12 .. :try_end_15} :catchall_35

    .line 224
    const/4 v0, 0x0

    .line 239
    :cond_16
    :goto_16
    invoke-direct {p0}, Lorg/apache/tools/ant/Main;->handleLogfile()V

    .line 241
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Main;->exit(I)V

    .line 242
    :goto_1c
    return-void

    .line 225
    :catch_1d
    move-exception v1

    .line 226
    :try_start_1e
    invoke-virtual {v1}, Lorg/apache/tools/ant/ExitStatusException;->getStatus()I

    move-result v0

    .line 227
    if-eqz v0, :cond_16

    .line 228
    throw v1
    :try_end_25
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1e .. :try_end_25} :catch_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_35

    .line 231
    :catch_25
    move-exception v1

    .line 232
    :try_start_26
    iget-object v2, p0, Lorg/apache/tools/ant/Main;->err:Ljava/io/PrintStream;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v2, v3, :cond_16

    .line 233
    invoke-static {v1}, Lorg/apache/tools/ant/Main;->printMessage(Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_30

    goto :goto_16

    .line 239
    :catchall_30
    move-exception v0

    invoke-direct {p0}, Lorg/apache/tools/ant/Main;->handleLogfile()V

    .line 240
    throw v0

    .line 235
    :catchall_35
    move-exception v1

    .line 236
    :try_start_36
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    invoke-static {v1}, Lorg/apache/tools/ant/Main;->printMessage(Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_30

    goto :goto_16

    .line 207
    :catchall_3d
    move-exception v1

    .line 208
    invoke-direct {p0}, Lorg/apache/tools/ant/Main;->handleLogfile()V

    .line 209
    invoke-static {v1}, Lorg/apache/tools/ant/Main;->printMessage(Ljava/lang/Throwable;)V

    .line 210
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Main;->exit(I)V

    goto :goto_1c
.end method
