.class public Lorg/apache/tools/ant/types/resources/Files;
.super Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;
.source "Files.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# instance fields
.field private additionalPatterns:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/PatternSet;",
            ">;"
        }
    .end annotation
.end field

.field private caseSensitive:Z

.field private defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

.field private ds:Lorg/apache/tools/ant/DirectoryScanner;

.field private followSymlinks:Z

.field private useDefaultExcludes:Z


# direct methods
.method public static synthetic $r8$lambda$oG2sTdaqT74-7iL0n5nKgy9fY2A(Lorg/apache/tools/ant/types/resources/Files;Lorg/apache/tools/ant/types/PatternSet;)Z
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/Files;->hasPatterns(Lorg/apache/tools/ant/types/PatternSet;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    .line 57
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PatternSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->additionalPatterns:Ljava/util/Vector;

    .line 46
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/resources/Files;->useDefaultExcludes:Z

    .line 47
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/resources/Files;->caseSensitive:Z

    .line 48
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/resources/Files;->followSymlinks:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    .line 58
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/resources/Files;)V
    .registers 4

    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PatternSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->additionalPatterns:Ljava/util/Vector;

    .line 46
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/resources/Files;->useDefaultExcludes:Z

    .line 47
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/resources/Files;->caseSensitive:Z

    .line 48
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/resources/Files;->followSymlinks:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    .line 66
    iget-object v0, p1, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    .line 67
    iget-object v0, p1, Lorg/apache/tools/ant/types/resources/Files;->additionalPatterns:Ljava/util/Vector;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->additionalPatterns:Ljava/util/Vector;

    .line 68
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/resources/Files;->useDefaultExcludes:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/Files;->useDefaultExcludes:Z

    .line 69
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/resources/Files;->caseSensitive:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/Files;->caseSensitive:Z

    .line 70
    iget-boolean v0, p1, Lorg/apache/tools/ant/types/resources/Files;->followSymlinks:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/Files;->followSymlinks:Z

    .line 71
    iget-object v0, p1, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    .line 72
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/Files;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Files;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 73
    return-void
.end method

.method private ensureDirectoryScannerSetup()V
    .registers 4

    monitor-enter p0

    .line 465
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->dieOnCircularReference()V

    .line 466
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    if-nez v0, :cond_1

    .line 467
    new-instance v0, Lorg/apache/tools/ant/DirectoryScanner;

    invoke-direct {v0}, Lorg/apache/tools/ant/DirectoryScanner;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    .line 468
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Files;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/DirectoryScanner;->setIncludes([Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/DirectoryScanner;->setExcludes([Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/resources/Files;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->setSelectors([Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 472
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/Files;->useDefaultExcludes:Z

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->addDefaultExcludes()V

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    iget-boolean v1, p0, Lorg/apache/tools/ant/types/resources/Files;->caseSensitive:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->setCaseSensitive(Z)V

    .line 476
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    iget-boolean v1, p0, Lorg/apache/tools/ant/types/resources/Files;->followSymlinks:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DirectoryScanner;->setFollowSymlinks(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :cond_1
    monitor-exit p0

    return-void

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hasPatterns(Lorg/apache/tools/ant/types/PatternSet;)Z
    .registers 4

    .line 481
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v1

    .line 483
    if-eqz v0, :cond_0

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$mergePatterns$0(Lorg/apache/tools/ant/types/PatternSet;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/PatternSet;)V
    .registers 3

    .line 441
    invoke-virtual {p0, p2, p1}, Lorg/apache/tools/ant/types/PatternSet;->append(Lorg/apache/tools/ant/types/PatternSet;Lorg/apache/tools/ant/Project;)V

    return-void
.end method


# virtual methods
.method public appendExcludes([Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->checkAttributesAllowed()V

    .line 212
    if-eqz p1, :cond_1

    .line 213
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 214
    :try_start_1
    iget-object v3, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/PatternSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :cond_1
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public appendIncludes([Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->checkAttributesAllowed()V

    .line 182
    if-eqz p1, :cond_1

    .line 183
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 184
    :try_start_1
    iget-object v3, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/PatternSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :cond_1
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .registers 3

    monitor-enter p0

    .line 369
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 370
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    monitor-enter p0

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getRef()Lorg/apache/tools/ant/types/resources/Files;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Files;->clone()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 405
    :goto_0
    return-object v0

    .line 399
    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Files;

    .line 400
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/PatternSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/PatternSet;

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    .line 401
    new-instance v1, Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/Files;->additionalPatterns:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/resources/Files;->additionalPatterns:Ljava/util/Vector;

    .line 402
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Files;->additionalPatterns:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/PatternSet;

    .line 403
    iget-object v3, v0, Lorg/apache/tools/ant/types/resources/Files;->additionalPatterns:Ljava/util/Vector;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/PatternSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 405
    :cond_1
    monitor-exit p0

    goto :goto_0
.end method

.method public createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 142
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    monitor-enter p0

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    .line 157
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet;->createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 154
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 118
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet;->createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 130
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createPatternSet()Lorg/apache/tools/ant/types/PatternSet;
    .registers 3

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PatternSet;-><init>()V

    .line 106
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Files;->additionalPatterns:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/resources/Files;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-object v0

    .line 103
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultexcludes()Z
    .registers 2

    monitor-enter p0

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getRef()Lorg/apache/tools/ant/types/resources/Files;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Files;->getDefaultexcludes()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 260
    :goto_0
    monitor-exit p0

    return v0

    .line 261
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/Files;->useDefaultExcludes:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/resources/Files;
    .registers 2

    .line 461
    const-class v0, Lorg/apache/tools/ant/types/resources/Files;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Files;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Files;

    return-object v0
.end method

.method public hasPatterns()Z
    .registers 3

    monitor-enter p0

    .line 354
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getRef()Lorg/apache/tools/ant/types/resources/Files;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Files;->hasPatterns()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    .line 358
    :goto_0
    return v0

    .line 357
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->dieOnCircularReference()V

    .line 358
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/Files;->hasPatterns(Lorg/apache/tools/ant/types/PatternSet;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->additionalPatterns:Ljava/util/Vector;

    .line 359
    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/Files$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/resources/Files$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/types/resources/Files;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 358
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 359
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCaseSensitive()Z
    .registers 2

    monitor-enter p0

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getRef()Lorg/apache/tools/ant/types/resources/Files;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Files;->isCaseSensitive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 282
    :goto_0
    monitor-exit p0

    return v0

    .line 283
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/Files;->caseSensitive:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic isEmpty()Z
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$isEmpty(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    return v0
.end method

.method public isFilesystemOnly()Z
    .registers 2

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public isFollowSymlinks()Z
    .registers 2

    monitor-enter p0

    .line 304
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getRef()Lorg/apache/tools/ant/types/resources/Files;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Files;->isFollowSymlinks()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 304
    :goto_0
    monitor-exit p0

    return v0

    .line 305
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/Files;->followSymlinks:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getRef()Lorg/apache/tools/ant/types/resources/Files;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Files;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 331
    :goto_0
    return-object v0

    .line 317
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Files;->ensureDirectoryScannerSetup()V

    .line 318
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->scan()V

    .line 319
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFilesCount()I

    move-result v1

    .line 320
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirsCount()I

    move-result v2

    .line 321
    add-int v0, v1, v2

    if-nez v0, :cond_1

    .line 322
    invoke-static {}, Lorg/apache/tools/ant/types/resources/Files$$ExternalSyntheticBackport0;->m()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 324
    :cond_1
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 325
    if-lez v1, :cond_2

    .line 326
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->addFiles([Ljava/lang/String;)V

    .line 328
    :cond_2
    if-lez v2, :cond_3

    .line 329
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->addFiles([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mergeExcludes(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;
    .registers 3

    .line 425
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/Files;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mergeIncludes(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;
    .registers 3

    .line 415
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/Files;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;
    .registers 5

    monitor-enter p0

    .line 435
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getRef()Lorg/apache/tools/ant/types/resources/Files;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Files;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 442
    :goto_0
    return-object v0

    .line 438
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->dieOnCircularReference()V

    .line 439
    new-instance v0, Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PatternSet;-><init>()V

    .line 440
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/types/PatternSet;->append(Lorg/apache/tools/ant/types/PatternSet;Lorg/apache/tools/ant/Project;)V

    .line 441
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Files;->additionalPatterns:Ljava/util/Vector;

    new-instance v2, Lorg/apache/tools/ant/types/resources/Files$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lorg/apache/tools/ant/types/resources/Files$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/types/PatternSet;Lorg/apache/tools/ant/Project;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    monitor-exit p0

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCaseSensitive(Z)V
    .registers 3

    monitor-enter p0

    .line 270
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->checkAttributesAllowed()V

    .line 271
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/Files;->caseSensitive:Z

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultexcludes(Z)V
    .registers 3

    monitor-enter p0

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->checkAttributesAllowed()V

    .line 251
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/Files;->useDefaultExcludes:Z

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setExcludes(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->checkAttributesAllowed()V

    .line 200
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->setExcludes(Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
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

    .line 239
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->checkAttributesAllowed()V

    .line 240
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->setExcludesfile(Ljava/io/File;)V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFollowSymlinks(Z)V
    .registers 3

    monitor-enter p0

    .line 292
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->checkAttributesAllowed()V

    .line 293
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/Files;->followSymlinks:Z

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIncludes(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->checkAttributesAllowed()V

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->setIncludes(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
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

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->checkAttributesAllowed()V

    .line 228
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->setIncludesfile(Ljava/io/File;)V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->defaultPatterns:Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/Files;->hasPatterns(Lorg/apache/tools/ant/types/PatternSet;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->additionalPatterns:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->hasSelectors()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 95
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public size()I
    .registers 3

    monitor-enter p0

    .line 340
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getRef()Lorg/apache/tools/ant/types/resources/Files;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Files;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    .line 345
    :goto_0
    return v0

    .line 343
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Files;->ensureDirectoryScannerSetup()V

    .line 344
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->scan()V

    .line 345
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFilesCount()I

    move-result v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Files;->ds:Lorg/apache/tools/ant/DirectoryScanner;

    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirsCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    add-int/2addr v0, v1

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 382
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->getRef()Lorg/apache/tools/ant/types/resources/Files;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Files;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Files;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
