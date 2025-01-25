.class public Lorg/apache/tools/ant/types/Path;
.super Lorg/apache/tools/ant/types/DataType;
.source "Path.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/Path$PathElement;
    }
.end annotation


# static fields
.field public static final systemBootClasspath:Lorg/apache/tools/ant/types/Path;

.field public static systemClasspath:Lorg/apache/tools/ant/types/Path;


# instance fields
.field private cache:Z

.field private preserveBC:Ljava/lang/Boolean;

.field private union:Lorg/apache/tools/ant/types/resources/Union;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    const-string v1, "java.class.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Path;->systemClasspath:Lorg/apache/tools/ant/types/Path;

    .line 80
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    const-string v1, "sun.boot.class.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Path;->systemBootClasspath:Lorg/apache/tools/ant/types/Path;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 167
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/Path;->cache:Z

    .line 168
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Path;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V
    .registers 4

    .line 159
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 160
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/Path$PathElement;->setPath(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private concatSpecialPath(Ljava/lang/String;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/types/Path;
    .registers 7

    const/4 v3, 0x1

    .line 556
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 559
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 560
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v2, "build.sysclasspath"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    :goto_1a
    if-eqz v0, :cond_1d

    move-object p1, v0

    .line 565
    :cond_1d
    const-string v0, "only"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 567
    invoke-virtual {v1, p2, v3}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;Z)V

    .line 588
    :goto_28
    return-object v1

    .line 561
    :cond_29
    const-string v0, "build.sysclasspath"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 569
    :cond_30
    const-string v0, "first"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 571
    invoke-virtual {v1, p2, v3}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;Z)V

    .line 572
    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_28

    .line 574
    :cond_3f
    const-string v0, "ignore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 576
    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_28

    .line 580
    :cond_4b
    const-string v0, "last"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for build.sysclasspath: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/types/Path;->log(Ljava/lang/String;I)V

    .line 585
    :cond_67
    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    .line 586
    invoke-virtual {v1, p2, v3}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;Z)V

    goto :goto_28
.end method

.method private static containsWildcards(Ljava/lang/String;)Z
    .registers 2

    .line 764
    if-eqz p0, :cond_14

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private getPreserveBC()Z
    .registers 2

    monitor-enter p0

    .line 753
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path;->preserveBC:Ljava/lang/Boolean;

    if-nez v0, :cond_f

    .line 754
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->delegateIteratorToList()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_d
    iput-object v0, p0, Lorg/apache/tools/ant/types/Path;->preserveBC:Ljava/lang/Boolean;

    .line 756
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path;->preserveBC:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    move-result v0

    monitor-exit p0

    return v0

    .line 754
    :cond_17
    :try_start_17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_1a

    goto :goto_d

    .line 752
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getRef()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 768
    const-class v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method private static resolveFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 514
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v1

    .line 515
    if-nez p0, :cond_c

    const/4 v0, 0x0

    .line 514
    :goto_7
    invoke-virtual {v1, v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 515
    :cond_c
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    goto :goto_7
.end method

.method public static translateFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 433
    if-nez p0, :cond_5

    .line 434
    const-string v0, ""

    .line 440
    :goto_4
    return-object v0

    .line 436
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 437
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 438
    invoke-static {v1, v0}, Lorg/apache/tools/ant/types/Path;->translateFileSep(Ljava/lang/StringBuffer;I)Z

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 440
    :cond_17
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method protected static translateFileSep(Ljava/lang/StringBuffer;I)Z
    .registers 4

    .line 452
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_10

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_17

    .line 453
    :cond_10
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 454
    const/4 v0, 0x1

    .line 456
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static translatePath(Lorg/apache/tools/ant/Project;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    .line 403
    if-nez p1, :cond_6

    .line 404
    new-array v0, v1, [Ljava/lang/String;

    .line 423
    :goto_5
    return-object v0

    .line 406
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 407
    new-instance v3, Lorg/apache/tools/ant/PathTokenizer;

    invoke-direct {v3, p1}, Lorg/apache/tools/ant/PathTokenizer;-><init>(Ljava/lang/String;)V

    .line 408
    :goto_10
    invoke-virtual {v3}, Lorg/apache/tools/ant/PathTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 409
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 410
    invoke-virtual {v3}, Lorg/apache/tools/ant/PathTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 412
    :try_start_1f
    invoke-static {p0, v0}, Lorg/apache/tools/ant/types/Path;->resolveFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2a
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1f .. :try_end_2a} :catch_37

    :goto_2a
    move v0, v1

    .line 418
    :goto_2b
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-ge v0, v5, :cond_53

    .line 419
    invoke-static {v4, v0}, Lorg/apache/tools/ant/types/Path;->translateFileSep(Ljava/lang/StringBuffer;I)Z

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 413
    :catch_37
    move-exception v5

    .line 414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping path element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " as it is not valid relative to the project"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_2a

    .line 421
    :cond_53
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 423
    :cond_5b
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_5
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/Path;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 265
    if-eq p1, p0, :cond_13

    .line 268
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-nez v0, :cond_f

    .line 269
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Path;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 271
    :cond_f
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 272
    return-void

    .line 266
    :cond_13
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->circularReference()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 280
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->checkChildrenAllowed()V

    .line 281
    if-nez p1, :cond_6

    .line 291
    :goto_5
    return-void

    .line 284
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_1f

    .line 285
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    .line 286
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Union;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 287
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    iget-boolean v1, p0, Lorg/apache/tools/ant/types/Path;->cache:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Union;->setCache(Z)V

    .line 289
    :cond_1f
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->setChecked(Z)V

    goto :goto_5
.end method

.method public addDirset(Lorg/apache/tools/ant/types/DirSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 252
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/DirSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-nez v0, :cond_d

    .line 253
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/DirSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 255
    :cond_d
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 256
    return-void
.end method

.method public addExisting(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;Z)V

    .line 323
    return-void
.end method

.method public addExisting(Lorg/apache/tools/ant/types/Path;Z)V
    .registers 11

    const/4 v7, 0x3

    .line 334
    if-eqz p2, :cond_3b

    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    :goto_e
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_15
    if-ge v2, v4, :cond_8e

    aget-object v5, v3, v2

    .line 338
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-static {v1, v5}, Lorg/apache/tools/ant/types/Path;->resolveFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 342
    if-eqz p2, :cond_2e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 343
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 345
    :cond_2e
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 346
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/Path;->setLocation(Ljava/io/File;)V

    .line 337
    :goto_37
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_15

    .line 335
    :cond_3b
    const/4 v0, 0x0

    goto :goto_e

    .line 347
    :cond_3d
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_74

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_74

    .line 348
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/tools/ant/types/Path;->containsWildcards(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 349
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/Path;->setLocation(Ljava/io/File;)V

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which contains wildcards and may not do what you intend it to do depending on your OS or version of Java"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lorg/apache/tools/ant/types/Path;->log(Ljava/lang/String;I)V

    goto :goto_37

    .line 354
    :cond_74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dropping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from path as it doesn\'t exist"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lorg/apache/tools/ant/types/Path;->log(Ljava/lang/String;I)V

    goto :goto_37

    .line 358
    :cond_8e
    return-void
.end method

.method public addExtdirs(Lorg/apache/tools/ant/types/Path;)V
    .registers 7

    .line 664
    if-nez p1, :cond_13

    .line 665
    const-string v0, "java.ext.dirs"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_44

    .line 667
    new-instance p1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 673
    :cond_13
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v2, :cond_44

    aget-object v3, v1, v0

    .line 674
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/apache/tools/ant/types/Path;->resolveFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 675
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 676
    new-instance v4, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v4}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 677
    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 678
    const-string v3, "*"

    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/types/FileSet;->setIncludes(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/types/Path;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 673
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 682
    :cond_44
    return-void
.end method

.method public addFilelist(Lorg/apache/tools/ant/types/FileList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 240
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/FileList;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-nez v0, :cond_d

    .line 241
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/FileList;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 243
    :cond_d
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 244
    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 228
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/FileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-nez v0, :cond_d

    .line 229
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/FileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 231
    :cond_d
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 232
    return-void
.end method

.method public addJavaRuntime()V
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 595
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isKaffe()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaHome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "share"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "kaffe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 602
    new-instance v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 603
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 604
    const-string v1, "*.jar"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->setIncludes(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 607
    :cond_49
    :goto_49
    const-string v0, "java.vendor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "microsoft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 614
    new-instance v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaHome()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Packages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 617
    const-string v1, "*.ZIP"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->setIncludes(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 654
    :goto_8c
    return-void

    .line 607
    :cond_8d
    const-string v0, "GNU libgcj"

    const-string v1, "java.vm.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 608
    sget-object v0, Lorg/apache/tools/ant/types/Path;->systemBootClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_49

    .line 621
    :cond_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaHome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rt.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaHome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "jre"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rt.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    .line 630
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "jce"

    aput-object v1, v0, v5

    const-string v1, "jsse"

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_115
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaHome()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaHome()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Classes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jar"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_115

    .line 641
    :cond_18a
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "core"

    aput-object v1, v0, v5

    const-string v1, "graphics"

    aput-object v1, v0, v6

    const-string v1, "security"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "xml"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ab
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaHome()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jar"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_1ab

    .line 647
    :cond_1e7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaHome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Classes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "classes.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJavaHome()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Classes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ui.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    goto/16 :goto_8c
.end method

.method public append(Lorg/apache/tools/ant/types/Path;)V
    .registers 2

    .line 309
    if-nez p1, :cond_3

    .line 313
    :goto_2
    return-void

    .line 312
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_2
.end method

.method protected assertFilesystemOnly(Lorg/apache/tools/ant/types/ResourceCollection;)Lorg/apache/tools/ant/types/ResourceCollection;
    .registers 7

    .line 724
    if-eqz p1, :cond_8

    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 728
    :cond_8
    return-object p1

    .line 725
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s allows only filesystem resources."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->getDataTypeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .line 479
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Path;

    .line 480
    iget-object v1, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v1, :cond_d

    :goto_a
    iput-object v1, v0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    .line 481
    return-object v0

    .line 480
    :cond_d
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/Union;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/Union;
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_a

    .line 482
    :catch_14
    move-exception v0

    .line 483
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public concatSystemBootClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 547
    sget-object v0, Lorg/apache/tools/ant/types/Path;->systemBootClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/types/Path;->concatSpecialPath(Ljava/lang/String;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public concatSystemClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 525
    const-string v0, "last"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 536
    sget-object v0, Lorg/apache/tools/ant/types/Path;->systemClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/types/Path;->concatSpecialPath(Ljava/lang/String;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createPath()Lorg/apache/tools/ant/types/Path;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 299
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 300
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/Path;)V

    .line 301
    return-object v0
.end method

.method public createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->isReference()Z

    move-result v0

    if-nez v0, :cond_f

    .line 217
    new-instance v0, Lorg/apache/tools/ant/types/Path$PathElement;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/Path$PathElement;-><init>(Lorg/apache/tools/ant/types/Path;)V

    .line 218
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 219
    return-object v0

    .line 215
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected delegateIteratorToList()Z
    .registers 5

    const/4 v0, 0x0

    .line 740
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 748
    :goto_d
    return v0

    .line 744
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "list"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 745
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_28

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 746
    :catch_28
    move-exception v1

    goto :goto_d
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 4
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

    .line 497
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->isChecked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    move-result v0

    if-eqz v0, :cond_9

    .line 498
    monitor-exit p0

    .line 508
    :goto_8
    return-void

    .line 500
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->isReference()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 501
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_20

    .line 508
    :goto_12
    monitor-exit p0

    goto :goto_8

    .line 503
    :cond_14
    :try_start_14
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_1b

    .line 504
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/Path;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 506
    :cond_1b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->setChecked(Z)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_20

    goto :goto_12

    .line 496
    :catchall_20
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

    monitor-enter p0

    .line 709
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 710
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Path;->getRef()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isFilesystemOnly()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1c

    move-result v0

    monitor-exit p0

    .line 714
    :goto_10
    return v0

    .line 712
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->dieOnCircularReference()V

    .line 713
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->assertFilesystemOnly(Lorg/apache/tools/ant/types/ResourceCollection;)Lorg/apache/tools/ant/types/ResourceCollection;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1c

    .line 714
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_10

    .line 708
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final iterator()Ljava/util/Iterator;
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

    .line 692
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 693
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Path;->getRef()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->iterator()Ljava/util/Iterator;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_41

    move-result-object v0

    monitor-exit p0

    .line 699
    :goto_10
    return-object v0

    .line 695
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->dieOnCircularReference()V

    .line 696
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Path;->getPreserveBC()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 697
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_41

    monitor-exit p0

    goto :goto_10

    .line 699
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_38

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_41

    move-result-object v0

    :goto_36
    monitor-exit p0

    goto :goto_10

    .line 700
    :cond_38
    :try_start_38
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->assertFilesystemOnly(Lorg/apache/tools/ant/types/ResourceCollection;)Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_41

    move-result-object v0

    goto :goto_36

    .line 691
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public list()[Ljava/lang/String;
    .registers 2

    .line 378
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 379
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Path;->getRef()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->assertFilesystemOnly(Lorg/apache/tools/ant/types/ResourceCollection;)Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 382
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_e

    :cond_1b
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->list()[Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public setCache(Z)V
    .registers 3

    .line 366
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->checkAttributesAllowed()V

    .line 367
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/Path;->cache:Z

    .line 368
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_c

    .line 369
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->setCache(Z)V

    .line 371
    :cond_c
    return-void
.end method

.method public setLocation(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->checkAttributesAllowed()V

    .line 179
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path$PathElement;->setLocation(Ljava/io/File;)V

    .line 180
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->checkAttributesAllowed()V

    .line 189
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path$PathElement;->setPath(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_8

    .line 205
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 206
    return-void

    .line 203
    :cond_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public size()I
    .registers 2

    monitor-enter p0

    .line 465
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 466
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Path;->getRef()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->size()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_24

    move-result v0

    monitor-exit p0

    .line 469
    :goto_10
    return v0

    .line 468
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->dieOnCircularReference()V

    .line 469
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_24

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    :goto_19
    monitor-exit p0

    goto :goto_10

    :cond_1b
    :try_start_1b
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->assertFilesystemOnly(Lorg/apache/tools/ant/types/ResourceCollection;)Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_24

    move-result v0

    goto :goto_19

    .line 464
    :catchall_24
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
    .registers 2

    .line 392
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Path;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lorg/apache/tools/ant/types/Path;->getRef()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    .line 393
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/types/Path;->union:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_16

    const-string v0, ""

    goto :goto_e

    :cond_16
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
