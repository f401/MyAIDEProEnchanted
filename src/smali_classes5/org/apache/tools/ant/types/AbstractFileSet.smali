.class public abstract Lorg/apache/tools/ant/types/AbstractFileSet;
.super Lorg/apache/tools/ant/types/DataType;
.source "AbstractFileSet.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/tools/ant/types/selectors/SelectorContainer;


# instance fields
.field private additionalPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/PatternSet;",
            ">;"
        }
    .end annotation
.end field

.field private caseSensitive:Z

.field private defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

.field private dir:Ljava/io/File;

.field private directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

.field private errorOnMissingDir:Z

.field private fileAttributeUsed:Z

.field private followSymlinks:Z

.field private maxLevelsOfSymlinks:I

.field private selectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/selectors/FileSelector;",
            ">;"
        }
    .end annotation
.end field

.field private useDefaultExcludes:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 71
    new-instance v0, Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PatternSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    .line 77
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->useDefaultExcludes:Z

    .line 78
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->caseSensitive:Z

    .line 79
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->followSymlinks:Z

    .line 80
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->maxLevelsOfSymlinks:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    .line 91
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/AbstractFileSet;)V
    .registers 4

    const/4 v1, 0x1

    .line 98
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 71
    new-instance v0, Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PatternSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    .line 77
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->useDefaultExcludes:Z

    .line 78
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->caseSensitive:Z

    .line 79
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->followSymlinks:Z

    .line 80
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->maxLevelsOfSymlinks:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    .line 99
    iget-object v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    .line 100
    iget-object v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    .line 101
    iget-object v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    .line 102
    iget-object v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    .line 103
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->useDefaultExcludes:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->useDefaultExcludes:Z

    .line 104
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->caseSensitive:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->caseSensitive:Z

    .line 105
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->followSymlinks:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->followSymlinks:Z

    .line 106
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    .line 107
    iget v0, p1, Lorg/apache/tools/ant/types/AbstractFileSet;->maxLevelsOfSymlinks:I

    iput v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->maxLevelsOfSymlinks:I

    .line 108
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 109
    return-void
.end method

.method private dirAndFileAreMutuallyExclusive()Lorg/apache/tools/ant/BuildException;
    .registers 3

    .line 995
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "you can only specify one of the dir and file attributes"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$dieOnCircularReference$2(Ljava/util/Stack;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/DataType;)V
    .registers 3

    .line 988
    invoke-static {p2, p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method static synthetic lambda$dieOnCircularReference$3(Ljava/util/Stack;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/PatternSet;)V
    .registers 3

    .line 989
    invoke-static {p2, p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method static synthetic lambda$mergePatterns$1(Lorg/apache/tools/ant/types/PatternSet;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/PatternSet;)V
    .registers 3

    .line 974
    invoke-virtual {p0, p2, p1}, Lorg/apache/tools/ant/types/PatternSet;->append(Lorg/apache/tools/ant/types/PatternSet;Lorg/apache/tools/ant/Project;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .registers 2

    .line 895
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 896
    return-void
.end method

.method public addAnd(Lorg/apache/tools/ant/types/selectors/AndSelector;)V
    .registers 2

    .line 692
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 693
    return-void
.end method

.method public addContains(Lorg/apache/tools/ant/types/selectors/ContainsSelector;)V
    .registers 2

    .line 791
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 792
    return-void
.end method

.method public addContainsRegexp(Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;)V
    .registers 2

    .line 827
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 828
    return-void
.end method

.method public addCustom(Lorg/apache/tools/ant/types/selectors/ExtendSelector;)V
    .registers 2

    .line 782
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 783
    return-void
.end method

.method public addDate(Lorg/apache/tools/ant/types/selectors/DateSelector;)V
    .registers 2

    .line 737
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 738
    return-void
.end method

.method public addDepend(Lorg/apache/tools/ant/types/selectors/DependSelector;)V
    .registers 2

    .line 818
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 819
    return-void
.end method

.method public addDepth(Lorg/apache/tools/ant/types/selectors/DepthSelector;)V
    .registers 2

    .line 809
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 810
    return-void
.end method

.method public addDifferent(Lorg/apache/tools/ant/types/selectors/DifferentSelector;)V
    .registers 2

    .line 755
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 756
    return-void
.end method

.method public addExecutable(Lorg/apache/tools/ant/types/selectors/ExecutableSelector;)V
    .registers 2

    .line 853
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 854
    return-void
.end method

.method public addFilename(Lorg/apache/tools/ant/types/selectors/FilenameSelector;)V
    .registers 2

    .line 764
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 765
    return-void
.end method

.method public addMajority(Lorg/apache/tools/ant/types/selectors/MajoritySelector;)V
    .registers 2

    .line 728
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 729
    return-void
.end method

.method public addModified(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;)V
    .registers 2

    .line 837
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 838
    return-void
.end method

.method public addNone(Lorg/apache/tools/ant/types/selectors/NoneSelector;)V
    .registers 2

    .line 719
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 720
    return-void
.end method

.method public addNot(Lorg/apache/tools/ant/types/selectors/NotSelector;)V
    .registers 2

    .line 710
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 711
    return-void
.end method

.method public addOr(Lorg/apache/tools/ant/types/selectors/OrSelector;)V
    .registers 2

    .line 701
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 702
    return-void
.end method

.method public addOwnedBy(Lorg/apache/tools/ant/types/selectors/OwnedBySelector;)V
    .registers 2

    .line 869
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 870
    return-void
.end method

.method public addPosixGroup(Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;)V
    .registers 2

    .line 877
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 878
    return-void
.end method

.method public addPosixPermissions(Lorg/apache/tools/ant/types/selectors/PosixPermissionsSelector;)V
    .registers 2

    .line 885
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 886
    return-void
.end method

.method public addPresent(Lorg/apache/tools/ant/types/selectors/PresentSelector;)V
    .registers 2

    .line 800
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 801
    return-void
.end method

.method public addReadable(Lorg/apache/tools/ant/types/selectors/ReadableSelector;)V
    .registers 2

    .line 841
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 842
    return-void
.end method

.method public addSelector(Lorg/apache/tools/ant/types/selectors/SelectSelector;)V
    .registers 2

    .line 683
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 684
    return-void
.end method

.method public addSize(Lorg/apache/tools/ant/types/selectors/SizeSelector;)V
    .registers 2

    .line 746
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 747
    return-void
.end method

.method public addSymlink(Lorg/apache/tools/ant/types/selectors/SymlinkSelector;)V
    .registers 2

    .line 861
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 862
    return-void
.end method

.method public addType(Lorg/apache/tools/ant/types/selectors/TypeSelector;)V
    .registers 2

    .line 773
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 774
    return-void
.end method

.method public addWritable(Lorg/apache/tools/ant/types/selectors/WritableSelector;)V
    .registers 2

    .line 845
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 846
    return-void
.end method

.method public appendExcludes([Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 318
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_20

    .line 321
    if-eqz p1, :cond_1e

    .line 322
    array-length v1, p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_25

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_1b

    aget-object v2, p1, v0

    .line 323
    :try_start_f
    iget-object v3, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/PatternSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 325
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_25

    .line 327
    :cond_1e
    monitor-exit p0

    return-void

    .line 319
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_25

    .line 317
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public appendIncludes([Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 283
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_20

    .line 286
    if-eqz p1, :cond_1e

    .line 287
    array-length v1, p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_25

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_1b

    aget-object v2, p1, v0

    .line 288
    :try_start_f
    iget-object v3, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/PatternSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 290
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_25

    .line 292
    :cond_1e
    monitor-exit p0

    return-void

    .line 284
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_25

    .line 282
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .registers 3

    monitor-enter p0

    .line 667
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_15

    .line 670
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    .line 672
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->setChecked(Z)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1a

    .line 673
    monitor-exit p0

    return-void

    .line 668
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1a

    .line 666
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    monitor-enter p0

    .line 921
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 922
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->clone()Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_5f

    move-result-object v0

    monitor-exit p0

    .line 930
    :goto_14
    return-object v0

    .line 925
    :cond_15
    :try_start_15
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/AbstractFileSet;

    .line 926
    iget-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/PatternSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/PatternSet;

    iput-object v1, v0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    .line 927
    iget-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda5;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 928
    const-class v2, Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda4;

    const-class v3, Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    .line 929
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;
    :try_end_56
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_15 .. :try_end_56} :catch_58
    .catchall {:try_start_15 .. :try_end_56} :catchall_5f

    .line 930
    monitor-exit p0

    goto :goto_14

    .line 931
    :catch_58
    move-exception v0

    .line 932
    :try_start_59
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_5f

    .line 920
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    monitor-enter p0

    .line 214
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_12

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    .line 218
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_17

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 215
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_17

    .line 213
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    monitor-enter p0

    .line 226
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_12

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    .line 230
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet;->createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_17

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 227
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_17

    .line 225
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    monitor-enter p0

    .line 190
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_12

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    .line 194
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_17

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 191
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_17

    .line 189
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    monitor-enter p0

    .line 202
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_12

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    .line 206
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet;->createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_17

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 203
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_17

    .line 201
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createPatternSet()Lorg/apache/tools/ant/types/PatternSet;
    .registers 3

    monitor-enter p0

    .line 176
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_16

    .line 179
    new-instance v0, Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PatternSet;-><init>()V

    .line 180
    iget-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1b

    .line 182
    monitor-exit p0

    return-object v0

    .line 177
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1b

    .line 175
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 981
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isChecked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_51

    move-result v0

    if-eqz v0, :cond_9

    .line 982
    monitor-exit p0

    .line 992
    :goto_8
    return-void

    .line 984
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 985
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_51

    .line 992
    :goto_12
    monitor-exit p0

    goto :goto_8

    .line 987
    :cond_14
    :try_start_14
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/types/DataType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda6;

    const-class v2, Lorg/apache/tools/ant/types/DataType;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/types/DataType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda3;

    const-class v2, Lorg/apache/tools/ant/types/DataType;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda0;-><init>(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 988
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 989
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda1;-><init>(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 990
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->setChecked(Z)V
    :try_end_50
    .catchall {:try_start_14 .. :try_end_50} :catchall_51

    goto :goto_12

    .line 980
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultexcludes()Z
    .registers 2

    monitor-enter p0

    .line 376
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 377
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDefaultexcludes()Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    move-result v0

    monitor-exit p0

    .line 380
    :goto_14
    return v0

    .line 379
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 380
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->useDefaultExcludes:Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    goto :goto_14

    .line 375
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDir()Ljava/io/File;
    .registers 2

    .line 154
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;
    .registers 3

    monitor-enter p0

    .line 164
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 165
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    move-result-object v0

    monitor-exit p0

    .line 168
    :goto_10
    return-object v0

    .line 167
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 168
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18

    monitor-exit p0

    goto :goto_10

    .line 163
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;
    .registers 2

    .line 489
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    return-object v0
.end method

.method public getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;
    .registers 7

    .line 498
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 499
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 529
    :goto_e
    return-object v0

    .line 501
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 503
    monitor-enter p0

    .line 504
    :try_start_13
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-ne p1, v0, :cond_24

    .line 505
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    .line 527
    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_63

    .line 528
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->scan()V

    goto :goto_e

    .line 507
    :cond_24
    :try_start_24
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    if-eqz v0, :cond_9a

    .line 511
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    if-nez v0, :cond_66

    .line 516
    :cond_32
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_83

    .line 520
    :cond_42
    new-instance v0, Lorg/apache/tools/ant/DirectoryScanner;

    invoke-direct {v0}, Lorg/apache/tools/ant/DirectoryScanner;-><init>()V

    .line 521
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->setupDirectoryScanner(Lorg/apache/tools/ant/FileScanner;Lorg/apache/tools/ant/Project;)V

    .line 522
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->followSymlinks:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->setFollowSymlinks(Z)V

    .line 523
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->setErrorOnMissingDir(Z)V

    .line 524
    iget v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->maxLevelsOfSymlinks:I

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->setMaxLevelsOfSymlinks(I)V

    .line 525
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    if-ne p1, v1, :cond_97

    move-object v1, v0

    :goto_60
    iput-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    goto :goto_1f

    .line 527
    :catchall_63
    move-exception v0

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_24 .. :try_end_65} :catchall_63

    throw v0

    .line 512
    :cond_66
    :try_start_66
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_83
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    .line 518
    const-string v2, "%s is not a directory."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 525
    :cond_97
    iget-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;

    goto :goto_60

    .line 508
    :cond_9a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 509
    const-string v1, "No directory specified for %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDataTypeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_ac
    .catchall {:try_start_66 .. :try_end_ac} :catchall_63
.end method

.method public getErrorOnMissingDir()Z
    .registers 2

    .line 481
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    return v0
.end method

.method public getMaxLevelsOfSymlinks()I
    .registers 2

    .line 460
    iget v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->maxLevelsOfSymlinks:I

    return v0
.end method

.method protected getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;
    .registers 4

    .line 585
    const-class v0, Lorg/apache/tools/ant/types/AbstractFileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/AbstractFileSet;

    return-object v0
.end method

.method public getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;
    .registers 4

    monitor-enter p0

    .line 639
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 640
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_25

    move-result-object v0

    monitor-exit p0

    .line 643
    :goto_14
    return-object v0

    .line 642
    :cond_15
    :try_start_15
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 643
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/tools/ant/types/selectors/FileSelector;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/selectors/FileSelector;
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_25

    monitor-exit p0

    goto :goto_14

    .line 638
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasPatterns()Z
    .registers 3

    monitor-enter p0

    .line 610
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 611
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->hasPatterns()Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_40

    move-result v0

    monitor-exit p0

    .line 614
    :goto_1a
    return v0

    .line 613
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 614
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/PatternSet;->hasPatterns(Lorg/apache/tools/ant/Project;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    .line 615
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda7;-><init>(Lorg/apache/tools/ant/types/AbstractFileSet;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_40

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3b
    const/4 v0, 0x1

    .line 614
    :goto_3c
    monitor-exit p0

    goto :goto_1a

    .line 615
    :cond_3e
    const/4 v0, 0x0

    goto :goto_3c

    .line 609
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasSelectors()Z
    .registers 2

    monitor-enter p0

    .line 597
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 598
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->hasSelectors()Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_22

    move-result v0

    monitor-exit p0

    .line 601
    :goto_14
    return v0

    .line 600
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 601
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_22

    move-result v0

    monitor-exit p0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 596
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCaseSensitive()Z
    .registers 2

    monitor-enter p0

    .line 405
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 406
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isCaseSensitive()Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    move-result v0

    monitor-exit p0

    .line 409
    :goto_14
    return v0

    .line 408
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 409
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->caseSensitive:Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    goto :goto_14

    .line 404
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFollowSymlinks()Z
    .registers 2

    monitor-enter p0

    .line 434
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 435
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isCaseSensitive()Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    move-result v0

    monitor-exit p0

    .line 438
    :goto_14
    return v0

    .line 437
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 438
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->followSymlinks:Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    goto :goto_14

    .line 433
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$hasPatterns$0$AbstractFileSet(Lorg/apache/tools/ant/types/PatternSet;)Z
    .registers 3

    .line 615
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/PatternSet;->hasPatterns(Lorg/apache/tools/ant/Project;)Z

    move-result v0

    return v0
.end method

.method public mergeExcludes(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;
    .registers 3

    .line 957
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mergeIncludes(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;
    .registers 3

    .line 945
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;
    .registers 5

    monitor-enter p0

    .line 969
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 970
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_28

    move-result-object v0

    monitor-exit p0

    .line 975
    :goto_10
    return-object v0

    .line 972
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 973
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/PatternSet;

    .line 974
    iget-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    new-instance v2, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/types/PatternSet;Lorg/apache/tools/ant/Project;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_28

    .line 975
    monitor-exit p0

    goto :goto_10

    .line 968
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public selectorCount()I
    .registers 2

    monitor-enter p0

    .line 625
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 626
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->selectorCount()I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_20

    move-result v0

    monitor-exit p0

    .line 629
    :goto_14
    return v0

    .line 628
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 629
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_20

    move-result v0

    monitor-exit p0

    goto :goto_14

    .line 624
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public selectorElements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/tools/ant/types/selectors/FileSelector;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 653
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 654
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->selectorElements()Ljava/util/Enumeration;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_20

    move-result-object v0

    monitor-exit p0

    .line 657
    :goto_14
    return-object v0

    .line 656
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 657
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_20

    move-result-object v0

    monitor-exit p0

    goto :goto_14

    .line 652
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCaseSensitive(Z)V
    .registers 3

    monitor-enter p0

    .line 389
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_e

    .line 392
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->caseSensitive:Z

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    .line 394
    monitor-exit p0

    return-void

    .line 390
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_13

    .line 388
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultexcludes(Z)V
    .registers 3

    monitor-enter p0

    .line 363
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_e

    .line 366
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->useDefaultExcludes:Z

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    .line 368
    monitor-exit p0

    return-void

    .line 364
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_13

    .line 362
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDir(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 139
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_24

    .line 142
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->fileAttributeUsed:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 145
    :cond_15
    iput-object p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_21

    .line 147
    monitor-exit p0

    return-void

    .line 143
    :cond_1c
    :try_start_1c
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dirAndFileAreMutuallyExclusive()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_21

    .line 138
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21
.end method

.method public setErrorOnMissingDir(Z)V
    .registers 2

    .line 470
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->errorOnMissingDir:Z

    .line 471
    return-void
.end method

.method public setExcludes(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 303
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_11

    .line 306
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->setExcludes(Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_16

    .line 308
    monitor-exit p0

    return-void

    .line 304
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_16

    .line 302
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setExcludesfile(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 350
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_11

    .line 353
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->setExcludesfile(Ljava/io/File;)V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_16

    .line 355
    monitor-exit p0

    return-void

    .line 351
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_16

    .line 349
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 5

    const/4 v2, 0x1

    monitor-enter p0

    .line 239
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_63

    .line 242
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->fileAttributeUsed:Z

    if-eqz v0, :cond_41

    .line 243
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 244
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    .line 245
    array-length v1, v0

    if-ne v1, v2, :cond_36

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_3e

    move-result v0

    if-eqz v0, :cond_36

    .line 247
    monitor-exit p0

    .line 257
    :goto_35
    return-void

    .line 250
    :cond_36
    :try_start_36
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "setFile cannot be called twice with different arguments"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_3e

    .line 238
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 251
    :cond_41
    :try_start_41
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_5e

    .line 254
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->setDir(Ljava/io/File;)V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->fileAttributeUsed:Z

    .line 256
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_41 .. :try_end_5c} :catchall_3e

    .line 257
    monitor-exit p0

    goto :goto_35

    .line 252
    :cond_5e
    :try_start_5e
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dirAndFileAreMutuallyExclusive()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 240
    :cond_63
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_3e
.end method

.method public setFollowSymlinks(Z)V
    .registers 3

    monitor-enter p0

    .line 418
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_e

    .line 421
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->followSymlinks:Z

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    .line 423
    monitor-exit p0

    return-void

    .line 419
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_13

    .line 417
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIncludes(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 268
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_11

    .line 271
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->setIncludes(Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_16

    .line 273
    monitor-exit p0

    return-void

    .line 269
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_16

    .line 267
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIncludesfile(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 336
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_11

    .line 339
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->setIncludesfile(Ljava/io/File;)V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->directoryScanner:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_16

    .line 341
    monitor-exit p0

    return-void

    .line 337
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_16

    .line 335
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxLevelsOfSymlinks(I)V
    .registers 2

    .line 449
    iput p1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->maxLevelsOfSymlinks:I

    .line 450
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/PatternSet;->hasPatterns(Lorg/apache/tools/ant/Project;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->additionalPatterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 127
    iget-object v0, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->selectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 130
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 131
    return-void

    .line 128
    :cond_24
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 125
    :cond_29
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 122
    :cond_2e
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setupDirectoryScanner(Lorg/apache/tools/ant/FileScanner;)V
    .registers 3

    .line 538
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->setupDirectoryScanner(Lorg/apache/tools/ant/FileScanner;Lorg/apache/tools/ant/Project;)V

    .line 539
    return-void
.end method

.method public setupDirectoryScanner(Lorg/apache/tools/ant/FileScanner;Lorg/apache/tools/ant/Project;)V
    .registers 7

    monitor-enter p0

    .line 547
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 548
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/tools/ant/types/AbstractFileSet;->setupDirectoryScanner(Lorg/apache/tools/ant/FileScanner;Lorg/apache/tools/ant/Project;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_77

    .line 549
    monitor-exit p0

    .line 571
    :goto_f
    return-void

    .line 551
    :cond_10
    :try_start_10
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 552
    if-eqz p1, :cond_6f

    .line 555
    iget-object v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    invoke-interface {p1, v1}, Lorg/apache/tools/ant/FileScanner;->setBasedir(Ljava/io/File;)V

    .line 557
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/AbstractFileSet;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v1

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDataTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Setup scanner in dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->dir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 561
    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/tools/ant/FileScanner;->setIncludes([Ljava/lang/String;)V

    .line 562
    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/tools/ant/FileScanner;->setExcludes([Ljava/lang/String;)V

    .line 563
    instance-of v1, p1, Lorg/apache/tools/ant/types/selectors/SelectorScanner;

    if-eqz v1, :cond_61

    .line 564
    move-object v0, p1

    check-cast v0, Lorg/apache/tools/ant/types/selectors/SelectorScanner;

    move-object v1, v0

    .line 565
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/AbstractFileSet;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/tools/ant/types/selectors/SelectorScanner;->setSelectors([Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 567
    :cond_61
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->useDefaultExcludes:Z

    if-eqz v1, :cond_68

    .line 568
    invoke-interface {p1}, Lorg/apache/tools/ant/FileScanner;->addDefaultExcludes()V

    .line 570
    :cond_68
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/AbstractFileSet;->caseSensitive:Z

    invoke-interface {p1, v1}, Lorg/apache/tools/ant/FileScanner;->setCaseSensitive(Z)V
    :try_end_6d
    .catchall {:try_start_10 .. :try_end_6d} :catchall_77

    .line 571
    monitor-exit p0

    goto :goto_f

    .line 553
    :cond_6f
    :try_start_6f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ds cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_77

    .line 546
    :catchall_77
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 905
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 906
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->toString()Ljava/lang/String;

    move-result-object v0

    .line 909
    :goto_12
    return-object v0

    .line 908
    :cond_13
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->dieOnCircularReference()V

    .line 909
    const-string v0, ";"

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method
