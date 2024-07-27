.class public Lorg/apache/tools/ant/types/FilterChain;
.super Lorg/apache/tools/ant/types/DataType;
.source "FilterChain.java"


# instance fields
.field private filterReaders:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/FilterChain;
    .registers 2

    .line 417
    const-class v0, Lorg/apache/tools/ant/types/FilterChain;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FilterChain;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/filters/ChainableReader;)V
    .registers 3

    .line 391
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 395
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 396
    return-void

    .line 392
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addClassConstants(Lorg/apache/tools/ant/filters/ClassConstants;)V
    .registers 3

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 87
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addContainsRegex(Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;)V
    .registers 3

    .line 300
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 304
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 305
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addDeleteCharacters(Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;)V
    .registers 3

    .line 286
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 290
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 291
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addEscapeUnicode(Lorg/apache/tools/ant/filters/EscapeUnicode;)V
    .registers 3

    .line 258
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 262
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 263
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addExpandProperties(Lorg/apache/tools/ant/filters/ExpandProperties;)V
    .registers 3

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 101
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addFilterReader(Lorg/apache/tools/ant/types/AntFilterReader;)V
    .registers 3

    .line 57
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 62
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addHeadFilter(Lorg/apache/tools/ant/filters/HeadFilter;)V
    .registers 3

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 114
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addIgnoreBlank(Lorg/apache/tools/ant/filters/TokenFilter$IgnoreBlank;)V
    .registers 3

    .line 357
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 361
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 362
    return-void

    .line 358
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addLineContains(Lorg/apache/tools/ant/filters/LineContains;)V
    .registers 3

    .line 122
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 127
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addLineContainsRegExp(Lorg/apache/tools/ant/filters/LineContainsRegExp;)V
    .registers 3

    .line 136
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 141
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addPrefixLines(Lorg/apache/tools/ant/filters/PrefixLines;)V
    .registers 3

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 154
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addReplaceRegex(Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;)V
    .registers 3

    .line 313
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 317
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 318
    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addReplaceString(Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;)V
    .registers 3

    .line 342
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 346
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 347
    return-void

    .line 343
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addReplaceTokens(Lorg/apache/tools/ant/filters/ReplaceTokens;)V
    .registers 3

    .line 176
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 180
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 181
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addStripJavaComments(Lorg/apache/tools/ant/filters/StripJavaComments;)V
    .registers 3

    .line 190
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 194
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 195
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addStripLineBreaks(Lorg/apache/tools/ant/filters/StripLineBreaks;)V
    .registers 3

    .line 204
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 208
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 209
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addStripLineComments(Lorg/apache/tools/ant/filters/StripLineComments;)V
    .registers 3

    .line 218
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 223
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addSuffixLines(Lorg/apache/tools/ant/filters/SuffixLines;)V
    .registers 3

    .line 163
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 167
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 168
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addTabsToSpaces(Lorg/apache/tools/ant/filters/TabsToSpaces;)V
    .registers 3

    .line 231
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 236
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addTailFilter(Lorg/apache/tools/ant/filters/TailFilter;)V
    .registers 3

    .line 244
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 248
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 249
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addTokenFilter(Lorg/apache/tools/ant/filters/TokenFilter;)V
    .registers 3

    .line 272
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 276
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 277
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public addTrim(Lorg/apache/tools/ant/filters/TokenFilter$Trim;)V
    .registers 3

    .line 327
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 331
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 332
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

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

    .line 401
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isChecked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    monitor-exit p0

    .line 414
    :goto_0
    return-void

    .line 404
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 407
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 408
    instance-of v2, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v2, :cond_2

    .line 409
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/FilterChain;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 412
    :cond_3
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getFilterReaders()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FilterChain;->getRef()Lorg/apache/tools/ant/types/FilterChain;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FilterChain;->getFilterReaders()Ljava/util/Vector;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->dieOnCircularReference()V

    .line 74
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    goto :goto_0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 381
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method
