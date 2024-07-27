.class public Lorg/apache/tools/ant/taskdefs/PathConvert;
.super Lorg/apache/tools/ant/Task;
.source "PathConvert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;,
        Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;
    }
.end annotation


# static fields
.field private static onWindows:Z


# instance fields
.field private dirSep:Ljava/lang/String;

.field private mapper:Lorg/apache/tools/ant/types/Mapper;

.field private path:Lorg/apache/tools/ant/types/resources/Resources;

.field private pathSep:Ljava/lang/String;

.field private prefixMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;",
            ">;"
        }
    .end annotation
.end field

.field private preserveDuplicates:Z

.field private property:Ljava/lang/String;

.field private refid:Lorg/apache/tools/ant/types/Reference;

.field private setonempty:Z

.field private targetOS:Ljava/lang/String;

.field private targetWindows:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-string v0, "dos"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/taskdefs/PathConvert;->onWindows:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 59
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    .line 63
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->refid:Lorg/apache/tools/ant/types/Reference;

    .line 67
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->targetOS:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->targetWindows:Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->setonempty:Z

    .line 79
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->property:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->prefixMap:Ljava/util/List;

    .line 87
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->mapper:Lorg/apache/tools/ant/types/Mapper;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 48
    sget-boolean v0, Lorg/apache/tools/ant/taskdefs/PathConvert;->onWindows:Z

    return v0
.end method

.method private getPath()Lorg/apache/tools/ant/types/resources/Resources;
    .registers 3

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/Resources;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    .line 198
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Resources;->setCache(Z)V

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private mapElement(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 417
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->prefixMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;

    .line 418
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    if-eq v0, p1, :cond_0

    move-object p1, v0

    .line 427
    :cond_1
    return-object p1
.end method

.method private noChildrenAllowed()Lorg/apache/tools/ant/BuildException;
    .registers 3

    .line 491
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must not specify nested elements when using the refid attribute."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private validateSetup()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    if-eqz v0, :cond_5

    .line 466
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 467
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 469
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->targetOS:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 470
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->targetWindows:Z

    if-eqz v1, :cond_3

    const-string v0, ";"

    .line 471
    :goto_0
    if-eqz v1, :cond_4

    const-string v1, "\\"

    .line 473
    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 475
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    .line 477
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 479
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    .line 481
    :cond_2
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    .line 482
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    .line 483
    return-void

    .line 470
    :cond_3
    const-string v0, ":"

    goto :goto_0

    .line 471
    :cond_4
    const-string v1, "/"

    goto :goto_1

    .line 462
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must specify a path to convert"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 189
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getPath()Lorg/apache/tools/ant/types/resources/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 193
    return-void

    .line 190
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 4

    .line 449
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 450
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 451
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->addMapper(Lorg/apache/tools/ant/types/Mapper;)V

    .line 452
    return-void
.end method

.method public addMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .registers 4

    .line 436
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 440
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->mapper:Lorg/apache/tools/ant/types/Mapper;

    .line 441
    return-void

    .line 437
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createMap()Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;
    .registers 3

    .line 208
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;-><init>(Lorg/apache/tools/ant/taskdefs/PathConvert;)V

    .line 209
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->prefixMap:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-object v0
.end method

.method public createPath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 175
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 179
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 180
    return-object v0

    .line 176
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public execute()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 330
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    .line 331
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    .line 332
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    .line 336
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->refid:Lorg/apache/tools/ant/types/Reference;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    instance-of v3, v0, Lorg/apache/tools/ant/types/ResourceCollection;

    if-eqz v3, :cond_2

    .line 343
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getPath()Lorg/apache/tools/ant/types/resources/Resources;

    move-result-object v3

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 345
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->validateSetup()V

    .line 355
    sget-boolean v0, Lorg/apache/tools/ant/taskdefs/PathConvert;->onWindows:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    const-string v0, "\\"

    move-object v5, v0

    .line 357
    :goto_0
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->isPreserveDuplicates()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    move-object v4, v0

    .line 360
    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 361
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_5

    new-instance v0, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    move-object v3, v0

    .line 362
    :goto_2
    invoke-interface {v4}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 363
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move v0, v2

    .line 364
    :goto_3
    if-eqz v11, :cond_1

    array-length v12, v11

    if-ge v0, v12, :cond_1

    .line 365
    aget-object v12, v11, v0

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 339
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->refid:Lorg/apache/tools/ant/types/Reference;

    .line 341
    const-string v2, "refid \'%s\' does not refer to a resource collection."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :catchall_0
    move-exception v0

    iput-object v6, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    .line 400
    iput-object v8, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    .line 401
    iput-object v7, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    .line 402
    throw v0

    .line 355
    :cond_3
    const-string v0, "/"

    move-object v5, v0

    goto :goto_0

    .line 359
    :cond_4
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v0, v3}, Lorg/apache/tools/ant/types/resources/Union;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;)V

    move-object v4, v0

    goto :goto_1

    .line 361
    :cond_5
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    .line 369
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->mapElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    if-nez v1, :cond_7

    .line 376
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_7
    new-instance v1, Ljava/util/StringTokenizer;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 382
    :goto_5
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 383
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    :cond_8
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    move v1, v2

    .line 386
    goto :goto_4

    .line 389
    :cond_a
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->setonempty:Z

    if-nez v0, :cond_b

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 390
    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->property:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 392
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    :cond_c
    :goto_6
    iput-object v6, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    .line 400
    iput-object v8, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    .line 401
    iput-object v7, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    .line 402
    return-void

    .line 394
    :cond_d
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->property:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/PathConvert;->log(Ljava/lang/String;I)V

    .line 395
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->property:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6
.end method

.method public isPreserveDuplicates()Z
    .registers 2

    .line 313
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->preserveDuplicates:Z

    return v0
.end method

.method public isReference()Z
    .registers 2

    .line 321
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->refid:Lorg/apache/tools/ant/types/Reference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDirSep(Ljava/lang/String;)V
    .registers 2

    .line 295
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setPathSep(Ljava/lang/String;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setPreserveDuplicates(Z)V
    .registers 2

    .line 304
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->preserveDuplicates:Z

    .line 305
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->property:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 274
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_0

    .line 277
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->refid:Lorg/apache/tools/ant/types/Reference;

    .line 278
    return-void

    .line 275
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setSetonempty(Z)V
    .registers 2

    .line 258
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->setonempty:Z

    .line 259
    return-void
.end method

.method public setTargetos(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;-><init>()V

    .line 225
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;->setValue(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->setTargetos(Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;)V

    .line 227
    return-void
.end method

.method public setTargetos(Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;)V
    .registers 4

    .line 238
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->targetOS:Ljava/lang/String;

    .line 247
    const-string v1, "unix"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tandem"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->targetOS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->targetWindows:Z

    .line 248
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
