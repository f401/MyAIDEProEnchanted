.class public abstract Lorg/apache/tools/ant/taskdefs/MatchingTask;
.super Lorg/apache/tools/ant/Task;
.source "MatchingTask.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/SelectorContainer;


# instance fields
.field protected fileset:Lorg/apache/tools/ant/types/FileSet;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 61
    new-instance v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    return-void
.end method


# virtual methods
.method public XsetIgnore(Ljava/lang/String;)V
    .registers 6

    .line 163
    const-string v0, "The ignore attribute is deprecated.Please use the excludes attribute."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->log(Ljava/lang/String;I)V

    .line 165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", "

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method public XsetItems(Ljava/lang/String;)V
    .registers 6

    .line 130
    const-string v0, "The items attribute is deprecated. Please use the includes attribute."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->log(Ljava/lang/String;I)V

    .line 132
    if-eqz p1, :cond_0

    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const-string v0, "."

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    const-string v1, "**"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 144
    :cond_1
    return-void

    .line 136
    :cond_2
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", "

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 140
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/**"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public add(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .registers 3

    .line 460
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->add(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 461
    return-void
.end method

.method public addAnd(Lorg/apache/tools/ant/types/selectors/AndSelector;)V
    .registers 3

    .line 303
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addAnd(Lorg/apache/tools/ant/types/selectors/AndSelector;)V

    .line 304
    return-void
.end method

.method public addContains(Lorg/apache/tools/ant/types/selectors/ContainsSelector;)V
    .registers 3

    .line 384
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addContains(Lorg/apache/tools/ant/types/selectors/ContainsSelector;)V

    .line 385
    return-void
.end method

.method public addContainsRegexp(Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;)V
    .registers 3

    .line 420
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addContainsRegexp(Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;)V

    .line 421
    return-void
.end method

.method public addCustom(Lorg/apache/tools/ant/types/selectors/ExtendSelector;)V
    .registers 3

    .line 375
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addCustom(Lorg/apache/tools/ant/types/selectors/ExtendSelector;)V

    .line 376
    return-void
.end method

.method public addDate(Lorg/apache/tools/ant/types/selectors/DateSelector;)V
    .registers 3

    .line 348
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addDate(Lorg/apache/tools/ant/types/selectors/DateSelector;)V

    .line 349
    return-void
.end method

.method public addDepend(Lorg/apache/tools/ant/types/selectors/DependSelector;)V
    .registers 3

    .line 411
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addDepend(Lorg/apache/tools/ant/types/selectors/DependSelector;)V

    .line 412
    return-void
.end method

.method public addDepth(Lorg/apache/tools/ant/types/selectors/DepthSelector;)V
    .registers 3

    .line 402
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addDepth(Lorg/apache/tools/ant/types/selectors/DepthSelector;)V

    .line 403
    return-void
.end method

.method public addDifferent(Lorg/apache/tools/ant/types/selectors/DifferentSelector;)V
    .registers 3

    .line 430
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addDifferent(Lorg/apache/tools/ant/types/selectors/DifferentSelector;)V

    .line 431
    return-void
.end method

.method public addFilename(Lorg/apache/tools/ant/types/selectors/FilenameSelector;)V
    .registers 3

    .line 366
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addFilename(Lorg/apache/tools/ant/types/selectors/FilenameSelector;)V

    .line 367
    return-void
.end method

.method public addMajority(Lorg/apache/tools/ant/types/selectors/MajoritySelector;)V
    .registers 3

    .line 339
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addMajority(Lorg/apache/tools/ant/types/selectors/MajoritySelector;)V

    .line 340
    return-void
.end method

.method public addModified(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;)V
    .registers 3

    .line 450
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addModified(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;)V

    .line 451
    return-void
.end method

.method public addNone(Lorg/apache/tools/ant/types/selectors/NoneSelector;)V
    .registers 3

    .line 330
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addNone(Lorg/apache/tools/ant/types/selectors/NoneSelector;)V

    .line 331
    return-void
.end method

.method public addNot(Lorg/apache/tools/ant/types/selectors/NotSelector;)V
    .registers 3

    .line 321
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addNot(Lorg/apache/tools/ant/types/selectors/NotSelector;)V

    .line 322
    return-void
.end method

.method public addOr(Lorg/apache/tools/ant/types/selectors/OrSelector;)V
    .registers 3

    .line 312
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addOr(Lorg/apache/tools/ant/types/selectors/OrSelector;)V

    .line 313
    return-void
.end method

.method public addPresent(Lorg/apache/tools/ant/types/selectors/PresentSelector;)V
    .registers 3

    .line 393
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addPresent(Lorg/apache/tools/ant/types/selectors/PresentSelector;)V

    .line 394
    return-void
.end method

.method public addSelector(Lorg/apache/tools/ant/types/selectors/SelectSelector;)V
    .registers 3

    .line 294
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addSelector(Lorg/apache/tools/ant/types/selectors/SelectSelector;)V

    .line 295
    return-void
.end method

.method public addSize(Lorg/apache/tools/ant/types/selectors/SizeSelector;)V
    .registers 3

    .line 357
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addSize(Lorg/apache/tools/ant/types/selectors/SizeSelector;)V

    .line 358
    return-void
.end method

.method public addType(Lorg/apache/tools/ant/types/selectors/TypeSelector;)V
    .registers 3

    .line 440
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addType(Lorg/apache/tools/ant/types/selectors/TypeSelector;)V

    .line 441
    return-void
.end method

.method public appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .registers 3

    .line 283
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 284
    return-void
.end method

.method public createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    .line 92
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    .line 76
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createPatternSet()Lorg/apache/tools/ant/types/PatternSet;
    .registers 2

    .line 108
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createPatternSet()Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    return-object v0
.end method

.method protected getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;
    .registers 4

    .line 193
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 194
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    return-object v0
.end method

.method protected final getImplicitFileSet()Lorg/apache/tools/ant/types/FileSet;
    .registers 2

    .line 469
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    return-object v0
.end method

.method public getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;
    .registers 3

    .line 263
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object v0

    return-object v0
.end method

.method public hasSelectors()Z
    .registers 2

    .line 243
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->hasSelectors()Z

    move-result v0

    return v0
.end method

.method public selectorCount()I
    .registers 2

    .line 253
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->selectorCount()I

    move-result v0

    return v0
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

    .line 273
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->selectorElements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public setCaseSensitive(Z)V
    .registers 3

    .line 224
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setCaseSensitive(Z)V

    .line 225
    return-void
.end method

.method public setDefaultexcludes(Z)V
    .registers 3

    .line 184
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setDefaultexcludes(Z)V

    .line 185
    return-void
.end method

.method public setExcludes(Ljava/lang/String;)V
    .registers 3

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setExcludes(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public setExcludesfile(Ljava/io/File;)V
    .registers 3

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setExcludesfile(Ljava/io/File;)V

    .line 215
    return-void
.end method

.method public setFollowSymlinks(Z)V
    .registers 3

    .line 233
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setFollowSymlinks(Z)V

    .line 234
    return-void
.end method

.method public setIncludes(Ljava/lang/String;)V
    .registers 3

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setIncludes(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public setIncludesfile(Ljava/io/File;)V
    .registers 3

    .line 204
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setIncludesfile(Ljava/io/File;)V

    .line 205
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 67
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 69
    return-void
.end method
