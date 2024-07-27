.class public Lorg/apache/tools/ant/types/PatternSet;
.super Lorg/apache/tools/ant/types/DataType;
.source "PatternSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/PatternSet$InvertedPatternSet;,
        Lorg/apache/tools/ant/types/PatternSet$NameEntry;,
        Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;
    }
.end annotation


# instance fields
.field private excludeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/PatternSet$NameEntry;",
            ">;"
        }
    .end annotation
.end field

.field private excludesFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;",
            ">;"
        }
    .end annotation
.end field

.field private includeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/PatternSet$NameEntry;",
            ">;"
        }
    .end annotation
.end field

.field private includesFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 244
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->includeList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->excludeList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->includesFileList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->excludesFileList:Ljava/util/List;

    .line 245
    return-void
.end method

.method private addPatternFileToList(Ljava/util/List;)Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;",
            ">;)",
            "Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;"
        }
    .end annotation

    .line 381
    new-instance v0, Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;-><init>(Lorg/apache/tools/ant/types/PatternSet;)V

    .line 382
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    return-object v0
.end method

.method private addPatternToList(Ljava/util/List;)Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/PatternSet$NameEntry;",
            ">;)",
            "Lorg/apache/tools/ant/types/PatternSet$NameEntry;"
        }
    .end annotation

    .line 372
    new-instance v0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;-><init>(Lorg/apache/tools/ant/types/PatternSet;)V

    .line 373
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    return-object v0
.end method

.method private getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;
    .registers 4

    .line 508
    const-class v0, Lorg/apache/tools/ant/types/PatternSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/types/PatternSet;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/PatternSet;

    return-object v0
.end method

.method static synthetic lambda$makeArray$1(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/PatternSet$NameEntry;)Ljava/lang/String;
    .registers 3

    .line 518
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->evalName(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$makeArray$2(Ljava/lang/String;)Z
    .registers 2

    .line 519
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$makeArray$3(I)[Ljava/lang/String;
    .registers 2

    .line 519
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private makeArray(Ljava/util/List;Lorg/apache/tools/ant/Project;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/PatternSet$NameEntry;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 515
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    const/4 v0, 0x0

    .line 518
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/Project;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda5;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda6;

    .line 519
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda3;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private readFiles(Lorg/apache/tools/ant/Project;)V
    .registers 6

    .line 526
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->includesFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 527
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->includesFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;

    .line 528
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;->evalName(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v2

    .line 529
    if-eqz v2, :cond_0

    .line 530
    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 531
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 535
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/types/PatternSet;->includeList:Ljava/util/List;

    invoke-direct {p0, v2, v0, v3, p1}, Lorg/apache/tools/ant/types/PatternSet;->readPatterns(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    .line 532
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Includesfile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->includesFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 540
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->excludesFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 541
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->excludesFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;

    .line 542
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;->evalName(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v2

    .line 543
    if-eqz v2, :cond_4

    .line 544
    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 545
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 549
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/types/PatternSet;->excludeList:Ljava/util/List;

    invoke-direct {p0, v2, v0, v3, p1}, Lorg/apache/tools/ant/types/PatternSet;->readPatterns(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lorg/apache/tools/ant/Project;)V

    goto :goto_1

    .line 546
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Excludesfile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->excludesFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 554
    :cond_7
    return-void
.end method

.method private readPatterns(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lorg/apache/tools/ant/Project;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/PatternSet$NameEntry;",
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

    .line 419
    if-nez p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 421
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 425
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda4;

    .line 426
    invoke-interface {v3}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 427
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda1;

    invoke-direct {v3, p4}, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/Project;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p3}, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/PatternSet;Ljava/util/List;)V

    .line 428
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 433
    return-void

    .line 420
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v1, v0

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_1
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_2
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred while reading from pattern file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 419
    :catchall_2
    move-exception v2

    goto :goto_1

    :catchall_3
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public addConfiguredInvert(Lorg/apache/tools/ant/types/PatternSet;)V
    .registers 4

    .line 588
    new-instance v0, Lorg/apache/tools/ant/types/PatternSet$InvertedPatternSet;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/types/PatternSet$InvertedPatternSet;-><init>(Lorg/apache/tools/ant/types/PatternSet;Lorg/apache/tools/ant/types/PatternSet$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/PatternSet;->addConfiguredPatternset(Lorg/apache/tools/ant/types/PatternSet;)V

    .line 589
    return-void
.end method

.method public addConfiguredPatternset(Lorg/apache/tools/ant/types/PatternSet;)V
    .registers 9

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->isReference()Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v3

    .line 276
    if-eqz v2, :cond_0

    .line 277
    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v2, v1

    .line 278
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_0
    if-eqz v3, :cond_2

    .line 282
    array-length v1, v3

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, v3, v0

    .line 283
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 286
    :cond_2
    return-void
.end method

.method public append(Lorg/apache/tools/ant/types/PatternSet;Lorg/apache/tools/ant/Project;)V
    .registers 9

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->isReference()Z

    move-result v1

    if-nez v1, :cond_1

    .line 445
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/PatternSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 446
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v2

    .line 447
    if-eqz v2, :cond_0

    .line 448
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 449
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v1

    .line 453
    if-eqz v1, :cond_2

    .line 454
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 455
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 443
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot append to a reference"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_2
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .line 572
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/PatternSet;

    .line 573
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/types/PatternSet;->includeList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/PatternSet;->includeList:Ljava/util/List;

    .line 574
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/types/PatternSet;->excludeList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/PatternSet;->excludeList:Ljava/util/List;

    .line 575
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/types/PatternSet;->includesFileList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/PatternSet;->includesFileList:Ljava/util/List;

    .line 576
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/types/PatternSet;->excludesFileList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/PatternSet;->excludesFileList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    return-object v0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    .line 315
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->excludeList:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/PatternSet;->addPatternToList(Ljava/util/List;)Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0

    .line 316
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    .line 326
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->excludesFileList:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/PatternSet;->addPatternFileToList(Ljava/util/List;)Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;

    move-result-object v0

    return-object v0

    .line 327
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    .line 293
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->includeList:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/PatternSet;->addPatternToList(Ljava/util/List;)Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .registers 2

    .line 304
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->includesFileList:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/PatternSet;->addPatternFileToList(Ljava/util/List;)Lorg/apache/tools/ant/types/PatternSet$PatternFileNameEntry;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;
    .registers 3

    .line 480
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/PatternSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    .line 485
    :goto_0
    return-object v0

    .line 483
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/PatternSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 484
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/PatternSet;->readFiles(Lorg/apache/tools/ant/Project;)V

    .line 485
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->excludeList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->makeArray(Ljava/util/List;Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;
    .registers 3

    .line 466
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/PatternSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    .line 469
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/PatternSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 470
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/PatternSet;->readFiles(Lorg/apache/tools/ant/Project;)V

    .line 471
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->includeList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->makeArray(Ljava/util/List;Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasPatterns(Lorg/apache/tools/ant/Project;)Z
    .registers 3

    .line 495
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/PatternSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->hasPatterns(Lorg/apache/tools/ant/Project;)Z

    move-result v0

    .line 499
    :goto_0
    return v0

    .line 498
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/PatternSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 499
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->includesFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->excludesFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->includeList:Ljava/util/List;

    .line 500
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->excludeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic lambda$readPatterns$0$PatternSet(Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    .line 428
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/PatternSet;->addPatternToList(Ljava/util/List;)Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setExcludes(Ljava/lang/String;)V
    .registers 5

    .line 357
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", "

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 362
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 366
    :cond_1
    return-void
.end method

.method public setExcludesfile(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 406
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 410
    return-void

    .line 407
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setIncludes(Ljava/lang/String;)V
    .registers 5

    .line 339
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", "

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 344
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 348
    :cond_1
    return-void
.end method

.method public setIncludesfile(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    .line 397
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->includeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet;->excludeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 262
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PatternSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 561
    const-string v0, "patternSet{ includes: %s excludes: %s }"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/tools/ant/types/PatternSet;->includeList:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/tools/ant/types/PatternSet;->excludeList:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
