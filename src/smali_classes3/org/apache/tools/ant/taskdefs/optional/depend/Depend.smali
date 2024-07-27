.class public Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Depend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_NAME:Ljava/lang/String; = "dependencies.txt"

.field private static final CLASSNAME_PREPEND:Ljava/lang/String; = "||:"

.field private static final ONE_SECOND:I = 0x3e8


# instance fields
.field private affectedClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private cache:Ljava/io/File;

.field private classFileInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private classpathDependencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private closure:Z

.field private dependClasspath:Lorg/apache/tools/ant/types/Path;

.field private destPath:Lorg/apache/tools/ant/types/Path;

.field private dump:Z

.field private outOfDateClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private srcPath:Lorg/apache/tools/ant/types/Path;

.field private warnOnRmiStubs:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 111
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->closure:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->warnOnRmiStubs:Z

    .line 122
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dump:Z

    return-void
.end method

.method private addClassFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 751
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 753
    if-nez v3, :cond_1

    .line 776
    :cond_0
    return-void

    .line 757
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 759
    array-length v5, v3

    const/4 v1, 0x0

    move-object v0, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v3, v1

    .line 760
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".class"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 761
    new-instance v7, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    invoke-direct {v7, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$1;)V

    .line 762
    invoke-static {v7, v6}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$102(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/io/File;)Ljava/io/File;

    .line 764
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 765
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v9, ".class"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 764
    add-int/lit8 v10, v4, 0x1

    sub-int/2addr v6, v9

    invoke-virtual {v8, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 767
    invoke-static {v6}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileUtils;->convertSlashName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$002(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 769
    invoke-direct {p0, v6, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->findSourceFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v7, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$202(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/io/File;)Ljava/io/File;

    .line 771
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    :cond_2
    invoke-direct {p0, p1, v6, p3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->addClassFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    goto :goto_1
.end method

.method private deleteAffectedFiles(Ljava/lang/String;)I
    .registers 10

    const/4 v7, 0x3

    const/4 v3, 0x0

    .line 451
    .line 453
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->affectedClassMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 454
    if-nez v0, :cond_0

    .line 504
    :goto_0
    return v3

    .line 457
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 458
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 459
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    .line 461
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$200(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_2

    .line 466
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->warnOutOfDateButNotDeleted(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 470
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " since "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " out of date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v7}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 473
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 474
    add-int/lit8 v2, v2, 0x1

    .line 475
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->closure:Z

    if-eqz v0, :cond_3

    .line 476
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->deleteAffectedFiles(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    move v0, v2

    :goto_2
    move v2, v0

    .line 503
    goto :goto_1

    .line 481
    :cond_3
    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Top level class = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 488
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classFileInfoMap:Ljava/util/Map;

    .line 489
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    .line 490
    if-eqz v0, :cond_5

    .line 491
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " since one of its inner classes was removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 492
    invoke-virtual {p0, v5, v7}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 496
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 497
    add-int/lit8 v2, v2, 0x1

    .line 498
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->closure:Z

    if-eqz v0, :cond_5

    .line 499
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->deleteAffectedFiles(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    move v0, v2

    goto :goto_2

    :cond_4
    move v3, v2

    .line 504
    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private deleteAllAffectedFiles()I
    .registers 6

    .line 427
    const/4 v0, 0x0

    .line 428
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->outOfDateClasses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 429
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->deleteAffectedFiles(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    .line 430
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classFileInfoMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    .line 431
    if-eqz v1, :cond_2

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 432
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$200(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_0

    .line 433
    invoke-direct {p0, v1, v0, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->warnOutOfDateButNotDeleted(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_1
    move v1, v0

    .line 439
    goto :goto_0

    .line 435
    :cond_0
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 436
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 440
    :cond_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private determineDependencies()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/16 v16, 0x4

    .line 284
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->affectedClassMap:Ljava/util/Map;

    .line 285
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classFileInfoMap:Ljava/util/Map;

    .line 286
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 291
    const-wide v6, 0x7fffffffffffffffL

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    if-eqz v3, :cond_12

    .line 295
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    const-string v5, "dependencies.txt"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    .line 297
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 298
    if-eqz v3, :cond_11

    .line 299
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->readCachedDependencies(Ljava/io/File;)Ljava/util/Map;

    move-result-object v2

    move-object v5, v2

    move v8, v3

    .line 302
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getClassFiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v10, v11

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding class info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classFileInfoMap:Ljava/util/Map;

    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    if-eqz v2, :cond_10

    .line 311
    if-eqz v8, :cond_10

    .line 312
    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-lez v2, :cond_10

    .line 315
    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 319
    :goto_1
    if-nez v2, :cond_1

    .line 321
    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/AntAnalyzer;-><init>()V

    .line 322
    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->addRootClass(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->destPath:Lorg/apache/tools/ant/types/Path;

    invoke-interface {v2, v3}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->addClassPath(Lorg/apache/tools/ant/types/Path;)V

    .line 324
    invoke-interface {v2, v11}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->setClosure(Z)V

    .line 325
    invoke-interface {v2}, Lorg/apache/tools/ant/util/depend/DependencyAnalyzer;->getClassDependencies()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 326
    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda8;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 329
    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v9

    .line 334
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->affectedClassMap:Ljava/util/Map;

    sget-object v15, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda11;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda11;

    .line 336
    invoke-interface {v3, v2, v15}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 337
    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " affects "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    goto :goto_2

    .line 343
    :cond_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classpathDependencies:Ljava/util/Map;

    .line 344
    invoke-direct/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getCheckClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    .line 345
    if-eqz v2, :cond_e

    .line 347
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classpathDependencies:Ljava/util/Map;

    .line 348
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v7

    .line 350
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 351
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 353
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Determining classpath dependencies for "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 356
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 357
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 358
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classpathDependencies:Ljava/util/Map;

    invoke-interface {v4, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    const-string v13, "Looking for "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v4

    const/4 v13, 0x4

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 361
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 363
    if-nez v4, :cond_f

    .line 364
    const-string v4, "java."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 367
    const-string v4, "javax."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    const/16 v13, 0x2e

    const/16 v14, 0x2f

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".class"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/apache/tools/ant/AntClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 370
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "URL is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 371
    if-eqz v4, :cond_9

    .line 372
    const-string v13, "jar"

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 373
    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    .line 374
    const/16 v13, 0x21

    invoke-virtual {v4, v13}, Ljava/lang/String;->indexOf(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-result v13

    .line 375
    const/4 v14, 0x0

    :try_start_4
    invoke-virtual {v4, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 376
    const-string v4, "file:"

    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 377
    new-instance v4, Ljava/io/File;

    .line 378
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v14

    .line 379
    invoke-virtual {v14, v13}, Lorg/apache/tools/ant/util/FileUtils;->fromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Class "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " depends on "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " due to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 398
    :goto_5
    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v4

    .line 363
    :goto_6
    if-eq v3, v6, :cond_4

    .line 402
    check-cast v3, Ljava/io/File;

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding a classpath dependency on "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 405
    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 348
    :catchall_0
    move-exception v2

    :goto_7
    if-eqz v7, :cond_5

    :try_start_5
    invoke-virtual {v7}, Lorg/apache/tools/ant/AntClassLoader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    :goto_8
    throw v2

    .line 381
    :cond_6
    :try_start_6
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bizarre nested path in jar: protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 385
    :cond_7
    const-string v13, "file"

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 386
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v13

    .line 388
    invoke-virtual {v4}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v14

    .line 387
    new-instance v4, Ljava/io/File;

    invoke-virtual {v13, v14}, Lorg/apache/tools/ant/util/FileUtils;->fromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    move-object v4, v6

    .line 385
    goto/16 :goto_4

    :cond_9
    move-object v4, v6

    .line 371
    goto :goto_5

    .line 366
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring base classlib dependency "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v4, v6

    goto :goto_5

    .line 352
    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    .line 415
    :cond_c
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    if-eqz v2, :cond_d

    if-eqz v10, :cond_d

    .line 416
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->writeCachedDependencies(Ljava/util/Map;)V

    .line 418
    :cond_d
    return-void

    .line 411
    :cond_e
    const-string v2, "No classpath to check"

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    goto :goto_9

    .line 348
    :catchall_1
    move-exception v3

    goto :goto_8

    :catchall_2
    move-exception v2

    goto :goto_7

    :catchall_3
    move-exception v2

    goto :goto_7

    :catchall_4
    move-exception v2

    goto :goto_7

    :catchall_5
    move-exception v2

    goto :goto_7

    :cond_f
    move-object v3, v4

    goto/16 :goto_6

    :cond_10
    move-object v2, v12

    goto/16 :goto_1

    :cond_11
    move-object v5, v2

    move v8, v3

    goto/16 :goto_0

    :cond_12
    move-object v5, v2

    move v8, v9

    goto/16 :goto_0
.end method

.method private determineOutOfDateClasses()V
    .registers 11

    .line 580
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->outOfDateClasses:Ljava/util/Map;

    .line 581
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->srcPath:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->directories(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda5;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 587
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classpathDependencies:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 613
    :cond_0
    return-void

    .line 591
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 592
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 593
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->outOfDateClasses:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 596
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classFileInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    .line 600
    if-eqz v2, :cond_2

    .line 601
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 602
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v5

    .line 603
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is out of date with respect to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 607
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->outOfDateClasses:Ljava/util/Map;

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private directories(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ")",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 828
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda13;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda13;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda16;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda16;

    .line 829
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda15;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda15;

    .line 830
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 828
    return-object v0
.end method

.method private dumpDependencies()V
    .registers 4

    const/4 v2, 0x4

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverse Dependency Dump for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->affectedClassMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " classes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 562
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->affectedClassMap:Ljava/util/Map;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 569
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classpathDependencies:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 570
    const-string v0, "Classpath file dependencies (Forward):"

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 572
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classpathDependencies:Ljava/util/Map;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 577
    :cond_0
    return-void
.end method

.method private findSourceFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 6

    .line 725
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 726
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".java"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->srcPath:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->directories(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    .line 733
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 734
    invoke-static {p2}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall0;->m(Ljava/lang/Object;)Ljava/util/function/Predicate;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda14;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda14;

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    .line 733
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 735
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 732
    return-object v0

    .line 729
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCheckClassPath()Lorg/apache/tools/ant/types/Path;
    .registers 5

    const/4 v0, 0x0

    .line 245
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v1, :cond_0

    .line 262
    :goto_0
    return-object v0

    .line 249
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 250
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Path;->forEach(Ljava/util/function/Consumer;)V

    .line 251
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->destPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Path;->forEach(Ljava/util/function/Consumer;)V

    .line 254
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Classpath without dest dir is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 257
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda9;-><init>(Lorg/apache/tools/ant/types/Path;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1
.end method

.method private getClassFiles()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;",
            ">;"
        }
    .end annotation

    .line 708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 710
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->destPath:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->directories(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda7;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;Ljava/util/List;)V

    .line 711
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 713
    return-object v0
.end method

.method private isRmiStub(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 545
    const-string v0, "_Stub"

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->isStub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    const-string v0, "_Skel"

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->isStub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    const-string v0, "_Stub"

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->isStub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    const-string v0, "_Skel"

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->isStub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 545
    :goto_0
    return v0

    .line 548
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$determineDependencies$2(Ljava/lang/String;)Ljava/util/Map;
    .registers 2

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$directories$10(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/FileProvider;
    .registers 2

    .line 828
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    return-object v0
.end method

.method static synthetic lambda$findSourceFile$9(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 733
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$readCachedDependencies$0(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private readCachedDependencies(Ljava/io/File;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 196
    const-string v0, "||:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 198
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 199
    const/4 v0, 0x0

    .line 201
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 202
    const-string v5, "||:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 203
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    sget-object v4, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda12;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda12;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 206
    :cond_1
    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    throw v0

    .line 210
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 211
    return-object v1

    .line 198
    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private warnOutOfDateButNotDeleted(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x1

    .line 518
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$300(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->warnOnRmiStubs:Z

    if-nez v0, :cond_1

    .line 526
    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->isRmiStub(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    const/4 v0, 0x3

    .line 530
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is out of date due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but has not been deleted because its source file could not be determined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 535
    invoke-static {p1, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$302(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Z)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private writeCachedDependencies(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 224
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    const-string v2, "dependencies.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 227
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 229
    const-string v3, "%s%s%n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "||:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    throw v0

    .line 235
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 237
    :cond_2
    return-void

    .line 225
    :catchall_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 161
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 623
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 624
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->srcPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v2, :cond_7

    .line 629
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->directories(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 634
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->destPath:Lorg/apache/tools/ant/types/Path;

    if-nez v2, :cond_0

    .line 635
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->srcPath:Lorg/apache/tools/ant/types/Path;

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->destPath:Lorg/apache/tools/ant/types/Path;

    .line 638
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 643
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 644
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 647
    :cond_2
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->determineDependencies()V

    .line 648
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dump:Z

    if-eqz v2, :cond_3

    .line 649
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dumpDependencies()V

    .line 651
    :cond_3
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->determineOutOfDateClasses()V

    .line 652
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->deleteAllAffectedFiles()I

    move-result v2

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    .line 657
    if-lez v2, :cond_5

    .line 658
    const/4 v0, 0x2

    .line 663
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of date files in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 667
    return-void

    .line 639
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The cache, if specified, must point to a directory"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 660
    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    .line 630
    :cond_6
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 631
    const-string v1, "srcdir attribute must be non-empty"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 625
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 626
    const-string v1, "srcdir attribute must be set"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 152
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public synthetic lambda$determineDependencies$1$Depend(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;Ljava/lang/String;)V
    .registers 5

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " depends on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$determineOutOfDateClasses$7$Depend(Ljava/io/File;)V
    .registers 3

    .line 582
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->scanDir(Ljava/io/File;[Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public synthetic lambda$dumpDependencies$3$Depend(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)V
    .registers 5

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-static {p2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$dumpDependencies$4$Depend(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " affects:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 564
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 567
    return-void
.end method

.method public synthetic lambda$dumpDependencies$5$Depend(Ljava/io/File;)V
    .registers 4

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$dumpDependencies$6$Depend(Ljava/lang/String;Ljava/util/Set;)V
    .registers 5

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " depends on:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->log(Ljava/lang/String;I)V

    .line 574
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$$ExternalSyntheticLambda6;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 575
    return-void
.end method

.method public synthetic lambda$getClassFiles$8$Depend(Ljava/util/List;Ljava/io/File;)V
    .registers 3

    .line 711
    invoke-direct {p0, p1, p2, p2}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->addClassFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method protected scanDir(Ljava/io/File;[Ljava/lang/String;)V
    .registers 13

    .line 680
    array-length v2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p2, v1

    .line 681
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 682
    const-string v4, ".java"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 686
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ".java"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 685
    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileUtils;->convertSlashName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 688
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->classFileInfoMap:Ljava/util/Map;

    .line 689
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;

    .line 690
    if-nez v0, :cond_1

    .line 692
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->outOfDateClasses:Ljava/util/Map;

    invoke-interface {v0, v4, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 693
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;->access$100(Lorg/apache/tools/ant/taskdefs/optional/depend/Depend$ClassFileInfo;)Ljava/io/File;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    .line 695
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->outOfDateClasses:Ljava/util/Map;

    invoke-interface {v0, v4, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 699
    :cond_2
    return-void
.end method

.method public setCache(Ljava/io/File;)V
    .registers 2

    .line 802
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->cache:Ljava/io/File;

    .line 803
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 140
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dependClasspath:Lorg/apache/tools/ant/types/Path;

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_0
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 174
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 175
    return-void
.end method

.method public setClosure(Z)V
    .registers 2

    .line 814
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->closure:Z

    .line 815
    return-void
.end method

.method public setDestDir(Lorg/apache/tools/ant/types/Path;)V
    .registers 2

    .line 793
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->destPath:Lorg/apache/tools/ant/types/Path;

    .line 794
    return-void
.end method

.method public setDump(Z)V
    .registers 2

    .line 824
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->dump:Z

    .line 825
    return-void
.end method

.method public setSrcdir(Lorg/apache/tools/ant/types/Path;)V
    .registers 2

    .line 784
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->srcPath:Lorg/apache/tools/ant/types/Path;

    .line 785
    return-void
.end method

.method public setWarnOnRmiStubs(Z)V
    .registers 2

    .line 184
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/Depend;->warnOnRmiStubs:Z

    .line 185
    return-void
.end method
