.class public Lorg/apache/tools/ant/taskdefs/Rmic;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Rmic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Rmic$ImplementationSpecificArgument;
    }
.end annotation


# static fields
.field public static final ERROR_BASE_NOT_SET:Ljava/lang/String; = "base or destdir attribute must be set!"

.field public static final ERROR_LOADING_CAUSED_EXCEPTION:Ljava/lang/String; = ". Loading caused Exception: "

.field public static final ERROR_NOT_A_DIR:Ljava/lang/String; = "base or destdir is not a directory:"

.field public static final ERROR_NOT_DEFINED:Ljava/lang/String; = ". It is not defined."

.field public static final ERROR_NOT_FOUND:Ljava/lang/String; = ". It could not be found."

.field public static final ERROR_NO_BASE_EXISTS:Ljava/lang/String; = "base or destdir does not exist: "

.field public static final ERROR_RMIC_FAILED:Ljava/lang/String; = "Rmic failed; see the compiler error output for details."

.field public static final ERROR_UNABLE_TO_VERIFY_CLASS:Ljava/lang/String; = "Unable to verify class "

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private baseDir:Ljava/io/File;

.field private classname:Ljava/lang/String;

.field private compileClasspath:Lorg/apache/tools/ant/types/Path;

.field private compileList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private debug:Z

.field private destDir:Ljava/io/File;

.field private executable:Ljava/lang/String;

.field private extDirs:Lorg/apache/tools/ant/types/Path;

.field private facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

.field private filtering:Z

.field private idl:Z

.field private idlOpts:Ljava/lang/String;

.field private iiop:Z

.field private iiopOpts:Ljava/lang/String;

.field private includeAntRuntime:Z

.field private includeJavaRuntime:Z

.field private listFiles:Z

.field private loader:Lorg/apache/tools/ant/AntClassLoader;

.field private nestedAdapter:Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

.field private sourceBase:Ljava/io/File;

.field private stubVersion:Ljava/lang/String;

.field private verify:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 110
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Rmic;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 119
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->verify:Z

    .line 120
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->filtering:Z

    .line 122
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiop:Z

    .line 124
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idl:Z

    .line 126
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->debug:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->includeAntRuntime:Z

    .line 128
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->includeJavaRuntime:Z

    .line 130
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    .line 132
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 135
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->executable:Ljava/lang/String;

    .line 137
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->listFiles:Z

    .line 139
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    .line 145
    new-instance v0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    const-string v1, "default"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    .line 146
    return-void
.end method

.method private isValidRmiRemote(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .line 808
    const-class v0, Ljava/rmi/Remote;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$scanDir$1(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 761
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$scanDir$2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 762
    const/4 v0, 0x0

    const-string v1, ".class"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private moveGeneratedFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    invoke-interface {p4}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 706
    if-nez v1, :cond_24

    .line 740
    :cond_23
    return-void

    .line 710
    :cond_24
    array-length v2, v1

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v2, :cond_23

    aget-object v3, v1, v0

    .line 711
    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 738
    :cond_32
    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 716
    :cond_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    const-string v5, ".class"

    invoke-static {v3, v5}, Lorg/apache/tools/ant/util/StringUtils;->removeSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".java"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 719
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 720
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 725
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 727
    :try_start_5c
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->filtering:Z

    if-eqz v3, :cond_a6

    .line 728
    sget-object v3, Lorg/apache/tools/ant/taskdefs/Rmic;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    new-instance v6, Lorg/apache/tools/ant/types/FilterSetCollection;

    .line 729
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/tools/ant/Project;->getGlobalFilterSet()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/tools/ant/types/FilterSetCollection;-><init>(Lorg/apache/tools/ant/types/FilterSet;)V

    .line 728
    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;)V

    .line 733
    :goto_72
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_75} :catch_76

    goto :goto_32

    .line 734
    :catch_76
    move-exception v0

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to copy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 737
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 731
    :cond_a6
    :try_start_a6
    sget-object v3, Lorg/apache/tools/ant/taskdefs/Rmic;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v3, v4, v5}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_ab} :catch_76

    goto :goto_72
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;)V
    .registers 4

    .line 585
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    if-nez v0, :cond_7

    .line 588
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    .line 589
    return-void

    .line 586
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can\'t have more than one rmic adapter"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected cleanup()V
    .registers 2

    .line 689
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_a

    .line 690
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 693
    :cond_a
    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    monitor-enter p0

    .line 295
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_10

    .line 296
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 298
    :cond_10
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 294
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createCompilerArg()Lorg/apache/tools/ant/taskdefs/Rmic$ImplementationSpecificArgument;
    .registers 3

    .line 521
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Rmic$ImplementationSpecificArgument;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Rmic$ImplementationSpecificArgument;-><init>(Lorg/apache/tools/ant/taskdefs/Rmic;)V

    .line 522
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->addImplementationArgument(Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;)V

    .line 523
    return-object v0
.end method

.method public createCompilerClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 565
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementationClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createExtdirs()Lorg/apache/tools/ant/types/Path;
    .registers 3

    monitor-enter p0

    .line 470
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->extDirs:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_10

    .line 471
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->extDirs:Lorg/apache/tools/ant/types/Path;

    .line 473
    :cond_10
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->extDirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 469
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v7, 0x1

    .line 600
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 602
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getOutputDir()Ljava/io/File;

    move-result-object v2

    .line 603
    if-eqz v2, :cond_15b

    .line 606
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_140

    .line 610
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 613
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->verify:Z

    if-eqz v0, :cond_22

    .line 614
    const-string v0, "Verify has been turned on."

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    .line 616
    :cond_22
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    if-eqz v0, :cond_b4

    move-object v1, v0

    .line 621
    :goto_27
    invoke-interface {v1, p0}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;->setRmic(Lorg/apache/tools/ant/taskdefs/Rmic;)V

    .line 623
    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 624
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 628
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->classname:Ljava/lang/String;

    if-nez v0, :cond_c3

    .line 629
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->baseDir:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 630
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->baseDir:Ljava/io/File;

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v4}, Lorg/apache/tools/ant/taskdefs/Rmic;->scanDir(Ljava/io/File;[Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 646
    :goto_4f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    .line 647
    if-lez v3, :cond_94

    .line 648
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RMI Compiling "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " class"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_fc

    .line 649
    if-le v3, v7, :cond_10a

    const-string v0, "es"

    :goto_6d
    :try_start_6d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    .line 652
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->listFiles:Z

    if-eqz v0, :cond_8e

    .line 653
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/Rmic;)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    .line 657
    :cond_8e
    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;->execute()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 666
    :cond_94
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->sourceBase:Ljava/io/File;

    if-eqz v0, :cond_b0

    invoke-virtual {v2, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    if-lez v3, :cond_b0

    .line 668
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idl:Z

    if-eqz v0, :cond_11a

    .line 669
    const-string v0, "Cannot determine sourcefiles in idl mode, "

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    .line 671
    const-string v0, "sourcebase attribute will be ignored."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V
    :try_end_b0
    .catchall {:try_start_6d .. :try_end_b0} :catchall_fc

    .line 679
    :cond_b0
    :goto_b0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->cleanup()V

    .line 680
    return-void

    .line 617
    :cond_b4
    :try_start_b4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getCompiler()Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->createCompilerClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 617
    invoke-static {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapterFactory;->getRmic(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_27

    .line 633
    :cond_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->classname:Ljava/lang/String;

    const/16 v4, 0x2e

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".class"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->baseDir:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 636
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_101

    .line 637
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->baseDir:Ljava/io/File;

    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {p0, v3, v5, v4}, Lorg/apache/tools/ant/taskdefs/Rmic;->scanDir(Ljava/io/File;[Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)V
    :try_end_fa
    .catchall {:try_start_b4 .. :try_end_fa} :catchall_fc

    goto/16 :goto_4f

    .line 679
    :catchall_fc
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->cleanup()V

    .line 680
    throw v0

    .line 643
    :cond_101
    :try_start_101
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->classname:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_108
    .catchall {:try_start_101 .. :try_end_108} :catchall_fc

    goto/16 :goto_4f

    .line 649
    :cond_10a
    const-string v0, ""

    goto/16 :goto_6d

    .line 658
    :cond_10e
    :try_start_10e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Rmic failed; see the compiler error output for details."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 674
    :cond_11a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/Rmic;Ljava/io/File;Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_b0

    .line 611
    :cond_125
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "base or destdir is not a directory:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 607
    :cond_140
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "base or destdir does not exist: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 604
    :cond_15b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "base or destdir attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_167
    .catchall {:try_start_10e .. :try_end_167} :catchall_fc
.end method

.method public getBase()Ljava/io/File;
    .registers 2

    .line 192
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->baseDir:Ljava/io/File;

    return-object v0
.end method

.method public getClassname()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 315
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getCompileList()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    return-object v0
.end method

.method public getCompiler()Ljava/lang/String;
    .registers 4

    .line 511
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "build.rmic"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setMagicValue(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCompilerArgs()[Ljava/lang/String;
    .registers 2

    .line 532
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getCompiler()Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getArgs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDebug()Z
    .registers 2

    .line 275
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->debug:Z

    return v0
.end method

.method public getDestdir()Ljava/io/File;
    .registers 2

    .line 171
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->destDir:Ljava/io/File;

    return-object v0
.end method

.method public getExecutable()Ljava/lang/String;
    .registers 2

    .line 554
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->executable:Ljava/lang/String;

    return-object v0
.end method

.method public getExtdirs()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 482
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->extDirs:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getFileList()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    return-object v0
.end method

.method public getFiltering()Z
    .registers 2

    .line 258
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->filtering:Z

    return v0
.end method

.method public getIdl()Z
    .registers 2

    .line 386
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idl:Z

    return v0
.end method

.method public getIdlopts()Ljava/lang/String;
    .registers 2

    .line 402
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idlOpts:Ljava/lang/String;

    return-object v0
.end method

.method public getIiop()Z
    .registers 2

    .line 352
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiop:Z

    return v0
.end method

.method public getIiopopts()Ljava/lang/String;
    .registers 2

    .line 368
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiopOpts:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeantruntime()Z
    .registers 2

    .line 429
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->includeAntRuntime:Z

    return v0
.end method

.method public getIncludejavaruntime()Z
    .registers 2

    .line 449
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->includeJavaRuntime:Z

    return v0
.end method

.method public getLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 816
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->loader:Lorg/apache/tools/ant/AntClassLoader;

    return-object v0
.end method

.method public getOutputDir()Ljava/io/File;
    .registers 2

    .line 181
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getDestdir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getDestdir()Ljava/io/File;

    move-result-object v0

    .line 184
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getBase()Ljava/io/File;

    move-result-object v0

    goto :goto_a
.end method

.method public getRemoteInterface(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 799
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 800
    const-class v1, Ljava/rmi/Remote;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda5;

    const-class v2, Ljava/rmi/Remote;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 799
    return-object v0
.end method

.method public getSourceBase()Ljava/io/File;
    .registers 2

    .line 225
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->sourceBase:Ljava/io/File;

    return-object v0
.end method

.method public getStubVersion()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->stubVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVerify()Z
    .registers 2

    .line 334
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->verify:Z

    return v0
.end method

.method public isValidRmiRemote(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 773
    :try_start_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 775
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiop:Z

    if-nez v3, :cond_16

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idl:Z

    if-eqz v3, :cond_1d

    :cond_16
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->isValidRmiRemote(Ljava/lang/Class;)Z
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_19} :catch_5b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_19} :catch_40
    .catchall {:try_start_2 .. :try_end_19} :catchall_1e

    move-result v2

    if-eqz v2, :cond_1d

    move v0, v1

    .line 786
    :cond_1d
    :goto_1d
    return v0

    .line 782
    :catchall_1e
    move-exception v2

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to verify class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Loading caused Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 783
    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    goto :goto_1d

    .line 779
    :catch_40
    move-exception v2

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to verify class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". It is not defined."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    goto :goto_1d

    .line 776
    :catch_5b
    move-exception v2

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to verify class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". It could not be found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    goto :goto_1d
.end method

.method public synthetic lambda$execute$0$Rmic(Ljava/io/File;Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;Ljava/lang/String;)V
    .registers 5

    .line 674
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->sourceBase:Ljava/io/File;

    invoke-direct {p0, p1, v0, p3, p2}, Lorg/apache/tools/ant/taskdefs/Rmic;->moveGeneratedFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;)V

    return-void
.end method

.method protected scanDir(Ljava/io/File;[Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 7

    const/4 v2, 0x3

    .line 750
    .line 751
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idl:Z

    if-eqz v0, :cond_28

    .line 752
    const-string v0, "will leave uptodate test to rmic implementation in idl mode."

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    .line 761
    :goto_a
    invoke-static {p2}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda3;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda4;

    .line 762
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileList:Ljava/util/Vector;

    .line 763
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/Rmic$$ExternalSyntheticLambda0;-><init>(Ljava/util/Vector;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 764
    return-void

    .line 754
    :cond_28
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiop:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiopOpts:Ljava/lang/String;

    if-eqz v0, :cond_3e

    const-string v1, "-always"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 755
    const-string v0, "no uptodate test as -always option has been specified"

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    goto :goto_a

    .line 758
    :cond_3e
    new-instance v0, Lorg/apache/tools/ant/util/SourceFileScanner;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/SourceFileScanner;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 759
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getOutputDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1, p3}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_a
.end method

.method public setBase(Ljava/io/File;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->baseDir:Ljava/io/File;

    .line 154
    return-void
.end method

.method public setClassname(Ljava/lang/String;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->classname:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    monitor-enter p0

    .line 283
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_9

    .line 284
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->compileClasspath:Lorg/apache/tools/ant/types/Path;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_d

    .line 288
    :goto_7
    monitor-exit p0

    return-void

    .line 286
    :cond_9
    :try_start_9
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_7

    .line 282
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 307
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Rmic;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 308
    return-void
.end method

.method public setCompiler(Ljava/lang/String;)V
    .registers 3

    .line 500
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 501
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    .line 503
    :cond_b
    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    .line 267
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->debug:Z

    .line 268
    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->destDir:Ljava/io/File;

    .line 163
    return-void
.end method

.method public setExecutable(Ljava/lang/String;)V
    .registers 2

    .line 543
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->executable:Ljava/lang/String;

    .line 544
    return-void
.end method

.method public setExtdirs(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    monitor-enter p0

    .line 458
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->extDirs:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_9

    .line 459
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->extDirs:Lorg/apache/tools/ant/types/Path;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_d

    .line 463
    :goto_7
    monitor-exit p0

    return-void

    .line 461
    :cond_9
    :try_start_9
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_7

    .line 457
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFiltering(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->filtering:Z

    .line 251
    return-void
.end method

.method public setIdl(Z)V
    .registers 2

    .line 378
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idl:Z

    .line 379
    return-void
.end method

.method public setIdlopts(Ljava/lang/String;)V
    .registers 2

    .line 394
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->idlOpts:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setIiop(Z)V
    .registers 2

    .line 344
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiop:Z

    .line 345
    return-void
.end method

.method public setIiopopts(Ljava/lang/String;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->iiopOpts:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setIncludeantruntime(Z)V
    .registers 2

    .line 420
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->includeAntRuntime:Z

    .line 421
    return-void
.end method

.method public setIncludejavaruntime(Z)V
    .registers 2

    .line 440
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->includeJavaRuntime:Z

    .line 441
    return-void
.end method

.method public setListfiles(Z)V
    .registers 2

    .line 575
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->listFiles:Z

    .line 576
    return-void
.end method

.method public setSourceBase(Ljava/io/File;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->sourceBase:Ljava/io/File;

    .line 218
    return-void
.end method

.method public setStubVersion(Ljava/lang/String;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->stubVersion:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setVerify(Z)V
    .registers 2

    .line 326
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Rmic;->verify:Z

    .line 327
    return-void
.end method
