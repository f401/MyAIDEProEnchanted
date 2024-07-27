.class public Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;
.super Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;
.source "CvsTagDiff.java"


# static fields
.field private static final DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;

.field static final FILE_HAS_CHANGED:Ljava/lang/String; = " changed from revision "

.field static final FILE_IS_NEW:Ljava/lang/String; = " is new;"

.field static final FILE_STRING:Ljava/lang/String; = "File "

.field static final FILE_STRING_LENGTH:I

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field static final FILE_WAS_REMOVED:Ljava/lang/String; = " is removed"

.field static final REVISION:Ljava/lang/String; = "revision "

.field static final TO_STRING:Ljava/lang/String; = " to "


# instance fields
.field private ignoreRemoved:Z

.field private mydestfile:Ljava/io/File;

.field private myendDate:Ljava/lang/String;

.field private myendTag:Ljava/lang/String;

.field private mypackage:Ljava/lang/String;

.field private mystartDate:Ljava/lang/String;

.field private mystartTag:Ljava/lang/String;

.field private packageNamePrefixLengths:[I

.field private packageNamePrefixes:[Ljava/lang/String;

.field private packageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 81
    new-instance v0, Lorg/apache/tools/ant/util/DOMElementWriter;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/DOMElementWriter;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;

    .line 90
    const-string v0, "File "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->FILE_STRING_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->ignoreRemoved:Z

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    .line 157
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixes:[Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixLengths:[I

    return-void
.end method

.method private doFileHasChanged(Ljava/util/List;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 358
    const-string v1, " changed from revision "

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 359
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 375
    :goto_0
    return v0

    .line 364
    :cond_0
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 365
    const-string v2, " to "

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 366
    const-string v3, " changed from revision "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 369
    const-string v3, " to "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 370
    new-instance v3, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;

    invoke-direct {v3, v0, v2, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->log(Ljava/lang/String;I)V

    .line 375
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doFileIsNew(Ljava/util/List;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 339
    const-string v1, " is new;"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 340
    if-ne v1, v4, :cond_0

    .line 354
    :goto_0
    return v0

    .line 345
    :cond_0
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 346
    const/4 v0, 0x0

    .line 347
    const-string v3, "revision "

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 348
    if-eq v1, v4, :cond_1

    .line 349
    const-string v0, "revision "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->log(Ljava/lang/String;I)V

    .line 354
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doFileWasRemoved(Ljava/util/List;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 379
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->ignoreRemoved:Z

    if-eqz v2, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v0

    .line 382
    :cond_1
    const-string v2, " is removed"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 383
    if-eq v2, v4, :cond_0

    .line 387
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 389
    const-string v0, "revision "

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 390
    if-eq v0, v4, :cond_2

    .line 391
    const-string v2, "revision "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_1
    new-instance v2, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->log(Ljava/lang/String;I)V

    .line 396
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private handlePackageNames()V
    .registers 5

    .line 503
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mypackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mypackage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 506
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 508
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;

    .line 513
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 516
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixes:[Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixLengths:[I

    .line 518
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixes:[Ljava/lang/String;

    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "File "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 520
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixLengths:[I

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    aput v2, v0, v1

    .line 518
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 522
    :cond_2
    return-void
.end method

.method private parseRDiff(Ljava/io/File;)[Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 297
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 316
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_0
    if-eqz v0, :cond_1

    .line 319
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixes:[Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixLengths:[I

    invoke-static {v0, v3, v4}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->removePackageName(Ljava/lang/String;[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->doFileIsNew(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    invoke-direct {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->doFileHasChanged(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    invoke-direct {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->doFileWasRemoved(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 332
    return-object v0

    .line 297
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Error in parsing"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 297
    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private static removePackageName(Ljava/lang/String;[Ljava/lang/String;[I)Ljava/lang/String;
    .registers 5

    .line 532
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->FILE_STRING_LENGTH:I

    if-ge v0, v1, :cond_0

    .line 533
    const/4 v0, 0x0

    .line 540
    :goto_0
    return-object v0

    .line 535
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 536
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    aget v0, p2, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 540
    :cond_2
    sget v0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->FILE_STRING_LENGTH:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mypackage:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mydestfile:Ljava/io/File;

    if-eqz v0, :cond_a

    .line 479
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartTag:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartDate:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 483
    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartDate:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 488
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendTag:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendDate:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 492
    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendDate:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 496
    :cond_4
    return-void

    .line 472
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Package/module must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Start tag or start date must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one of start tag and start date must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "End tag or end date must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one of end tag and end date must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Destfile must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeTagDiff([Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v6, 0x0

    .line 406
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mydestfile:Ljava/io/File;

    .line 407
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 408
    :try_start_1
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lorg/apache/tools/ant/util/DOMUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    .line 410
    const-string v0, "tagdiff"

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 411
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 412
    const-string v4, "startTag"

    invoke-interface {v1, v4, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 417
    const-string v4, "endTag"

    invoke-interface {v1, v4, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :goto_1
    const-string v0, "cvsroot"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->getCvsRoot()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    .line 424
    const-string v4, ","

    invoke-static {v4, v0}, Lorg/apache/tools/ant/Main$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 423
    const-string v4, "package"

    invoke-interface {v1, v4, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget-object v0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;

    const/4 v4, 0x0

    const-string v5, "\t"

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/apache/tools/ant/util/DOMElementWriter;->openElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V

    .line 426
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 427
    array-length v4, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v6

    :goto_2
    if-ge v0, v4, :cond_2

    aget-object v5, p1, v0

    .line 428
    :try_start_2
    invoke-direct {p0, v3, v2, v5}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->writeTagEntry(Lorg/w3c/dom/Document;Ljava/io/PrintWriter;Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 414
    :cond_0
    const-string v0, "startDate"

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartDate:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 435
    :catch_0
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->log(Ljava/lang/String;I)V

    .line 439
    :goto_4
    return-void

    .line 419
    :cond_1
    :try_start_5
    const-string v0, "endDate"

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendDate:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 430
    :cond_2
    sget-object v0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;

    const/4 v3, 0x0

    const-string v4, "\t"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/util/DOMElementWriter;->closeElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;Z)V

    .line 431
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 432
    invoke-virtual {v2}, Ljava/io/PrintWriter;->checkError()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 435
    :try_start_6
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 437
    :catch_1
    move-exception v0

    .line 438
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 433
    :cond_3
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encountered an error writing tagdiff"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 406
    :catchall_1
    move-exception v1

    goto :goto_3
.end method

.method private writeTagEntry(Lorg/w3c/dom/Document;Ljava/io/PrintWriter;Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    const-string v0, "entry"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 453
    const-string v1, "file"

    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/DOMUtils;->createChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 454
    const-string v2, "name"

    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/tools/ant/util/DOMUtils;->appendCDATAElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->getRevision()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 456
    const-string v2, "revision"

    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->getRevision()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/tools/ant/util/DOMUtils;->appendTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_0
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->getPreviousRevision()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 459
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->getPreviousRevision()Ljava/lang/String;

    move-result-object v2

    const-string v3, "prevrevision"

    invoke-static {v1, v3, v2}, Lorg/apache/tools/ant/util/DOMUtils;->appendTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_1
    sget-object v1, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;

    const/4 v2, 0x1

    const-string v3, "\t"

    invoke-virtual {v1, v0, p2, v2, v3}, Lorg/apache/tools/ant/util/DOMElementWriter;->write(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V

    .line 463
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v7, 0x0

    .line 237
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->validate()V

    .line 240
    const-string v0, "rdiff"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    .line 241
    const-string v0, "-s"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 243
    const-string v0, "-r"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    .line 249
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendTag:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 250
    const-string v0, "-r"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    .line 258
    :goto_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->setCommand(Ljava/lang/String;)V

    .line 261
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->handlePackageNames()V

    .line 263
    sget-object v0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "cvstagdiff"

    const-string v3, ".log"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 265
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->setOutput(Ljava/io/File;)V

    .line 268
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->execute()V

    .line 271
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->parseRDiff(Ljava/io/File;)[Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;

    move-result-object v0

    .line 274
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->writeTagDiff([Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 277
    iput-object v7, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixes:[Ljava/lang/String;

    .line 278
    iput-object v7, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixLengths:[I

    .line 279
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 284
    :cond_0
    return-void

    .line 246
    :cond_1
    const-string v0, "-D"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartDate:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_2
    const-string v0, "-D"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendDate:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    iput-object v7, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixes:[Ljava/lang/String;

    .line 278
    iput-object v7, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixLengths:[I

    .line 279
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 280
    if-eqz v1, :cond_3

    .line 281
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 283
    :cond_3
    throw v0

    .line 277
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public setDestFile(Ljava/io/File;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mydestfile:Ljava/io/File;

    .line 216
    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendDate:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setEndTag(Ljava/lang/String;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendTag:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setIgnoreRemoved(Z)V
    .registers 2

    .line 226
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->ignoreRemoved:Z

    .line 227
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mypackage:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartDate:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setStartTag(Ljava/lang/String;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartTag:Ljava/lang/String;

    .line 180
    return-void
.end method
