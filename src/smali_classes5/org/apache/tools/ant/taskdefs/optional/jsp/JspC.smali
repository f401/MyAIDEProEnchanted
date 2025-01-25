.class public Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "JspC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;
    }
.end annotation


# static fields
.field private static final FAIL_MSG:Ljava/lang/String; = "Compile failed, messages should have been provided."


# instance fields
.field private classpath:Lorg/apache/tools/ant/types/Path;

.field protected compileList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private compilerClasspath:Lorg/apache/tools/ant/types/Path;

.field private compilerName:Ljava/lang/String;

.field private destDir:Ljava/io/File;

.field protected failOnError:Z

.field private iepluginid:Ljava/lang/String;

.field javaFiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mapped:Z

.field private packageName:Ljava/lang/String;

.field private src:Lorg/apache/tools/ant/types/Path;

.field private uriroot:Ljava/io/File;

.field private verbose:I

.field protected webApp:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;

.field private webinc:Ljava/io/File;

.field private webxml:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 73
    const-string v0, "jasper"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerName:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->verbose:I

    .line 82
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    .line 83
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->javaFiles:Ljava/util/Vector;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->failOnError:Z

    return-void
.end method

.method private doCompilation(Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 533
    invoke-interface {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;->setJspc(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;)V

    .line 536
    invoke-interface {p1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;->execute()Z

    move-result v0

    if-nez v0, :cond_13

    .line 537
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->failOnError:Z

    if-nez v0, :cond_14

    .line 540
    const-string v0, "Compile failed, messages should have been provided."

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    .line 542
    :cond_13
    return-void

    .line 538
    :cond_14
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Compile failed, messages should have been provided."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method private getActualDestDir()Ljava/io/File;
    .registers 5

    .line 520
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->packageName:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 521
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->destDir:Ljava/io/File;

    .line 523
    :goto_6
    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->destDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->packageName:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 524
    const/16 v3, 0x2e

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private isCompileNeeded(Ljava/io/File;Ljava/io/File;)Z
    .registers 10

    const/4 v6, 0x3

    const/4 v0, 0x1

    .line 598
    const/4 v1, 0x0

    .line 599
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_33

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compiling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because java file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-virtual {p0, v1, v6}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    .line 616
    :goto_32
    return v0

    .line 604
    :cond_33
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_64

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compiling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because it is out of date with respect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 606
    invoke-virtual {p0, v1, v6}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    goto :goto_32

    .line 610
    :cond_64
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_98

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compiling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because java file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-virtual {p0, v1, v6}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    goto :goto_32

    :cond_98
    move v0, v1

    goto :goto_32
.end method


# virtual methods
.method public addWebApp(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webApp:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;

    if-nez v0, :cond_7

    .line 389
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webApp:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;

    .line 393
    return-void

    .line 391
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one webapp can be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 292
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 293
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 295
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createCompilerclasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 339
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 340
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerClasspath:Lorg/apache/tools/ant/types/Path;

    .line 342
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public deleteEmptyJavaFiles()V
    .registers 7

    .line 643
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->javaFiles:Ljava/util/Vector;

    if-eqz v0, :cond_3c

    .line 644
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 645
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting empty output file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_8

    .line 651
    :cond_3c
    return-void
.end method

.method public execute()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->destDir:Ljava/io/File;

    if-eqz v0, :cond_151

    .line 434
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 440
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getActualDestDir()Ljava/io/File;

    move-result-object v3

    .line 442
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v4

    .line 444
    :try_start_19
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerName:Ljava/lang/String;

    .line 445
    invoke-static {v0, p0, v4}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapterFactory;->getCompiler(Ljava/lang/String;Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/AntClassLoader;)Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;

    move-result-object v5

    .line 449
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webApp:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;

    if-eqz v0, :cond_2c

    .line 450
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->doCompilation(Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_96

    .line 512
    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    .line 513
    :cond_2b
    :goto_2b
    return-void

    .line 455
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->src:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_123

    .line 459
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v6

    .line 460
    array-length v0, v6

    if-eqz v0, :cond_117

    .line 468
    invoke-interface {v5}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;->implementsOwnDependencyChecking()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 469
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->doCompilation(Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;)V
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_96

    .line 512
    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    goto :goto_2b

    .line 475
    :cond_46
    :try_start_46
    invoke-interface {v5}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;->createMangler()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;

    move-result-object v7

    .line 479
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->resetFileLists()V

    .line 481
    array-length v8, v6
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_96

    move v0, v1

    move v2, v1

    :goto_50
    if-ge v2, v8, :cond_9d

    aget-object v0, v6, v2

    .line 482
    :try_start_54
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 483
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 488
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v9

    .line 490
    array-length v0, v9

    .line 491
    invoke-virtual {p0, v1, v3, v7, v9}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->scanDir(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;[Ljava/lang/String;)V

    .line 481
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_50

    .line 484
    :cond_72
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srcdir \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" does not exist!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_96
    .catchall {:try_start_54 .. :try_end_96} :catchall_96

    .line 442
    :catchall_96
    move-exception v0

    if-eqz v4, :cond_9c

    :try_start_99
    invoke-virtual {v4}, Lorg/apache/tools/ant/AntClassLoader;->close()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_15d

    :cond_9c
    :goto_9c
    throw v0

    .line 496
    :cond_9d
    :try_start_9d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compiling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    .line 499
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_107

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Compiling "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " source file"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_e2
    .catchall {:try_start_9d .. :try_end_e2} :catchall_96

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_104

    const-string v0, ""

    :goto_e8
    :try_start_e8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;)V

    .line 505
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->doCompilation(Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;)V
    :try_end_fd
    .catchall {:try_start_e8 .. :try_end_fd} :catchall_96

    .line 512
    :goto_fd
    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    goto/16 :goto_2b

    .line 502
    :cond_104
    const-string v0, "s"

    goto :goto_e8

    .line 507
    :cond_107
    if-nez v0, :cond_110

    .line 508
    :try_start_109
    const-string v0, "there were no files to compile"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    goto :goto_fd

    .line 510
    :cond_110
    const-string v0, "all files are up to date"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    goto :goto_fd

    .line 461
    :cond_117
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 462
    const-string v1, "srcdir attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 456
    :cond_123
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 457
    const-string v1, "srcdir attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_12f
    .catchall {:try_start_109 .. :try_end_12f} :catchall_96

    .line 435
    :cond_12f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destination directory \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->destDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" does not exist or is not a directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 430
    :cond_151
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "destdir attribute must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 442
    :catchall_15d
    move-exception v1

    goto/16 :goto_9c
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 311
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->classpath:Lorg/apache/tools/ant/types/Path;

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

    .line 416
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    return-object v0
.end method

.method public getCompilerclasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 331
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerClasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getDestdir()Ljava/io/File;
    .registers 2

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->destDir:Ljava/io/File;

    return-object v0
.end method

.method public getFailonerror()Z
    .registers 2

    .line 201
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->failOnError:Z

    return v0
.end method

.method public getIeplugin()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->iepluginid:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcDir()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->src:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getUribase()Ljava/io/File;
    .registers 2

    .line 254
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->uriroot:Ljava/io/File;

    return-object v0
.end method

.method public getUriroot()Ljava/io/File;
    .registers 2

    .line 272
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->uriroot:Ljava/io/File;

    return-object v0
.end method

.method public getVerbose()I
    .registers 2

    .line 185
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->verbose:I

    return v0
.end method

.method public getWebApp()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;
    .registers 2

    .line 400
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webApp:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;

    return-object v0
.end method

.method public getWebinc()Ljava/io/File;
    .registers 2

    .line 376
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webinc:Ljava/io/File;

    return-object v0
.end method

.method public getWebxml()Ljava/io/File;
    .registers 2

    .line 359
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webxml:Ljava/io/File;

    return-object v0
.end method

.method public isMapped()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->mapped:Z

    return v0
.end method

.method protected mapToJavaFile(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .registers 7

    .line 630
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 631
    const/4 v0, 0x0

    .line 634
    :goto_d
    return-object v0

    .line 633
    :cond_e
    invoke-interface {p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;->mapJspToJavaName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 634
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_d
.end method

.method protected resetFileLists()V
    .registers 2

    .line 548
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 549
    return-void
.end method

.method protected scanDir(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;[Ljava/lang/String;)V
    .registers 15

    .line 562
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 564
    array-length v1, p4

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_4e

    aget-object v4, p4, v0

    .line 565
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0, p3, v5, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->mapToJavaFile(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 567
    if-nez v6, :cond_1c

    .line 564
    :cond_19
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 570
    :cond_1c
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-lez v7, :cond_39

    .line 571
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warning: file modified in the future: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {p0, v4, v7}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    .line 574
    :cond_39
    invoke-direct {p0, v5, v6}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->isCompileNeeded(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 575
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compileList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 576
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->javaFiles:Ljava/util/Vector;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_19

    .line 579
    :cond_4e
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 280
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 281
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 285
    :goto_6
    return-void

    .line 283
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 303
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 304
    return-void
.end method

.method public setCompiler(Ljava/lang/String;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerName:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setCompilerclasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 319
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 320
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->compilerClasspath:Lorg/apache/tools/ant/types/Path;

    .line 324
    :goto_6
    return-void

    .line 322
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setDestdir(Ljava/io/File;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->destDir:Ljava/io/File;

    .line 146
    return-void
.end method

.method public setFailonerror(Z)V
    .registers 2

    .line 194
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->failOnError:Z

    .line 195
    return-void
.end method

.method public setIeplugin(Ljava/lang/String;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->iepluginid:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setMapped(Z)V
    .registers 2

    .line 235
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->mapped:Z

    .line 236
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->packageName:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setSrcDir(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->src:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 125
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->src:Lorg/apache/tools/ant/types/Path;

    .line 129
    :goto_6
    return-void

    .line 127
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setUribase(Ljava/io/File;)V
    .registers 4

    .line 246
    const-string v0, "Uribase is currently an unused parameter"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    .line 247
    return-void
.end method

.method public setUriroot(Ljava/io/File;)V
    .registers 2

    .line 264
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->uriroot:Ljava/io/File;

    .line 265
    return-void
.end method

.method public setVerbose(I)V
    .registers 2

    .line 177
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->verbose:I

    .line 178
    return-void
.end method

.method public setWebinc(Ljava/io/File;)V
    .registers 2

    .line 368
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webinc:Ljava/io/File;

    .line 369
    return-void
.end method

.method public setWebxml(Ljava/io/File;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->webxml:Ljava/io/File;

    .line 352
    return-void
.end method
