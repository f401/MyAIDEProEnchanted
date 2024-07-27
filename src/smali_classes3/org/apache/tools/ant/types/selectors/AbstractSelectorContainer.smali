.class public abstract Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;
.super Lorg/apache/tools/ant/types/DataType;
.source "AbstractSelectorContainer.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/tools/ant/types/selectors/SelectorContainer;


# instance fields
.field private selectorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/selectors/FileSelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ECuoYv1NE-tzOy6ScPBA8lSZdTw(Lorg/apache/tools/ant/types/selectors/FileSelector;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->selectorsList:Ljava/util/List;

    .line 43
    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;
    .registers 2

    .line 391
    const-class v0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;

    return-object v0
.end method

.method private getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;
    .registers 4

    .line 387
    const-class v0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .registers 2

    .line 348
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 349
    return-void
.end method

.method public addAnd(Lorg/apache/tools/ant/types/selectors/AndSelector;)V
    .registers 2

    .line 162
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 163
    return-void
.end method

.method public addContains(Lorg/apache/tools/ant/types/selectors/ContainsSelector;)V
    .registers 2

    .line 234
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 235
    return-void
.end method

.method public addContainsRegexp(Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;)V
    .registers 2

    .line 282
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 283
    return-void
.end method

.method public addCustom(Lorg/apache/tools/ant/types/selectors/ExtendSelector;)V
    .registers 2

    .line 226
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 227
    return-void
.end method

.method public addDate(Lorg/apache/tools/ant/types/selectors/DateSelector;)V
    .registers 2

    .line 202
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 203
    return-void
.end method

.method public addDepend(Lorg/apache/tools/ant/types/selectors/DependSelector;)V
    .registers 2

    .line 258
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 259
    return-void
.end method

.method public addDepth(Lorg/apache/tools/ant/types/selectors/DepthSelector;)V
    .registers 2

    .line 250
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 251
    return-void
.end method

.method public addDifferent(Lorg/apache/tools/ant/types/selectors/DifferentSelector;)V
    .registers 2

    .line 266
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 267
    return-void
.end method

.method public addExecutable(Lorg/apache/tools/ant/types/selectors/ExecutableSelector;)V
    .registers 2

    .line 307
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 308
    return-void
.end method

.method public addFilename(Lorg/apache/tools/ant/types/selectors/FilenameSelector;)V
    .registers 2

    .line 218
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 219
    return-void
.end method

.method public addMajority(Lorg/apache/tools/ant/types/selectors/MajoritySelector;)V
    .registers 2

    .line 194
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 195
    return-void
.end method

.method public addModified(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;)V
    .registers 2

    .line 291
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 292
    return-void
.end method

.method public addNone(Lorg/apache/tools/ant/types/selectors/NoneSelector;)V
    .registers 2

    .line 186
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 187
    return-void
.end method

.method public addNot(Lorg/apache/tools/ant/types/selectors/NotSelector;)V
    .registers 2

    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 179
    return-void
.end method

.method public addOr(Lorg/apache/tools/ant/types/selectors/OrSelector;)V
    .registers 2

    .line 170
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 171
    return-void
.end method

.method public addOwnedBy(Lorg/apache/tools/ant/types/selectors/OwnedBySelector;)V
    .registers 2

    .line 323
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 324
    return-void
.end method

.method public addPosixGroup(Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;)V
    .registers 2

    .line 331
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 332
    return-void
.end method

.method public addPosixPermissions(Lorg/apache/tools/ant/types/selectors/PosixPermissionsSelector;)V
    .registers 2

    .line 339
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 340
    return-void
.end method

.method public addPresent(Lorg/apache/tools/ant/types/selectors/PresentSelector;)V
    .registers 2

    .line 242
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 243
    return-void
.end method

.method public addReadable(Lorg/apache/tools/ant/types/selectors/ReadableSelector;)V
    .registers 2

    .line 295
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 296
    return-void
.end method

.method public addSelector(Lorg/apache/tools/ant/types/selectors/SelectSelector;)V
    .registers 2

    .line 154
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 155
    return-void
.end method

.method public addSize(Lorg/apache/tools/ant/types/selectors/SizeSelector;)V
    .registers 2

    .line 210
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 211
    return-void
.end method

.method public addSymlink(Lorg/apache/tools/ant/types/selectors/SymlinkSelector;)V
    .registers 2

    .line 315
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 316
    return-void
.end method

.method public addType(Lorg/apache/tools/ant/types/selectors/TypeSelector;)V
    .registers 2

    .line 274
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 275
    return-void
.end method

.method public addWritable(Lorg/apache/tools/ant/types/selectors/WritableSelector;)V
    .registers 2

    .line 299
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 300
    return-void
.end method

.method public appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .registers 3

    .line 114
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->selectorsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->setChecked(Z)V

    .line 119
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->getRef()Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->clone()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 379
    :goto_0
    return-object v0

    .line 376
    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;

    .line 378
    new-instance v1, Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->selectorsList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->selectorsList:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    monitor-exit p0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    :try_start_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    :catchall_0
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

    monitor-enter p0

    .line 352
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->isChecked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    monitor-exit p0

    .line 365
    :goto_0
    return-void

    .line 355
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 358
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->selectorsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/selectors/FileSelector;

    .line 359
    instance-of v2, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v2, :cond_2

    .line 360
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 363
    :cond_3
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->setChecked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;
    .registers 4

    .line 77
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 81
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->selectorsList:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/tools/ant/types/selectors/FileSelector;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/selectors/FileSelector;

    goto :goto_0
.end method

.method public hasSelectors()Z
    .registers 2

    .line 52
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->getRef()Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->hasSelectors()Z

    move-result v0

    .line 56
    :goto_0
    return v0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->dieOnCircularReference()V

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->selectorsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public selectorCount()I
    .registers 2

    .line 64
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->getRef()Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->selectorCount()I

    move-result v0

    .line 68
    :goto_0
    return v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->dieOnCircularReference()V

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->selectorsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
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

    .line 89
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->getRef()Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->selectorElements()Ljava/util/Enumeration;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->dieOnCircularReference()V

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->selectorsList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->selectorsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 105
    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    return-object v0
.end method

.method public validate()V
    .registers 4

    .line 138
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->getRef()Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->validate()V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->dieOnCircularReference()V

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->selectorsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/types/selectors/BaseSelector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda6;

    const-class v2, Lorg/apache/tools/ant/types/selectors/BaseSelector;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 143
    const-class v1, Lorg/apache/tools/ant/types/selectors/BaseSelector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer$$ExternalSyntheticLambda1;

    const-class v2, Lorg/apache/tools/ant/types/selectors/BaseSelector;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 144
    return-void
.end method
