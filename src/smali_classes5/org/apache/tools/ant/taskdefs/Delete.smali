.class public Lorg/apache/tools/ant/taskdefs/Delete;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Delete.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Delete$ReverseDirs;
    }
.end annotation


# static fields
.field private static final EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

.field private static FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final REVERSE_FILESYSTEM:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;


# instance fields
.field private deleteOnExit:Z

.field protected dir:Ljava/io/File;

.field private failonerror:Z

.field protected file:Ljava/io/File;

.field protected filesets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field protected includeEmpty:Z

.field private performGc:Z

.field private quiet:Z

.field private rcs:Lorg/apache/tools/ant/types/resources/Resources;

.field private removeNotFollowedSymlinks:Z

.field protected usedMatchingTask:Z

.field private verbosity:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 82
    new-instance v0, Lorg/apache/tools/ant/types/resources/comparators/Reverse;

    new-instance v1, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;-><init>(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Delete;->REVERSE_FILESYSTEM:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    .line 83
    new-instance v0, Lorg/apache/tools/ant/types/resources/selectors/Exists;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/selectors/Exists;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Delete;->EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    .line 84
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Delete;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 116
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    .line 117
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    .line 118
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->filesets:Ljava/util/Vector;

    .line 119
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 121
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->includeEmpty:Z

    .line 124
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    .line 125
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->failonerror:Z

    .line 127
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->deleteOnExit:Z

    .line 128
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->removeNotFollowedSymlinks:Z

    .line 129
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->rcs:Lorg/apache/tools/ant/types/resources/Resources;

    .line 130
    const-string v0, "windows"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->performGc:Z

    return-void
.end method

.method private delete(Ljava/io/File;)Z
    .registers 6

    const/4 v1, 0x1

    .line 791
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Delete;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->performGc:Z

    invoke-virtual {v0, p1, v2}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;Z)Z

    move-result v0

    if-nez v0, :cond_36

    .line 792
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->deleteOnExit:Z

    if-eqz v0, :cond_34

    .line 793
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_32

    const/4 v0, 0x3

    .line 794
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", calling deleteOnExit. This attempts to delete the file when the Ant jvm has exited and might not succeed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 797
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    move v0, v1

    .line 802
    :goto_31
    return v0

    .line 793
    :cond_32
    const/4 v0, 0x2

    goto :goto_14

    .line 800
    :cond_34
    const/4 v0, 0x0

    goto :goto_31

    :cond_36
    move v0, v1

    .line 802
    goto :goto_31
.end method

.method private handle(Ljava/lang/Exception;)V
    .registers 3

    .line 779
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->failonerror:Z

    if-eqz v0, :cond_12

    .line 780
    instance-of v0, p1, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/apache/tools/ant/BuildException;

    :goto_a
    throw p1

    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_a

    .line 782
    :cond_12
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x3

    :goto_17
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/Throwable;I)V

    .line 783
    return-void

    .line 782
    :cond_1b
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    goto :goto_17
.end method

.method private handle(Ljava/lang/String;)V
    .registers 3

    .line 775
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/Exception;)V

    .line 776
    return-void
.end method

.method private isDanglingSymlink(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    .line 879
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 885
    :goto_b
    return v0

    .line 884
    :cond_c
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    .line 885
    xor-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 235
    if-nez p1, :cond_3

    .line 243
    :goto_2
    return-void

    .line 238
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->rcs:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_12

    .line 239
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->rcs:Lorg/apache/tools/ant/types/resources/Resources;

    .line 240
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Resources;->setCache(Z)V

    .line 242
    :cond_12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->rcs:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    goto :goto_2
.end method

.method public add(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .registers 3

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 576
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->add(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 577
    return-void
.end method

.method public addAnd(Lorg/apache/tools/ant/types/selectors/AndSelector;)V
    .registers 3

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 409
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addAnd(Lorg/apache/tools/ant/types/selectors/AndSelector;)V

    .line 410
    return-void
.end method

.method public addContains(Lorg/apache/tools/ant/types/selectors/ContainsSelector;)V
    .registers 3

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 508
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addContains(Lorg/apache/tools/ant/types/selectors/ContainsSelector;)V

    .line 509
    return-void
.end method

.method public addContainsRegexp(Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;)V
    .registers 3

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 552
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addContainsRegexp(Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;)V

    .line 553
    return-void
.end method

.method public addCustom(Lorg/apache/tools/ant/types/selectors/ExtendSelector;)V
    .registers 3

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 497
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addCustom(Lorg/apache/tools/ant/types/selectors/ExtendSelector;)V

    .line 498
    return-void
.end method

.method public addDate(Lorg/apache/tools/ant/types/selectors/DateSelector;)V
    .registers 3

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 464
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addDate(Lorg/apache/tools/ant/types/selectors/DateSelector;)V

    .line 465
    return-void
.end method

.method public addDepend(Lorg/apache/tools/ant/types/selectors/DependSelector;)V
    .registers 3

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 541
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addDepend(Lorg/apache/tools/ant/types/selectors/DependSelector;)V

    .line 542
    return-void
.end method

.method public addDepth(Lorg/apache/tools/ant/types/selectors/DepthSelector;)V
    .registers 3

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 530
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addDepth(Lorg/apache/tools/ant/types/selectors/DepthSelector;)V

    .line 531
    return-void
.end method

.method public addFilename(Lorg/apache/tools/ant/types/selectors/FilenameSelector;)V
    .registers 3

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 486
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addFilename(Lorg/apache/tools/ant/types/selectors/FilenameSelector;)V

    .line 487
    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 227
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->filesets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public addMajority(Lorg/apache/tools/ant/types/selectors/MajoritySelector;)V
    .registers 3

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 453
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addMajority(Lorg/apache/tools/ant/types/selectors/MajoritySelector;)V

    .line 454
    return-void
.end method

.method public addModified(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;)V
    .registers 3

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 564
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addModified(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;)V

    .line 565
    return-void
.end method

.method public addNone(Lorg/apache/tools/ant/types/selectors/NoneSelector;)V
    .registers 3

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 442
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addNone(Lorg/apache/tools/ant/types/selectors/NoneSelector;)V

    .line 443
    return-void
.end method

.method public addNot(Lorg/apache/tools/ant/types/selectors/NotSelector;)V
    .registers 3

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 431
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addNot(Lorg/apache/tools/ant/types/selectors/NotSelector;)V

    .line 432
    return-void
.end method

.method public addOr(Lorg/apache/tools/ant/types/selectors/OrSelector;)V
    .registers 3

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 420
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addOr(Lorg/apache/tools/ant/types/selectors/OrSelector;)V

    .line 421
    return-void
.end method

.method public addPresent(Lorg/apache/tools/ant/types/selectors/PresentSelector;)V
    .registers 3

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 519
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addPresent(Lorg/apache/tools/ant/types/selectors/PresentSelector;)V

    .line 520
    return-void
.end method

.method public addSelector(Lorg/apache/tools/ant/types/selectors/SelectSelector;)V
    .registers 3

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 398
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addSelector(Lorg/apache/tools/ant/types/selectors/SelectSelector;)V

    .line 399
    return-void
.end method

.method public addSize(Lorg/apache/tools/ant/types/selectors/SizeSelector;)V
    .registers 3

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 475
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->addSize(Lorg/apache/tools/ant/types/selectors/SizeSelector;)V

    .line 476
    return-void
.end method

.method public createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 272
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 282
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 252
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 262
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createPatternSet()Lorg/apache/tools/ant/types/PatternSet;
    .registers 2

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 292
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createPatternSet()Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x3

    .line 586
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    if-eqz v0, :cond_11

    .line 587
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_132

    move v0, v1

    :goto_c
    const-string v2, "DEPRECATED - Use of the implicit FileSet is deprecated.  Use a nested fileset element instead."

    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 591
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    if-nez v0, :cond_25

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    if-nez v0, :cond_25

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->rcs:Lorg/apache/tools/ant/types/resources/Resources;

    if-eqz v0, :cond_136

    .line 596
    :cond_25
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->failonerror:Z

    if-nez v0, :cond_13e

    .line 602
    :cond_2d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    if-eqz v0, :cond_63

    .line 603
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18c

    .line 604
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be removed using the file attribute.  Use dir instead."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 607
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_14a

    move v0, v1

    .line 605
    :goto_60
    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 629
    :cond_63
    :goto_63
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    if-eqz v0, :cond_9c

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    if-nez v2, :cond_9c

    .line 630
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_208

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_208

    .line 638
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    if-ne v0, v1, :cond_97

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;)V

    .line 641
    :cond_97
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->removeDir(Ljava/io/File;)V

    .line 651
    :cond_9c
    :goto_9c
    new-instance v4, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v4}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    .line 652
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/types/resources/Resources;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 653
    invoke-virtual {v4, v6}, Lorg/apache/tools/ant/types/resources/Resources;->setCache(Z)V

    .line 654
    new-instance v5, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v5}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    .line 655
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/tools/ant/types/resources/Resources;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 656
    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/types/resources/Resources;->setCache(Z)V

    .line 657
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    if-eqz v0, :cond_25b

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    if-eqz v0, :cond_25b

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_25b

    .line 660
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getImplicitFileSet()Lorg/apache/tools/ant/types/FileSet;

    move-result-object v0

    .line 661
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/FileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 662
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->filesets:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    .line 665
    :goto_d9
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->filesets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_df
    :goto_df
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 666
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    if-nez v7, :cond_103

    .line 667
    const-string v7, "Deleting fileset with no project specified; assuming executing project"

    invoke-virtual {p0, v7, v1}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 669
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    .line 670
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/FileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 672
    :cond_103
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->getDir()Ljava/io/File;

    move-result-object v7

    .line 673
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->getErrorOnMissingDir()Z

    move-result v8

    if-nez v8, :cond_115

    if-eqz v7, :cond_df

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_df

    .line 676
    :cond_115
    if-eqz v7, :cond_2d0

    .line 678
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_25f

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Directory does not exist: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    goto :goto_df

    .line 587
    :cond_132
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    goto/16 :goto_c

    .line 592
    :cond_136
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "At least one of the file or dir attributes, or a nested resource collection, must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_13e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "quiet and failonerror cannot both be set to true"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 607
    :cond_14a
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    goto/16 :goto_60

    .line 609
    :cond_14e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    goto/16 :goto_63

    .line 615
    :cond_18c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->isDanglingSymlink(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1df

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to delete file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which looks like a broken symlink."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 618
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_1dc

    move v0, v1

    .line 616
    :goto_1b5
    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 619
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    goto/16 :goto_63

    .line 618
    :cond_1dc
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    goto :goto_1b5

    .line 623
    :cond_1df
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to delete."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 624
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_205

    move v0, v1

    .line 623
    :goto_200
    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    goto/16 :goto_63

    .line 624
    :cond_205
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    goto :goto_200

    .line 642
    :cond_208
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->isDanglingSymlink(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to delete directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which looks like a broken symlink."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 645
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_258

    move v0, v1

    .line 643
    :goto_231
    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 646
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    goto/16 :goto_9c

    .line 645
    :cond_258
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    goto :goto_231

    .line 665
    :cond_25b
    const/4 v0, 0x0

    move-object v2, v0

    goto/16 :goto_d9

    .line 681
    :cond_25f
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v8

    .line 686
    new-instance v9, Lorg/apache/tools/ant/taskdefs/Delete$1;

    invoke-direct {v9, p0, v8, v7}, Lorg/apache/tools/ant/taskdefs/Delete$1;-><init>(Lorg/apache/tools/ant/taskdefs/Delete;[Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v4, v9}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 703
    iget-boolean v8, p0, Lorg/apache/tools/ant/taskdefs/Delete;->includeEmpty:Z

    if-eqz v8, :cond_283

    .line 704
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    .line 705
    new-instance v9, Lorg/apache/tools/ant/taskdefs/Delete$ReverseDirs;

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v8, v7, v10}, Lorg/apache/tools/ant/taskdefs/Delete$ReverseDirs;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    .line 704
    invoke-virtual {v5, v9}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 708
    :cond_283
    iget-boolean v7, p0, Lorg/apache/tools/ant/taskdefs/Delete;->removeNotFollowedSymlinks:Z

    if-eqz v7, :cond_df

    .line 709
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getNotFollowedSymlinks()[Ljava/lang/String;

    move-result-object v0

    .line 710
    array-length v7, v0

    if-lez v7, :cond_df

    .line 711
    array-length v7, v0

    new-array v7, v7, [Ljava/lang/String;

    .line 712
    array-length v8, v0

    invoke-static {v0, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    invoke-static {}, Lorg/apache/tools/ant/filters/SortFilter$$ExternalSyntheticStaticInterfaceCall0;->m()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 714
    array-length v8, v7

    move v0, v3

    :goto_29e
    if-ge v0, v8, :cond_df

    aget-object v9, v7, v0

    .line 715
    new-array v10, v3, [Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v9

    .line 716
    invoke-static {v9}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v10

    if-nez v10, :cond_2b1

    .line 722
    :cond_2ae
    :goto_2ae
    add-int/lit8 v0, v0, 0x1

    goto :goto_29e

    .line 721
    :cond_2b1
    invoke-interface {v9}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    .line 722
    if-nez v10, :cond_2ae

    .line 723
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not delete symbolic link at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    goto :goto_2ae

    .line 677
    :cond_2d0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File or Resource without directory or file specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_2d8
    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 731
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->rcs:Lorg/apache/tools/ant/types/resources/Resources;

    if-eqz v0, :cond_2fe

    .line 733
    new-instance v0, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Restrict;-><init>()V

    .line 734
    sget-object v1, Lorg/apache/tools/ant/taskdefs/Delete;->EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 735
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->rcs:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 736
    new-instance v1, Lorg/apache/tools/ant/types/resources/Sort;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Sort;-><init>()V

    .line 737
    sget-object v3, Lorg/apache/tools/ant/taskdefs/Delete;->REVERSE_FILESYSTEM:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/resources/Sort;->add(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V

    .line 738
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/resources/Sort;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 739
    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 742
    :cond_2fe
    :try_start_2fe
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/resources/Resources;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_382

    .line 743
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/resources/Resources;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_308
    :goto_308
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 746
    const-class v3, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v3

    .line 747
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_308

    .line 750
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_333

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_308

    .line 751
    :cond_333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 752
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_308

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->failonerror:Z

    if-eqz v0, :cond_308

    .line 753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to delete "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z
    :try_end_360
    .catch Ljava/lang/Exception; {:try_start_2fe .. :try_end_360} :catch_373
    .catchall {:try_start_2fe .. :try_end_360} :catchall_39d

    move-result v0

    if-eqz v0, :cond_37f

    const-string v0, "directory "

    :goto_365
    :try_start_365
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V
    :try_end_372
    .catch Ljava/lang/Exception; {:try_start_365 .. :try_end_372} :catch_373
    .catchall {:try_start_365 .. :try_end_372} :catchall_39d

    goto :goto_308

    .line 761
    :catch_373
    move-exception v0

    .line 762
    :try_start_374
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/Exception;)V
    :try_end_377
    .catchall {:try_start_374 .. :try_end_377} :catchall_39d

    .line 764
    if-eqz v2, :cond_37e

    .line 765
    :goto_379
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->filesets:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 768
    :cond_37e
    return-void

    .line 754
    :cond_37f
    const-string v0, "file "

    goto :goto_365

    .line 759
    :cond_382
    :try_start_382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " handles only filesystem resources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V
    :try_end_39a
    .catch Ljava/lang/Exception; {:try_start_382 .. :try_end_39a} :catch_373
    .catchall {:try_start_382 .. :try_end_39a} :catchall_39d

    .line 764
    :cond_39a
    if-eqz v2, :cond_37e

    goto :goto_379

    :catchall_39d
    move-exception v0

    if-eqz v2, :cond_3a5

    .line 765
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->filesets:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 767
    :cond_3a5
    throw v0
.end method

.method protected removeDir(Ljava/io/File;)V
    .registers 8

    const/4 v1, 0x0

    .line 811
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 812
    if-nez v0, :cond_9

    .line 813
    new-array v0, v1, [Ljava/lang/String;

    .line 815
    :cond_9
    array-length v3, v0

    move v2, v1

    :goto_b
    if-ge v2, v3, :cond_60

    aget-object v1, v0, v2

    .line 816
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 817
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 818
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Delete;->removeDir(Ljava/io/File;)V

    .line 815
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_b

    .line 820
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v1, :cond_5d

    const/4 v1, 0x3

    :goto_3b
    invoke-virtual {p0, v5, v1}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 821
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete file "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    goto :goto_1d

    .line 820
    :cond_5d
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    goto :goto_3b

    .line 826
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 827
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_98

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to delete directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    .line 830
    :cond_98
    return-void
.end method

.method protected removeFiles(Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11

    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 840
    array-length v0, p2

    if-lez v0, :cond_7b

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " files from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_75

    move v0, v1

    .line 841
    :goto_28
    invoke-virtual {p0, v3, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 843
    array-length v4, p2

    move v3, v2

    :goto_2d
    if-ge v3, v4, :cond_7b

    aget-object v0, p2, v3

    .line 844
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 846
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_78

    move v0, v1

    .line 845
    :goto_50
    invoke-virtual {p0, v6, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 847
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete file "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    .line 843
    :cond_71
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2d

    .line 842
    :cond_75
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    goto :goto_28

    .line 846
    :cond_78
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    goto :goto_50

    .line 853
    :cond_7b
    array-length v0, p3

    if-lez v0, :cond_111

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->includeEmpty:Z

    if-eqz v0, :cond_111

    .line 855
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_86
    if-ltz v3, :cond_de

    .line 856
    new-instance v4, Ljava/io/File;

    aget-object v0, p3, v3

    invoke-direct {v4, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 857
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 858
    if-eqz v0, :cond_98

    array-length v0, v0

    if-nez v0, :cond_118

    .line 859
    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 860
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v0, :cond_d8

    move v0, v1

    .line 859
    :goto_b2
    invoke-virtual {p0, v5, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 861
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/Delete;->delete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_db

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete directory "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Delete;->handle(Ljava/lang/String;)V

    move v0, v2

    .line 855
    :goto_d4
    add-int/lit8 v3, v3, -0x1

    move v2, v0

    goto :goto_86

    .line 860
    :cond_d8
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    goto :goto_b2

    .line 864
    :cond_db
    add-int/lit8 v0, v2, 0x1

    goto :goto_d4

    .line 869
    :cond_de
    if-lez v2, :cond_111

    .line 870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Deleted "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " director"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    const/4 v0, 0x1

    if-ne v2, v0, :cond_112

    const-string v0, "y"

    :goto_f7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " form "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    if-eqz v2, :cond_115

    .line 870
    :goto_10e
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Delete;->log(Ljava/lang/String;I)V

    .line 876
    :cond_111
    return-void

    .line 871
    :cond_112
    const-string v0, "ies"

    goto :goto_f7

    .line 873
    :cond_115
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    goto :goto_10e

    :cond_118
    move v0, v2

    goto :goto_d4
.end method

.method public setCaseSensitive(Z)V
    .registers 3

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 365
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->setCaseSensitive(Z)V

    .line 366
    return-void
.end method

.method public setDefaultexcludes(Z)V
    .registers 3

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 329
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->setDefaultexcludes(Z)V

    .line 330
    return-void
.end method

.method public setDeleteOnExit(Z)V
    .registers 2

    .line 196
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->deleteOnExit:Z

    .line 197
    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .registers 3

    .line 147
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->dir:Ljava/io/File;

    .line 148
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Delete;->getImplicitFileSet()Lorg/apache/tools/ant/types/FileSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 149
    return-void
.end method

.method public setExcludes(Ljava/lang/String;)V
    .registers 3

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 316
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->setExcludes(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public setExcludesfile(Ljava/io/File;)V
    .registers 3

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 353
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->setExcludesfile(Ljava/io/File;)V

    .line 354
    return-void
.end method

.method public setFailOnError(Z)V
    .registers 2

    .line 186
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->failonerror:Z

    .line 187
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->file:Ljava/io/File;

    .line 139
    return-void
.end method

.method public setFollowSymlinks(Z)V
    .registers 3

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 376
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->setFollowSymlinks(Z)V

    .line 377
    return-void
.end method

.method public setIncludeEmptyDirs(Z)V
    .registers 2

    .line 205
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->includeEmpty:Z

    .line 206
    return-void
.end method

.method public setIncludes(Ljava/lang/String;)V
    .registers 3

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 304
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->setIncludes(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public setIncludesfile(Ljava/io/File;)V
    .registers 3

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->usedMatchingTask:Z

    .line 341
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->setIncludesfile(Ljava/io/File;)V

    .line 342
    return-void
.end method

.method public setPerformGcOnFailedDelete(Z)V
    .registers 2

    .line 219
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->performGc:Z

    .line 220
    return-void
.end method

.method public setQuiet(Z)V
    .registers 3

    .line 174
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->quiet:Z

    .line 175
    if-eqz p1, :cond_7

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->failonerror:Z

    .line 178
    :cond_7
    return-void
.end method

.method public setRemoveNotFollowedSymlinks(Z)V
    .registers 2

    .line 387
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Delete;->removeNotFollowedSymlinks:Z

    .line 388
    return-void
.end method

.method public setVerbose(Z)V
    .registers 3

    .line 157
    if-eqz p1, :cond_6

    .line 158
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    .line 162
    :goto_5
    return-void

    .line 160
    :cond_6
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Delete;->verbosity:I

    goto :goto_5
.end method
