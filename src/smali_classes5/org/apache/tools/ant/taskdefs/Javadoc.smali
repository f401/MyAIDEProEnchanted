.class public Lorg/apache/tools/ant/taskdefs/Javadoc;
.super Lorg/apache/tools/ant/Task;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Javadoc$AccessType;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$Html;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;,
        Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final LOAD_FRAME:Ljava/lang/String; = "function loadFrames() {"

.field private static final LOAD_FRAME_LEN:I

.field static final SCOPE_ELEMENTS:[Ljava/lang/String;


# instance fields
.field private author:Z

.field private bootclasspath:Lorg/apache/tools/ant/types/Path;

.field private bottom:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

.field private breakiterator:Z

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private final cmd:Lorg/apache/tools/ant/types/Commandline;

.field private destDir:Ljava/io/File;

.field private docEncoding:Ljava/lang/String;

.field private docFilesSubDirs:Z

.field private doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

.field private doctitle:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

.field private excludeDocFilesSubDir:Ljava/lang/String;

.field private final excludePackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;",
            ">;"
        }
    .end annotation
.end field

.field private executable:Ljava/lang/String;

.field private failOnError:Z

.field private failOnWarning:Z

.field private footer:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

.field private group:Ljava/lang/String;

.field private final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;",
            ">;"
        }
    .end annotation
.end field

.field private header:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

.field private includeNoSourcePackages:Z

.field private final links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;",
            ">;"
        }
    .end annotation
.end field

.field private linksource:Z

.field private final moduleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;",
            ">;"
        }
    .end annotation
.end field

.field private modulePath:Lorg/apache/tools/ant/types/Path;

.field private moduleSourcePath:Lorg/apache/tools/ant/types/Path;

.field private final nestedSourceFiles:Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;

.field private noqualifier:Ljava/lang/String;

.field private packageList:Ljava/lang/String;

.field private final packageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;",
            ">;"
        }
    .end annotation
.end field

.field private final packageSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/DirSet;",
            ">;"
        }
    .end annotation
.end field

.field private postProcessGeneratedJavadocs:Z

.field private source:Ljava/lang/String;

.field private final sourceFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;",
            ">;"
        }
    .end annotation
.end field

.field private sourcePath:Lorg/apache/tools/ant/types/Path;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private useDefaultExcludes:Z

.field private useExternalFile:Z

.field private version:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 91
    const-string v0, "function loadFrames() {"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/tools/ant/taskdefs/Javadoc;->LOAD_FRAME_LEN:I

    .line 401
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Javadoc;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 1428
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "overview"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "packages"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "types"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "constructors"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "methods"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fields"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Javadoc;->SCOPE_ELEMENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 404
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    .line 439
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->failOnError:Z

    .line 444
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->failOnWarning:Z

    .line 445
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    .line 446
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->destDir:Ljava/io/File;

    .line 447
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourceFiles:Ljava/util/List;

    .line 448
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageNames:Ljava/util/List;

    .line 449
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->excludePackageNames:Ljava/util/List;

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleNames:Ljava/util/List;

    .line 451
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->author:Z

    .line 452
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->version:Z

    .line 453
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    .line 454
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 455
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 456
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    .line 457
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    .line 458
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->group:Ljava/lang/String;

    .line 459
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageList:Ljava/lang/String;

    .line 460
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->links:Ljava/util/List;

    .line 461
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->groups:Ljava/util/List;

    .line 462
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->tags:Ljava/util/List;

    .line 463
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->useDefaultExcludes:Z

    .line 464
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doctitle:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    .line 465
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->header:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    .line 466
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->footer:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    .line 467
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bottom:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    .line 468
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->useExternalFile:Z

    .line 469
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->source:Ljava/lang/String;

    .line 470
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->linksource:Z

    .line 471
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->breakiterator:Z

    .line 473
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->includeNoSourcePackages:Z

    .line 474
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->executable:Ljava/lang/String;

    .line 475
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->docFilesSubDirs:Z

    .line 476
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->excludeDocFilesSubDir:Ljava/lang/String;

    .line 477
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->docEncoding:Ljava/lang/String;

    .line 478
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->postProcessGeneratedJavadocs:Z

    .line 480
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->nestedSourceFiles:Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;

    .line 482
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageSets:Ljava/util/List;

    return-void
.end method

.method private addArgIf(ZLjava/lang/String;)V
    .registers 4

    .line 414
    if-eqz p1, :cond_b

    .line 415
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 417
    :cond_b
    return-void
.end method

.method private addArgIfNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 426
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 427
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning: Leaving out empty argument \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    .line 433
    :goto_22
    return-void

    .line 430
    :cond_23
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_22
.end method

.method private addSourceFiles(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;",
            ">;)V"
        }
    .end annotation

    .line 2400
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->nestedSourceFiles:Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 2401
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 2405
    instance-of v1, v0, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v1, :cond_47

    move-object v1, v0

    .line 2406
    check-cast v1, Lorg/apache/tools/ant/types/FileSet;

    .line 2407
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/FileSet;->hasPatterns()Z

    move-result v3

    if-nez v3, :cond_47

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/FileSet;->hasSelectors()Z

    move-result v3

    if-nez v3, :cond_47

    .line 2408
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/FileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 2409
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v1

    const-string v3, "**/*.java"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 2410
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->includeNoSourcePackages:Z

    if-eqz v1, :cond_47

    .line 2411
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v1

    const-string v3, "**/package.html"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 2413
    :cond_47
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 2417
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;

    const-class v4, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;-><init>(Ljava/io/File;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 2402
    :cond_6c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only file system based resources are supported by javadoc"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2420
    :cond_74
    return-void
.end method

.method private checkPackageAndSourcePath()V
    .registers 3

    .line 1950
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageList:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_9

    .line 1955
    :cond_8
    return-void

    .line 1951
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "sourcePath attribute must be set when specifying packagelist."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPackages(Ljava/util/List;Lorg/apache/tools/ant/types/Path;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/tools/ant/types/Path;",
            ")V"
        }
    .end annotation

    .line 1958
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p2}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1962
    :cond_c
    return-void

    .line 1959
    :cond_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "sourcePath attribute must be set when specifying package names."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPackagesToDoc(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;",
            ">;)V"
        }
    .end annotation

    .line 1966
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageList:Ljava/lang/String;

    if-nez v0, :cond_18

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1967
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1971
    :cond_18
    return-void

    .line 1968
    :cond_19
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No source files, no packages and no modules have been specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkTaskName()V
    .registers 3

    .line 1942
    const-string v0, "javadoc2"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1943
    const-string v0, "Warning: the task name <javadoc2> is deprecated. Use <javadoc> instead."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    .line 1947
    :cond_12
    return-void
.end method

.method private containsWhitespace(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 2344
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_12

    aget-char v4, v2, v1

    .line 2345
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2346
    const/4 v0, 0x1

    .line 2349
    :cond_12
    return v0

    .line 2344
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private doBootPath(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 5

    .line 2082
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 2083
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_10

    .line 2084
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 2086
    :cond_10
    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemBootClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 2087
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v1

    if-lez v1, :cond_2c

    .line 2088
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-bootclasspath"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2089
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 2091
    :cond_2c
    return-void
.end method

.method private doDocFilesSubDirs(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 2279
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->docFilesSubDirs:Z

    if-eqz v0, :cond_2d

    .line 2280
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-docfilessubdirs"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2281
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->excludeDocFilesSubDir:Ljava/lang/String;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2282
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-excludedocfilessubdir"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2283
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->excludeDocFilesSubDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2286
    :cond_2d
    return-void
.end method

.method private doDoclet(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 6

    .line 2022
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-eqz v0, :cond_9b

    .line 2023
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 2026
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-doclet"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2028
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->getPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 2029
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->getPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 2030
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v1

    if-eqz v1, :cond_4a

    .line 2031
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-docletpath"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 2035
    :cond_4a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->getParams()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_58
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;

    .line 2036
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_87

    .line 2039
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 2041
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletParam;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_58

    .line 2037
    :cond_87
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Doclet parameters must have a name"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2024
    :cond_8f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The doclet name must be specified."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 2045
    :cond_9b
    return-void
.end method

.method private doGroup(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 8

    const/4 v5, 0x0

    .line 2183
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->group:Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 2184
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->group:Ljava/lang/String;

    const-string v2, ","

    invoke-direct {v0, v1, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2185
    :cond_e
    :goto_e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2186
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2187
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2188
    if-lez v2, :cond_e

    .line 2189
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2190
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2191
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v4, "-group"

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2192
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_e

    .line 2197
    :cond_46
    return-void
.end method

.method private doGroups(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 7

    .line 2201
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;

    .line 2202
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 2203
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;->getPackages()Ljava/lang/String;

    move-result-object v0

    .line 2204
    if-eqz v2, :cond_3a

    if-eqz v0, :cond_3a

    .line 2208
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    const-string v4, "-group"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_6

    .line 2205
    :cond_3a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The title and packages must be specified for group elements."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2212
    :cond_42
    return-void
.end method

.method private doLinkSource(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 2222
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->linksource:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_11

    .line 2223
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-linksource"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2225
    :cond_11
    return-void
.end method

.method private doLinks(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 10

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 2094
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->links:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_140

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;

    .line 2095
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getHref()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2096
    :cond_24
    const-string v0, "No href was given for the link - skipping"

    invoke-virtual {p0, v0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    goto :goto_8

    .line 2100
    :cond_2a
    const/4 v1, 0x0

    .line 2101
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->shouldResolveLink()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2102
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getHref()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2104
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 2106
    :try_start_43
    sget-object v4, Lorg/apache/tools/ant/taskdefs/Javadoc;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v4, v2}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v4

    .line 2107
    invoke-virtual {v4}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
    :try_end_4c
    .catch Ljava/net/MalformedURLException; {:try_start_43 .. :try_end_4c} :catch_aa

    move-result-object v1

    .line 2115
    :cond_4d
    :goto_4d
    if-nez v1, :cond_63

    .line 2118
    :try_start_4f
    new-instance v1, Ljava/net/URL;

    const-string v2, "file://."

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2120
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getHref()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 2121
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getHref()Ljava/lang/String;
    :try_end_62
    .catch Ljava/net/MalformedURLException; {:try_start_4f .. :try_end_62} :catch_c0

    move-result-object v1

    .line 2131
    :cond_63
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->isLinkOffline()Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 2132
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getPackagelistLoc()Ljava/io/File;

    move-result-object v4

    .line 2133
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getPackagelistURL()Ljava/net/URL;

    move-result-object v2

    .line 2134
    if-nez v4, :cond_75

    if-eqz v2, :cond_e0

    .line 2140
    :cond_75
    if-eqz v4, :cond_8b

    .line 2141
    new-instance v0, Ljava/io/File;

    const-string v5, "package-list"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2143
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 2145
    :try_start_84
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Javadoc;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 2146
    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;
    :try_end_89
    .catch Ljava/net/MalformedURLException; {:try_start_84 .. :try_end_89} :catch_100

    move-result-object v0

    :goto_8a
    move-object v2, v0

    .line 2157
    :cond_8b
    :goto_8b
    if-eqz v2, :cond_8

    .line 2158
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v4, "-linkoffline"

    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    .line 2161
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2108
    :catch_aa
    move-exception v4

    .line 2110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: link location was invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    goto :goto_4d

    .line 2122
    :catch_c0
    move-exception v1

    .line 2124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Link href \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is not a valid url - skipping link"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 2136
    :cond_e0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The package list location for link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must be provided because the link is offline"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2147
    :catch_100
    move-exception v0

    .line 2148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: Package list location was invalid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    move-object v0, v2

    goto/16 :goto_8a

    .line 2153
    :cond_118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: No package list was found at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    goto/16 :goto_8b

    .line 2164
    :cond_12e
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-link"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2165
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2168
    :cond_140
    return-void
.end method

.method private doModuleArguments(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 5

    .line 2595
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 2596
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "--module"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2597
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleNames:Ljava/util/List;

    .line 2598
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda6;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2599
    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2598
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2601
    :cond_30
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_46

    .line 2602
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "--module-path"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2603
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 2605
    :cond_46
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_5c

    .line 2606
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "--module-source-path"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2607
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 2609
    :cond_5c
    return-void
.end method

.method private doNoqualifier(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 2215
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->noqualifier:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_1a

    .line 2216
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-noqualifier"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->noqualifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2219
    :cond_1a
    return-void
.end method

.method private doSource(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 5

    .line 2228
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->source:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 2229
    :goto_4
    if-eqz v0, :cond_16

    .line 2230
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-source"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2231
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2233
    :cond_16
    return-void

    .line 2228
    :cond_17
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "ant.build.javac.source"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private doSourceAndPackageNames(Lorg/apache/tools/ant/types/Commandline;Ljava/util/List;Ljava/util/List;ZLjava/io/File;Ljava/io/BufferedWriter;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Commandline;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;",
            ">;Z",
            "Ljava/io/File;",
            "Ljava/io/BufferedWriter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2296
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2297
    if-eqz p4, :cond_19

    .line 2298
    invoke-virtual {p6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {p6}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_4

    .line 2301
    :cond_19
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 2305
    :cond_21
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;

    .line 2306
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2307
    if-eqz p4, :cond_72

    .line 2310
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 2312
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_51

    .line 2313
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2315
    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2319
    :goto_6a
    invoke-virtual {p6}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_25

    .line 2317
    :cond_6e
    invoke-virtual {p6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_6a

    .line 2321
    :cond_72
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_25

    .line 2324
    :cond_7a
    return-void
.end method

.method private doSourcePath(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/types/Path;)V
    .registers 5

    .line 1974
    invoke-virtual {p2}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1975
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-sourcepath"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 1978
    :cond_16
    return-void
.end method

.method private doTags(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 11

    .line 2236
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2237
    instance-of v2, v0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;

    if-eqz v2, :cond_89

    .line 2238
    check-cast v0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;

    .line 2239
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v2

    .line 2240
    if-nez v2, :cond_35

    .line 2243
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-tag"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->getParameter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_6

    .line 2249
    :cond_35
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 2250
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_43
    if-ge v0, v4, :cond_6

    aget-object v5, v3, v0

    .line 2251
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2252
    :try_start_4c
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_56} :catch_6d

    .line 2253
    :try_start_56
    invoke-virtual {v5}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda1;

    invoke-direct {v8, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/types/Commandline;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_68

    .line 2257
    :try_start_62
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_6d

    .line 2260
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 2252
    :catchall_68
    move-exception v0

    :try_start_69
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_c7

    :goto_6c
    :try_start_6c
    throw v0
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6d} :catch_6d

    .line 2257
    :catch_6d
    move-exception v0

    .line 2258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t read tag file from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2264
    :cond_89
    check-cast v0, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;

    .line 2265
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-taglet"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2266
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2267
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->getPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2268
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;->getPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    const-string v2, "ignore"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 2269
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2270
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-tagletpath"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2271
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    goto/16 :goto_6

    .line 2252
    :catchall_c7
    move-exception v1

    goto :goto_6c

    .line 2276
    :cond_c9
    return-void
.end method

.method private fixLineFeeds(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2580
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2581
    const-string v1, "\n"

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2580
    return-object v0
.end method

.method private generalJavadocArguments(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 4

    .line 1981
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doctitle:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    if-eqz v0, :cond_1e

    .line 1982
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-doctitle"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1983
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doctitle:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1985
    :cond_1e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->header:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    if-eqz v0, :cond_3c

    .line 1986
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-header"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1987
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->header:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1989
    :cond_3c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->footer:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    if-eqz v0, :cond_5a

    .line 1990
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-footer"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1991
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->footer:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1993
    :cond_5a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bottom:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    if-eqz v0, :cond_78

    .line 1994
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-bottom"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1995
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bottom:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1998
    :cond_78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_d2

    .line 1999
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    const-string v1, "last"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 2004
    :goto_8d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v0

    if-lez v0, :cond_a7

    .line 2005
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-classpath"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2006
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 2009
    :cond_a7
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->version:Z

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_b8

    .line 2010
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-version"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2012
    :cond_b8
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->author:Z

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_c9

    .line 2013
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-author"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2016
    :cond_c9
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_d1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->destDir:Ljava/io/File;

    if-eqz v0, :cond_db

    .line 2019
    :cond_d1
    return-void

    .line 2001
    :cond_d2
    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_8d

    .line 2017
    :cond_db
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "destdir attribute must be set!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$doTags$0(Lorg/apache/tools/ant/types/Commandline;Ljava/lang/String;)V
    .registers 4

    .line 2254
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-tag"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2255
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2256
    return-void
.end method

.method static synthetic lambda$parsePackages$1(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2445
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\*$"

    const-string v2, "**"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$parsePackages$2(Lorg/apache/tools/ant/types/PatternSet;Ljava/lang/String;)V
    .registers 3

    .line 2446
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$parsePackages$3(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2450
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\*$"

    const-string v2, "**"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$parsePackages$4(Lorg/apache/tools/ant/types/PatternSet;Ljava/lang/String;)V
    .registers 3

    .line 2451
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private parsePackages(Ljava/util/List;Lorg/apache/tools/ant/types/Path;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/tools/ant/types/Path;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2431
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2432
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageSets:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2438
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_b6

    .line 2439
    new-instance v5, Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {v5}, Lorg/apache/tools/ant/types/PatternSet;-><init>()V

    .line 2440
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/tools/ant/types/PatternSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 2441
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 2442
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/PatternSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    const-string v6, "**"

    invoke-virtual {v0, v6}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 2449
    :goto_2f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->excludePackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v6, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda6;

    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v6, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda5;

    .line 2450
    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v6, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda3;

    invoke-direct {v6, v5}, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/types/PatternSet;)V

    .line 2451
    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2453
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v0, v2

    :goto_51
    if-ge v0, v7, :cond_b6

    aget-object v8, v6, v0

    .line 2454
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2455
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_9c

    .line 2456
    new-instance v8, Lorg/apache/tools/ant/types/DirSet;

    invoke-direct {v8}, Lorg/apache/tools/ant/types/DirSet;-><init>()V

    .line 2457
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/apache/tools/ant/types/DirSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 2458
    iget-boolean v10, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->useDefaultExcludes:Z

    invoke-virtual {v8, v10}, Lorg/apache/tools/ant/types/DirSet;->setDefaultexcludes(Z)V

    .line 2459
    invoke-virtual {v8, v9}, Lorg/apache/tools/ant/types/DirSet;->setDir(Ljava/io/File;)V

    .line 2460
    invoke-virtual {v8}, Lorg/apache/tools/ant/types/DirSet;->createPatternSet()Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/apache/tools/ant/types/PatternSet;->addConfiguredPatternset(Lorg/apache/tools/ant/types/PatternSet;)V

    .line 2461
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2453
    :goto_7e
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 2444
    :cond_81
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v6, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda6;

    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v6, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda4;

    .line 2445
    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v6, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda2;

    invoke-direct {v6, v5}, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/types/PatternSet;)V

    .line 2446
    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2f

    .line 2463
    :cond_9c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " since it is no directory."

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    goto :goto_7e

    .line 2469
    :cond_b6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ba
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_161

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/DirSet;

    .line 2470
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/DirSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v6

    .line 2471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scanning "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for packages."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x4

    invoke-virtual {p0, v3, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    .line 2472
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/DirSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 2474
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v0, v2

    move v3, v2

    :goto_f7
    if-ge v3, v8, :cond_13f

    aget-object v9, v7, v3

    .line 2476
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2477
    new-instance v11, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda0;

    invoke-direct {v11, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    invoke-virtual {v10, v11}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v10

    .line 2481
    array-length v10, v10

    if-lez v10, :cond_126

    .line 2482
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_129

    .line 2483
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " contains source files in the default package, you must specify them as source files not packages."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    .line 2490
    :cond_126
    :goto_126
    add-int/lit8 v3, v3, 0x1

    goto :goto_f7

    .line 2487
    :cond_129
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 2489
    const/16 v10, 0x2e

    invoke-virtual {v9, v0, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2490
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13d

    .line 2491
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2492
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13d
    move v0, v1

    .line 2490
    goto :goto_126

    .line 2497
    :cond_13f
    if-eqz v0, :cond_14a

    .line 2500
    invoke-virtual {p2}, Lorg/apache/tools/ant/types/Path;->createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/apache/tools/ant/types/Path$PathElement;->setLocation(Ljava/io/File;)V

    goto/16 :goto_ba

    .line 2502
    :cond_14a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t contain any packages, dropping it."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    goto/16 :goto_ba

    .line 2506
    :cond_161
    return-void
.end method

.method private patchContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2586
    const-string v0, "function loadFrames() {"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2587
    if-ltz v0, :cond_26

    .line 2588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/tools/ant/taskdefs/Javadoc;->LOAD_FRAME_LEN:I

    .line 2589
    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2591
    :cond_26
    return-object p1
.end method

.method private postProcess(Ljava/io/File;Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 2552
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->docEncoding:Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 2557
    :goto_5
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2559
    :try_start_14
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->safeReadFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/Javadoc;->fixLineFeeds(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_59

    move-result-object v3

    .line 2560
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 2564
    const-string v2, "function validURL(url) {"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 2566
    invoke-direct {p0, v3, p2}, Lorg/apache/tools/ant/taskdefs/Javadoc;->patchContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2567
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 2568
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2570
    :try_start_40
    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2571
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_52

    .line 2572
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v0, 0x1

    .line 2576
    :goto_4a
    return v0

    .line 2553
    :cond_4b
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Javadoc;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2568
    :catchall_52
    move-exception v0

    :try_start_53
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5e

    :goto_56
    throw v0

    :cond_57
    move v0, v1

    .line 2576
    goto :goto_4a

    .line 2557
    :catchall_59
    move-exception v0

    :try_start_5a
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_60

    :goto_5d
    throw v0

    .line 2568
    :catchall_5e
    move-exception v1

    goto :goto_56

    .line 2557
    :catchall_60
    move-exception v1

    goto :goto_5d
.end method

.method private postProcessGeneratedJavadocs()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 2509
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->postProcessGeneratedJavadocs:Z

    if-nez v0, :cond_8

    .line 2549
    :cond_7
    :goto_7
    return-void

    .line 2512
    :cond_8
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->destDir:Ljava/io/File;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2513
    const-string v0, "No javadoc created, no need to post-process anything"

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    goto :goto_7

    .line 2517
    :cond_18
    const-class v0, Lorg/apache/tools/ant/taskdefs/Javadoc;

    const-string v2, "javadoc-frame-injections-fix.txt"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 2519
    if-eqz v2, :cond_9f

    .line 2525
    :try_start_22
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 2527
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 2526
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->fixLineFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2528
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_9a

    move-result-object v3

    .line 2530
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 2531
    new-instance v0, Lorg/apache/tools/ant/DirectoryScanner;

    invoke-direct {v0}, Lorg/apache/tools/ant/DirectoryScanner;-><init>()V

    .line 2534
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->destDir:Ljava/io/File;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/DirectoryScanner;->setBasedir(Ljava/io/File;)V

    .line 2535
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->setCaseSensitive(Z)V

    .line 2536
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "**/index.html"

    aput-object v4, v2, v1

    const/4 v4, 0x1

    const-string v5, "**/index.htm"

    aput-object v5, v2, v4

    const-string v4, "**/toc.html"

    aput-object v4, v2, v8

    const-string v4, "**/toc.htm"

    aput-object v4, v2, v6

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/DirectoryScanner;->setIncludes([Ljava/lang/String;)V

    .line 2539
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->addDefaultExcludes()V

    .line 2540
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->scan()V

    .line 2542
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    move v2, v1

    :goto_69
    if-ge v2, v5, :cond_7d

    aget-object v1, v4, v2

    .line 2543
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->destDir:Ljava/io/File;

    invoke-direct {v6, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v6, v3}, Lorg/apache/tools/ant/taskdefs/Javadoc;->postProcess(Ljava/io/File;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2542
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_69

    .line 2545
    :cond_7d
    if-lez v0, :cond_7

    .line 2546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Patched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " link injection vulnerable javadocs"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 2530
    :catchall_9a
    move-exception v0

    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 2531
    throw v0

    .line 2520
    :cond_9f
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Missing resource \'javadoc-frame-injections-fix.txt\' in classpath."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private quoteString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2333
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->containsWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2334
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2340
    :goto_16
    return-object p1

    .line 2337
    :cond_17
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2338
    const/16 v0, 0x27

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->quoteString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    .line 2340
    :cond_26
    const/16 v0, 0x22

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->quoteString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    goto :goto_16
.end method

.method private quoteString(Ljava/lang/String;C)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    .line 2353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2354
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2356
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v2, v1

    move v0, v1

    :goto_16
    if-ge v2, v5, :cond_4d

    aget-char v6, v4, v2

    .line 2357
    if-ne v6, p2, :cond_28

    .line 2358
    const/16 v0, 0x5c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2381
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2361
    :cond_28
    sparse-switch v6, :sswitch_data_56

    .line 2383
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2384
    goto :goto_25

    .line 2363
    :sswitch_30
    const-string v0, "\\\\"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2365
    goto :goto_25

    .line 2368
    :sswitch_37
    const-string v0, "\\\r"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2369
    const/4 v0, 0x1

    .line 2370
    goto :goto_25

    .line 2375
    :sswitch_3e
    if-nez v0, :cond_47

    .line 2376
    const-string v0, "\\\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_45
    move v0, v1

    .line 2380
    goto :goto_25

    .line 2378
    :cond_47
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 2389
    :cond_4d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2390
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2361
    nop

    :sswitch_data_56
    .sparse-switch
        0xa -> :sswitch_3e
        0xd -> :sswitch_37
        0x5c -> :sswitch_30
    .end sparse-switch
.end method

.method private writeExternalArgs(Lorg/apache/tools/ant/types/Commandline;)V
    .registers 10

    const/4 v7, 0x0

    .line 2049
    .line 2051
    :try_start_1
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Javadoc;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 2052
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 2051
    const-string v2, "javadocOptions"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_95

    move-result-object v1

    .line 2053
    :try_start_12
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v2

    .line 2054
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->clearArgs()V

    .line 2055
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2055
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2057
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    .line 2058
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_44} :catch_72

    .line 2059
    :try_start_44
    array-length v4, v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_6d

    const/4 v0, 0x0

    :goto_46
    if-ge v0, v4, :cond_8f

    aget-object v5, v2, v0

    .line 2060
    :try_start_4a
    const-string v6, "-J-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 2061
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 2059
    :goto_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 2062
    :cond_5c
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 2063
    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2064
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_6d

    goto :goto_59

    .line 2057
    :catchall_6d
    move-exception v0

    :try_start_6e
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_93

    :goto_71
    :try_start_71
    throw v0
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_72} :catch_72

    .line 2071
    :catch_72
    move-exception v0

    .line 2072
    :goto_73
    if-eqz v1, :cond_78

    .line 2073
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2075
    :cond_78
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Error creating or writing temporary file for javadoc options"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 2066
    :cond_84
    :try_start_84
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/Javadoc;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_8e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_6d

    goto :goto_59

    .line 2070
    :cond_8f
    :try_start_8f
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_72

    .line 2078
    return-void

    .line 2057
    :catchall_93
    move-exception v2

    goto :goto_71

    .line 2071
    :catch_95
    move-exception v0

    move-object v1, v7

    goto :goto_73
.end method


# virtual methods
.method public addBottom(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V
    .registers 2

    .line 1150
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bottom:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    .line 1151
    return-void
.end method

.method public addDoctitle(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V
    .registers 2

    .line 1090
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doctitle:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    .line 1091
    return-void
.end method

.method public addExcludePackage(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V
    .registers 3

    .line 763
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->excludePackageNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 1719
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createSourceFiles()Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 1720
    return-void
.end method

.method public addFooter(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V
    .registers 2

    .line 1130
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->footer:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    .line 1131
    return-void
.end method

.method public addHeader(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V
    .registers 2

    .line 1110
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->header:Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    .line 1111
    return-void
.end method

.method public addModule(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V
    .registers 3

    .line 738
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    return-void
.end method

.method public addPackage(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V
    .registers 3

    .line 727
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    return-void
.end method

.method public addPackageset(Lorg/apache/tools/ant/types/DirSet;)V
    .registers 3

    .line 1705
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1706
    return-void
.end method

.method public addSource(Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;)V
    .registers 3

    .line 682
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourceFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    return-void
.end method

.method public addTaglet(Lorg/apache/tools/ant/taskdefs/Javadoc$ExtensionInfo;)V
    .registers 3

    .line 887
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    return-void
.end method

.method public createArg()Lorg/apache/tools/ant/types/Commandline$Argument;
    .registers 2

    .line 530
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public createBootclasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 957
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 958
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 960
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 923
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 924
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 926
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createDoclet()Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;
    .registers 2

    .line 875
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_b

    .line 876
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    .line 878
    :cond_b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    return-object v0
.end method

.method public createGroup()Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;
    .registers 3

    .line 1575
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$GroupArgument;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    .line 1576
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->groups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    return-object v0
.end method

.method public createLink()Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;
    .registers 3

    .line 1305
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    .line 1306
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->links:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1307
    return-object v0
.end method

.method public createModulePath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 592
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 593
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    .line 595
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createModuleSourcePath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 633
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 634
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    .line 636
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createSourceFiles()Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;
    .registers 2

    .line 1730
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->nestedSourceFiles:Lorg/apache/tools/ant/taskdefs/Javadoc$ResourceCollectionContainer;

    return-object v0
.end method

.method public createSourcepath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 553
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 554
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    .line 556
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createTag()Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;
    .registers 3

    .line 1418
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    .line 1419
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->tags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1420
    return-object v0
.end method

.method public execute()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 1810
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->checkTaskName()V

    .line 1812
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1813
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 1815
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->checkPackageAndSourcePath()V

    .line 1817
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_1e

    .line 1818
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    .line 1821
    :cond_1e
    invoke-direct {p0, v10, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->parsePackages(Ljava/util/List;Lorg/apache/tools/ant/types/Path;)V

    .line 1822
    invoke-direct {p0, v10, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->checkPackages(Ljava/util/List;Lorg/apache/tools/ant/types/Path;)V

    .line 1824
    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourceFiles:Ljava/util/List;

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1825
    invoke-direct {p0, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addSourceFiles(Ljava/util/List;)V

    .line 1827
    invoke-direct {p0, v10, v11}, Lorg/apache/tools/ant/taskdefs/Javadoc;->checkPackagesToDoc(Ljava/util/List;Ljava/util/List;)V

    .line 1829
    const-string v0, "Generating Javadoc"

    invoke-virtual {p0, v0, v13}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    .line 1831
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/apache/tools/ant/types/Commandline;

    .line 1832
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->executable:Ljava/lang/String;

    if-eqz v0, :cond_155

    .line 1833
    invoke-virtual {v7, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 1839
    :goto_46
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->generalJavadocArguments(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1840
    invoke-direct {p0, v7, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doSourcePath(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/types/Path;)V

    .line 1841
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doDoclet(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1842
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doBootPath(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1843
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doLinks(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1844
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doGroup(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1845
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doGroups(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1846
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doDocFilesSubDirs(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1847
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doModuleArguments(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1849
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doTags(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1850
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doSource(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1851
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doLinkSource(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1852
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doNoqualifier(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1854
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->breakiterator:Z

    if-eqz v0, :cond_7a

    .line 1855
    invoke-virtual {v7}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-breakiterator"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1858
    :cond_7a
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->useExternalFile:Z

    if-eqz v0, :cond_81

    .line 1859
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/Javadoc;->writeExternalArgs(Lorg/apache/tools/ant/types/Commandline;)V

    .line 1870
    :cond_81
    :try_start_81
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->useExternalFile:Z

    if-eqz v0, :cond_160

    .line 1871
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Javadoc;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "javadoc"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_95} :catch_1d6
    .catchall {:try_start_81 .. :try_end_95} :catchall_1e0

    move-result-object v2

    .line 1872
    :try_start_96
    invoke-virtual {v7}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1874
    new-instance v1, Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_bc} :catch_1db
    .catchall {:try_start_96 .. :try_end_bc} :catchall_1e0

    .line 1875
    :try_start_bc
    new-instance v6, Ljava/io/BufferedWriter;

    invoke-direct {v6, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c1} :catch_1de
    .catchall {:try_start_bc .. :try_end_c1} :catchall_1d4

    move-object v5, v2

    move-object v8, v1

    .line 1878
    :goto_c3
    :try_start_c3
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->useExternalFile:Z

    move-object v0, p0

    move-object v1, v7

    move-object v2, v10

    move-object v3, v11

    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/ant/taskdefs/Javadoc;->doSourceAndPackageNames(Lorg/apache/tools/ant/types/Commandline;Ljava/util/List;Ljava/util/List;ZLjava/io/File;Ljava/io/BufferedWriter;)V

    .line 1882
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->useExternalFile:Z

    if-eqz v0, :cond_d3

    .line 1883
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_d3} :catch_1c1
    .catchall {:try_start_c3 .. :try_end_d3} :catchall_1bb

    .line 1892
    :cond_d3
    invoke-static {v8}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Writer;)V

    .line 1893
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageList:Ljava/lang/String;

    if-eqz v0, :cond_f4

    .line 1896
    invoke-virtual {v7}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1898
    :cond_f4
    invoke-virtual {v7}, Lorg/apache/tools/ant/types/Commandline;->describeCommand()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    .line 1900
    const-string v0, "Javadoc execution"

    invoke-virtual {p0, v0, v13}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    .line 1902
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;

    invoke-direct {v1, p0, v13}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;I)V

    .line 1903
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;

    invoke-direct {v2, p0, v12}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;I)V

    .line 1904
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    invoke-direct {v3, v1, v2}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-direct {v0, v3}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 1905
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 1913
    invoke-virtual {v0, v9}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 1915
    :try_start_11f
    invoke-virtual {v7}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 1916
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v0

    .line 1917
    if-eqz v0, :cond_130

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->failOnError:Z

    if-nez v3, :cond_165

    .line 1921
    :cond_130
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->failOnWarning:Z

    if-eqz v0, :cond_140

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->sawWarnings()Z

    move-result v0

    if-nez v0, :cond_1af

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->sawWarnings()Z

    move-result v0

    if-nez v0, :cond_1af

    .line 1925
    :cond_140
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->postProcessGeneratedJavadocs()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_143} :catch_180
    .catchall {:try_start_11f .. :try_end_143} :catchall_19c

    .line 1929
    if-eqz v5, :cond_148

    .line 1930
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1931
    :cond_148
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->logFlush()V

    .line 1935
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->logFlush()V

    .line 1936
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 1937
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 1938
    return-void

    .line 1835
    :cond_155
    const-string v0, "javadoc"

    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJdkExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    goto/16 :goto_46

    :cond_160
    move-object v6, v9

    move-object v5, v9

    move-object v8, v9

    .line 1870
    goto/16 :goto_c3

    .line 1918
    :cond_165
    :try_start_165
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Javadoc returned "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1919
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v3
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_180} :catch_180
    .catchall {:try_start_165 .. :try_end_180} :catchall_19c

    .line 1926
    :catch_180
    move-exception v0

    .line 1927
    :try_start_181
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Javadoc failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v6

    invoke-direct {v3, v4, v0, v6}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v3
    :try_end_19c
    .catchall {:try_start_181 .. :try_end_19c} :catchall_19c

    .line 1929
    :catchall_19c
    move-exception v0

    if-eqz v5, :cond_1a2

    .line 1930
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1931
    :cond_1a2
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->logFlush()V

    .line 1935
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$JavadocOutputStream;->logFlush()V

    .line 1936
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 1937
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 1938
    throw v0

    .line 1922
    :cond_1af
    :try_start_1af
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 1923
    const-string v3, "Javadoc issued warnings."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1bb} :catch_180
    .catchall {:try_start_1af .. :try_end_1bb} :catchall_19c

    .line 1892
    :catchall_1bb
    move-exception v0

    move-object v1, v8

    :goto_1bd
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Writer;)V

    .line 1893
    throw v0

    .line 1885
    :catch_1c1
    move-exception v0

    move-object v1, v8

    .line 1886
    :goto_1c3
    if-eqz v5, :cond_1c8

    .line 1887
    :try_start_1c5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1889
    :cond_1c8
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    .line 1890
    const-string v3, "Error creating temporary file"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
    :try_end_1d4
    .catchall {:try_start_1c5 .. :try_end_1d4} :catchall_1d4

    .line 1892
    :catchall_1d4
    move-exception v0

    goto :goto_1bd

    .line 1885
    :catch_1d6
    move-exception v0

    move-object v1, v9

    move-object v2, v9

    :goto_1d9
    move-object v5, v2

    goto :goto_1c3

    :catch_1db
    move-exception v0

    move-object v1, v9

    goto :goto_1d9

    :catch_1de
    move-exception v0

    goto :goto_1d9

    .line 1892
    :catchall_1e0
    move-exception v0

    move-object v1, v9

    goto :goto_1bd
.end method

.method protected expand(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2666
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$parsePackages$5$Javadoc(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .line 2478
    const-string v0, ".java"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->includeNoSourcePackages:Z

    if-eqz v0, :cond_16

    .line 2479
    const-string v0, "package.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    .line 2478
    :goto_15
    return v0

    .line 2479
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public setAccess(Lorg/apache/tools/ant/taskdefs/Javadoc$AccessType;)V
    .registers 5

    .line 825
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$AccessType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 826
    return-void
.end method

.method public setAdditionalparam(Ljava/lang/String;)V
    .registers 3

    .line 521
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method public setAuthor(Z)V
    .registers 2

    .line 1051
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->author:Z

    .line 1052
    return-void
.end method

.method public setBootClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 969
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createBootclasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 970
    return-void
.end method

.method public setBootclasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 944
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 945
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 949
    :goto_6
    return-void

    .line 947
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setBottom(Ljava/lang/String;)V
    .registers 3

    .line 1139
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;-><init>()V

    .line 1140
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->addText(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addBottom(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V

    .line 1142
    return-void
.end method

.method public setBreakiterator(Z)V
    .registers 2

    .line 1750
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->breakiterator:Z

    .line 1751
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .registers 3

    .line 1650
    const-string v0, "-charset"

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIfNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 910
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 911
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 915
    :goto_6
    return-void

    .line 913
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 935
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 936
    return-void
.end method

.method public setDefaultexcludes(Z)V
    .registers 2

    .line 502
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->useDefaultExcludes:Z

    .line 503
    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .registers 4

    .line 656
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->destDir:Ljava/io/File;

    .line 657
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-d"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->destDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 659
    return-void
.end method

.method public setDocFilesSubDirs(Z)V
    .registers 2

    .line 1780
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->docFilesSubDirs:Z

    .line 1781
    return-void
.end method

.method public setDocencoding(Ljava/lang/String;)V
    .registers 4

    .line 1285
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-docencoding"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1287
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->docEncoding:Ljava/lang/String;

    .line 1288
    return-void
.end method

.method public setDoclet(Ljava/lang/String;)V
    .registers 4

    .line 835
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_12

    .line 836
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    .line 837
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 839
    :cond_12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->setName(Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method public setDocletPath(Lorg/apache/tools/ant/types/Path;)V
    .registers 4

    .line 848
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_12

    .line 849
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    .line 850
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 852
    :cond_12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 853
    return-void
.end method

.method public setDocletPathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 4

    .line 862
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    if-nez v0, :cond_12

    .line 863
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;-><init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    .line 864
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 866
    :cond_12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->doclet:Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$DocletInfo;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 867
    return-void
.end method

.method public setDoctitle(Ljava/lang/String;)V
    .registers 3

    .line 1079
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;-><init>()V

    .line 1080
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->addText(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addDoctitle(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V

    .line 1082
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 4

    .line 1022
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-encoding"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method public setExcludeDocFilesSubDir(Ljava/lang/String;)V
    .registers 2

    .line 1791
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->excludeDocFilesSubDir:Ljava/lang/String;

    .line 1792
    return-void
.end method

.method public setExcludePackageNames(Ljava/lang/String;)V
    .registers 5

    .line 748
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :goto_7
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 750
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 751
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;-><init>()V

    .line 752
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;->setName(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addExcludePackage(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V

    goto :goto_7

    .line 755
    :cond_1d
    return-void
.end method

.method public setExecutable(Ljava/lang/String;)V
    .registers 2

    .line 1693
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->executable:Ljava/lang/String;

    .line 1694
    return-void
.end method

.method public setExtdirs(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 981
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-extdirs"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 983
    return-void
.end method

.method public setExtdirs(Lorg/apache/tools/ant/types/Path;)V
    .registers 4

    .line 991
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-extdirs"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 993
    return-void
.end method

.method public setFailonerror(Z)V
    .registers 2

    .line 1661
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->failOnError:Z

    .line 1662
    return-void
.end method

.method public setFailonwarning(Z)V
    .registers 2

    .line 1673
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->failOnWarning:Z

    .line 1674
    return-void
.end method

.method public setFooter(Ljava/lang/String;)V
    .registers 3

    .line 1119
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;-><init>()V

    .line 1120
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->addText(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addFooter(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V

    .line 1122
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .registers 2

    .line 1185
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->group:Ljava/lang/String;

    .line 1186
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .registers 3

    .line 1099
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;-><init>()V

    .line 1100
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->addText(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addHeader(Lorg/apache/tools/ant/taskdefs/Javadoc$Html;)V

    .line 1102
    return-void
.end method

.method public setHelpfile(Ljava/io/File;)V
    .registers 4

    .line 1275
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-helpfile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 1277
    return-void
.end method

.method public setIncludeNoSourcePackages(Z)V
    .registers 2

    .line 1770
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->includeNoSourcePackages:Z

    .line 1771
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .registers 3

    .line 1193
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createLink()Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->setHref(Ljava/lang/String;)V

    .line 1194
    return-void
.end method

.method public setLinkoffline(Ljava/lang/String;)V
    .registers 6

    .line 1160
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createLink()Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;

    move-result-object v0

    .line 1161
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->setOffline(Z)V

    .line 1162
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1168
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " "

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1169
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->setHref(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1174
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->setPackagelistLoc(Ljava/io/File;)V

    .line 1175
    return-void

    .line 1172
    :cond_37
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The linkoffline attribute must include a URL and a package-list file location separated by a space"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1166
    :cond_3f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The linkoffline attribute must include a URL and a package-list file location separated by a space"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLinksource(Z)V
    .registers 2

    .line 1740
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->linksource:Z

    .line 1741
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x1

    .line 1012
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-locale"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method public setMaxmemory(Ljava/lang/String;)V
    .registers 5

    .line 512
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-J-Xmx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public setModulePath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 576
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 577
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->modulePath:Lorg/apache/tools/ant/types/Path;

    .line 581
    :goto_6
    return-void

    .line 579
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setModulePathref(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 606
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createModulePath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 607
    return-void
.end method

.method public setModuleSourcePath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 617
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 618
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->moduleSourcePath:Lorg/apache/tools/ant/types/Path;

    .line 622
    :goto_6
    return-void

    .line 620
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setModuleSourcePathref(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 647
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createModuleSourcePath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 648
    return-void
.end method

.method public setModulenames(Ljava/lang/String;)V
    .registers 7

    .line 711
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_1a

    aget-object v3, v1, v0

    .line 712
    new-instance v4, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;

    invoke-direct {v4}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;-><init>()V

    .line 713
    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;->setName(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addModule(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 716
    :cond_1a
    return-void
.end method

.method public setNodeprecated(Z)V
    .registers 3

    .line 1202
    const-string v0, "-nodeprecated"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    .line 1203
    return-void
.end method

.method public setNodeprecatedlist(Z)V
    .registers 3

    .line 1211
    const-string v0, "-nodeprecatedlist"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    .line 1212
    return-void
.end method

.method public setNohelp(Z)V
    .registers 3

    .line 1238
    const-string v0, "-nohelp"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    .line 1239
    return-void
.end method

.method public setNoindex(Z)V
    .registers 3

    .line 1229
    const-string v0, "-noindex"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    .line 1230
    return-void
.end method

.method public setNonavbar(Z)V
    .registers 3

    .line 1247
    const-string v0, "-nonavbar"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    .line 1248
    return-void
.end method

.method public setNoqualifier(Ljava/lang/String;)V
    .registers 2

    .line 1760
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->noqualifier:Ljava/lang/String;

    .line 1761
    return-void
.end method

.method public setNotree(Z)V
    .registers 3

    .line 1220
    const-string v0, "-notree"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    .line 1221
    return-void
.end method

.method public setOld(Z)V
    .registers 4

    .line 899
    const-string v0, "Javadoc 1.4 doesn\'t support the -1.1 switch anymore"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->log(Ljava/lang/String;I)V

    .line 901
    return-void
.end method

.method public setOverview(Ljava/io/File;)V
    .registers 4

    .line 773
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-overview"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 775
    return-void
.end method

.method public setPackage(Z)V
    .registers 3

    .line 804
    const-string v0, "-package"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    .line 805
    return-void
.end method

.method public setPackageList(Ljava/lang/String;)V
    .registers 2

    .line 1296
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->packageList:Ljava/lang/String;

    .line 1297
    return-void
.end method

.method public setPackagenames(Ljava/lang/String;)V
    .registers 5

    .line 694
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :goto_7
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 696
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 697
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;-><init>()V

    .line 698
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;->setName(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addPackage(Lorg/apache/tools/ant/taskdefs/Javadoc$PackageName;)V

    goto :goto_7

    .line 701
    :cond_1d
    return-void
.end method

.method public setPostProcessGeneratedJavadocs(Z)V
    .registers 2

    .line 1801
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->postProcessGeneratedJavadocs:Z

    .line 1802
    return-void
.end method

.method public setPrivate(Z)V
    .registers 3

    .line 814
    const-string v0, "-private"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    .line 815
    return-void
.end method

.method public setProtected(Z)V
    .registers 3

    .line 794
    const-string v0, "-protected"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    .line 795
    return-void
.end method

.method public setPublic(Z)V
    .registers 3

    .line 784
    const-string v0, "-public"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    .line 785
    return-void
.end method

.method public setSerialwarn(Z)V
    .registers 3

    .line 1256
    const-string v0, "-serialwarn"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    .line 1257
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 2

    .line 1683
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->source:Ljava/lang/String;

    .line 1684
    return-void
.end method

.method public setSourcefiles(Ljava/lang/String;)V
    .registers 6

    .line 667
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :goto_7
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 669
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 670
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;-><init>()V

    .line 671
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;->setFile(Ljava/io/File;)V

    .line 672
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addSource(Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;)V

    goto :goto_7

    .line 674
    :cond_29
    return-void
.end method

.method public setSourcepath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 539
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_7

    .line 540
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->sourcePath:Lorg/apache/tools/ant/types/Path;

    .line 544
    :goto_6
    return-void

    .line 542
    :cond_7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_6
.end method

.method public setSourcepathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 565
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->createSourcepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 566
    return-void
.end method

.method public setSplitindex(Z)V
    .registers 3

    .line 1060
    const-string v0, "-splitindex"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    .line 1061
    return-void
.end method

.method public setStylesheetfile(Ljava/io/File;)V
    .registers 4

    .line 1265
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-stylesheetfile"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->cmd:Lorg/apache/tools/ant/types/Commandline;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 1267
    return-void
.end method

.method public setUse(Z)V
    .registers 3

    .line 1041
    const-string v0, "-use"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    .line 1042
    return-void
.end method

.method public setUseExternalFile(Z)V
    .registers 2

    .line 491
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->useExternalFile:Z

    .line 492
    return-void
.end method

.method public setVerbose(Z)V
    .registers 3

    .line 1001
    const-string v0, "-verbose"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIf(ZLjava/lang/String;)V

    .line 1002
    return-void
.end method

.method public setVersion(Z)V
    .registers 2

    .line 1032
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc;->version:Z

    .line 1033
    return-void
.end method

.method public setWindowtitle(Ljava/lang/String;)V
    .registers 3

    .line 1070
    const-string v0, "-windowtitle"

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/Javadoc;->addArgIfNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    return-void
.end method
