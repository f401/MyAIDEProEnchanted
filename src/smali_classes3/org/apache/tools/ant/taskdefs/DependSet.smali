.class public Lorg/apache/tools/ant/taskdefs/DependSet;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "DependSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;,
        Lorg/apache/tools/ant/taskdefs/DependSet$NonExistent;
    }
.end annotation


# static fields
.field private static final DATE:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

.field private static final NOT_EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

.field private static final REVERSE_DATE:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;


# instance fields
.field private sources:Lorg/apache/tools/ant/types/resources/Union;

.field private targets:Lorg/apache/tools/ant/types/Path;

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 87
    new-instance v0, Lorg/apache/tools/ant/types/resources/selectors/Not;

    new-instance v1, Lorg/apache/tools/ant/types/resources/selectors/Exists;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/selectors/Exists;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/selectors/Not;-><init>(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/DependSet;->NOT_EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    .line 88
    new-instance v0, Lorg/apache/tools/ant/types/resources/comparators/Date;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/comparators/Date;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/DependSet;->DATE:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    .line 90
    new-instance v1, Lorg/apache/tools/ant/types/resources/comparators/Reverse;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/types/resources/comparators/Reverse;-><init>(Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/DependSet;->REVERSE_DATE:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 125
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->sources:Lorg/apache/tools/ant/types/resources/Union;

    .line 126
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->targets:Lorg/apache/tools/ant/types/Path;

    return-void
.end method

.method static synthetic access$000()Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;
    .registers 1

    .line 85
    sget-object v0, Lorg/apache/tools/ant/taskdefs/DependSet;->NOT_EXISTS:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    return-object v0
.end method

.method private getNewest(Lorg/apache/tools/ant/types/ResourceCollection;)Lorg/apache/tools/ant/types/Resource;
    .registers 3

    .line 275
    sget-object v0, Lorg/apache/tools/ant/taskdefs/DependSet;->DATE:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/DependSet;->getXest(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method private getOldest(Lorg/apache/tools/ant/types/ResourceCollection;)Lorg/apache/tools/ant/types/Resource;
    .registers 3

    .line 271
    sget-object v0, Lorg/apache/tools/ant/taskdefs/DependSet;->REVERSE_DATE:Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/DependSet;->getXest(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method private getXest(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;)Lorg/apache/tools/ant/types/Resource;
    .registers 5

    .line 267
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->iteratorAsStream(Ljava/util/Iterator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    return-object v0
.end method

.method private logFuture(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V
    .registers 7

    .line 258
    new-instance v0, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Restrict;-><init>()V

    .line 259
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 260
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 261
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " modified in the future."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/DependSet;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method

.method private logMissing(Lorg/apache/tools/ant/types/ResourceCollection;Ljava/lang/String;)V
    .registers 7

    .line 285
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->verbose:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is missing."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/DependSet;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method private logWithModificationTime(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;)V
    .registers 7

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modified at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->verbose:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 279
    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/DependSet;->log(Ljava/lang/String;I)V

    .line 282
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private uptodate(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/types/ResourceCollection;)Z
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 224
    new-instance v1, Lorg/apache/tools/ant/types/resources/selectors/Date;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/selectors/Date;-><init>()V

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/types/resources/selectors/Date;->setMillis(J)V

    .line 227
    sget-object v2, Lorg/apache/tools/ant/types/TimeComparison;->AFTER:Lorg/apache/tools/ant/types/TimeComparison;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/resources/selectors/Date;->setWhen(Lorg/apache/tools/ant/types/TimeComparison;)V

    .line 230
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/types/resources/selectors/Date;->setGranularity(J)V

    .line 231
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->targets:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/DependSet;->logFuture(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 233
    new-instance v2, Lorg/apache/tools/ant/taskdefs/DependSet$NonExistent;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->targets:Lorg/apache/tools/ant/types/Path;

    invoke-direct {v2, v3, v5}, Lorg/apache/tools/ant/taskdefs/DependSet$NonExistent;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/taskdefs/DependSet$1;)V

    .line 234
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/DependSet$NonExistent;->size()I

    move-result v3

    .line 235
    if-lez v3, :cond_1

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " nonexistent targets"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/DependSet;->log(Ljava/lang/String;I)V

    .line 237
    const-string v1, "target"

    invoke-direct {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/DependSet;->logMissing(Lorg/apache/tools/ant/types/ResourceCollection;Ljava/lang/String;)V

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->targets:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/DependSet;->getOldest(Lorg/apache/tools/ant/types/ResourceCollection;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v2

    .line 241
    const-string v3, "oldest target file"

    invoke-direct {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/DependSet;->logWithModificationTime(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;)V

    .line 243
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->sources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {p0, v3, v1}, Lorg/apache/tools/ant/taskdefs/DependSet;->logFuture(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 245
    new-instance v1, Lorg/apache/tools/ant/taskdefs/DependSet$NonExistent;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->sources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v1, v3, v5}, Lorg/apache/tools/ant/taskdefs/DependSet$NonExistent;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/taskdefs/DependSet$1;)V

    .line 246
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/DependSet$NonExistent;->size()I

    move-result v3

    .line 247
    if-lez v3, :cond_2

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " nonexistent sources"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/DependSet;->log(Ljava/lang/String;I)V

    .line 249
    const-string v2, "source"

    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/DependSet;->logMissing(Lorg/apache/tools/ant/types/ResourceCollection;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->sources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/DependSet;->getNewest(Lorg/apache/tools/ant/types/ResourceCollection;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v1

    .line 253
    const-string v3, "newest source"

    invoke-direct {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/DependSet;->logWithModificationTime(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addSrcfilelist(Lorg/apache/tools/ant/types/FileList;)V
    .registers 3

    .line 152
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/DependSet;->createSources()Lorg/apache/tools/ant/types/resources/Union;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 153
    return-void
.end method

.method public addSrcfileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/DependSet;->createSources()Lorg/apache/tools/ant/types/resources/Union;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 145
    return-void
.end method

.method public addTargetfilelist(Lorg/apache/tools/ant/types/FileList;)V
    .registers 3

    .line 177
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/DependSet;->createTargets()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 178
    return-void
.end method

.method public addTargetfileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 5

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/DependSet;->createTargets()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;-><init>(Lorg/apache/tools/ant/types/FileSet;Lorg/apache/tools/ant/taskdefs/DependSet$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 170
    return-void
.end method

.method public createSources()Lorg/apache/tools/ant/types/resources/Union;
    .registers 2

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->sources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    :cond_0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->sources:Lorg/apache/tools/ant/types/resources/Union;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createTargets()Lorg/apache/tools/ant/types/Path;
    .registers 3

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->targets:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/DependSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    :cond_0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->targets:Lorg/apache/tools/ant/types/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->sources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_3

    .line 204
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->targets:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_2

    .line 209
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->targets:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->sources:Lorg/apache/tools/ant/types/resources/Union;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->targets:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/DependSet;->uptodate(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    const-string v0, "Deleting all target files."

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/DependSet;->log(Ljava/lang/String;I)V

    .line 211
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->verbose:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->targets:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/DependSet;->log(Ljava/lang/String;)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Delete;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Delete;-><init>()V

    .line 217
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/taskdefs/Delete;->bindToOwner(Lorg/apache/tools/ant/Task;)V

    .line 218
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->targets:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Delete;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 219
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Delete;->perform()V

    .line 221
    :cond_1
    return-void

    .line 205
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "At least one set of target files must be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "At least one set of source resources must be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVerbose(Z)V
    .registers 2

    .line 191
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/DependSet;->verbose:Z

    .line 192
    return-void
.end method
