.class public abstract Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;
.super Lorg/apache/tools/ant/types/selectors/BaseSelector;
.source "BaseSelectorContainer.java"

# interfaces
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

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->selectorsList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .registers 2

    .line 345
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 346
    return-void
.end method

.method public addAnd(Lorg/apache/tools/ant/types/selectors/AndSelector;)V
    .registers 2

    .line 159
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 160
    return-void
.end method

.method public addContains(Lorg/apache/tools/ant/types/selectors/ContainsSelector;)V
    .registers 2

    .line 231
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 232
    return-void
.end method

.method public addContainsRegexp(Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;)V
    .registers 2

    .line 279
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 280
    return-void
.end method

.method public addCustom(Lorg/apache/tools/ant/types/selectors/ExtendSelector;)V
    .registers 2

    .line 223
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 224
    return-void
.end method

.method public addDate(Lorg/apache/tools/ant/types/selectors/DateSelector;)V
    .registers 2

    .line 199
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 200
    return-void
.end method

.method public addDepend(Lorg/apache/tools/ant/types/selectors/DependSelector;)V
    .registers 2

    .line 255
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 256
    return-void
.end method

.method public addDepth(Lorg/apache/tools/ant/types/selectors/DepthSelector;)V
    .registers 2

    .line 247
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 248
    return-void
.end method

.method public addDifferent(Lorg/apache/tools/ant/types/selectors/DifferentSelector;)V
    .registers 2

    .line 263
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 264
    return-void
.end method

.method public addExecutable(Lorg/apache/tools/ant/types/selectors/ExecutableSelector;)V
    .registers 2

    .line 304
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 305
    return-void
.end method

.method public addFilename(Lorg/apache/tools/ant/types/selectors/FilenameSelector;)V
    .registers 2

    .line 215
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 216
    return-void
.end method

.method public addMajority(Lorg/apache/tools/ant/types/selectors/MajoritySelector;)V
    .registers 2

    .line 191
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 192
    return-void
.end method

.method public addModified(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;)V
    .registers 2

    .line 288
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 289
    return-void
.end method

.method public addNone(Lorg/apache/tools/ant/types/selectors/NoneSelector;)V
    .registers 2

    .line 183
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 184
    return-void
.end method

.method public addNot(Lorg/apache/tools/ant/types/selectors/NotSelector;)V
    .registers 2

    .line 175
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 176
    return-void
.end method

.method public addOr(Lorg/apache/tools/ant/types/selectors/OrSelector;)V
    .registers 2

    .line 167
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 168
    return-void
.end method

.method public addOwnedBy(Lorg/apache/tools/ant/types/selectors/OwnedBySelector;)V
    .registers 2

    .line 320
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 321
    return-void
.end method

.method public addPosixGroup(Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;)V
    .registers 2

    .line 328
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 329
    return-void
.end method

.method public addPosixPermissions(Lorg/apache/tools/ant/types/selectors/PosixPermissionsSelector;)V
    .registers 2

    .line 336
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 337
    return-void
.end method

.method public addPresent(Lorg/apache/tools/ant/types/selectors/PresentSelector;)V
    .registers 2

    .line 239
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 240
    return-void
.end method

.method public addReadable(Lorg/apache/tools/ant/types/selectors/ReadableSelector;)V
    .registers 2

    .line 292
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 293
    return-void
.end method

.method public addSelector(Lorg/apache/tools/ant/types/selectors/SelectSelector;)V
    .registers 2

    .line 151
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 152
    return-void
.end method

.method public addSize(Lorg/apache/tools/ant/types/selectors/SizeSelector;)V
    .registers 2

    .line 207
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 208
    return-void
.end method

.method public addSymlink(Lorg/apache/tools/ant/types/selectors/SymlinkSelector;)V
    .registers 2

    .line 312
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 313
    return-void
.end method

.method public addType(Lorg/apache/tools/ant/types/selectors/TypeSelector;)V
    .registers 2

    .line 271
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 272
    return-void
.end method

.method public addWritable(Lorg/apache/tools/ant/types/selectors/WritableSelector;)V
    .registers 2

    .line 296
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 297
    return-void
.end method

.method public appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .registers 3

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->selectorsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->setChecked(Z)V

    .line 102
    return-void
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

    .line 350
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->isChecked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    monitor-exit p0

    .line 363
    :goto_0
    return-void

    .line 353
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/selectors/BaseSelector;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 356
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->selectorsList:Ljava/util/List;

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

    .line 357
    instance-of v2, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v2, :cond_2

    .line 358
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 361
    :cond_3
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->setChecked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;
    .registers 4

    .line 68
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->dieOnCircularReference()V

    .line 69
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->selectorsList:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/tools/ant/types/selectors/FileSelector;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/selectors/FileSelector;

    return-object v0
.end method

.method public hasSelectors()Z
    .registers 2

    .line 49
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->dieOnCircularReference()V

    .line 50
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->selectorsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
.end method

.method public selectorCount()I
    .registers 2

    .line 58
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->dieOnCircularReference()V

    .line 59
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->selectorsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    .line 77
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->dieOnCircularReference()V

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->selectorsList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 89
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->dieOnCircularReference()V

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->selectorsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 91
    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    return-object v0
.end method

.method public validate()V
    .registers 4

    .line 121
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->verifySettings()V

    .line 122
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->dieOnCircularReference()V

    .line 123
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->getError()Ljava/lang/String;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->selectorsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/types/selectors/BaseSelector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda6;

    const-class v2, Lorg/apache/tools/ant/types/selectors/BaseSelector;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/AbstractFileSet$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 128
    const-class v1, Lorg/apache/tools/ant/types/selectors/BaseSelector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer$$ExternalSyntheticLambda1;

    const-class v2, Lorg/apache/tools/ant/types/selectors/BaseSelector;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 129
    return-void

    .line 125
    :cond_0
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
