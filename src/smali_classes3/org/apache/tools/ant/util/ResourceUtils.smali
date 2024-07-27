.class public Lorg/apache/tools/ant/util/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/ResourceUtils$ReadOnlyTargetFileException;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_IO_CHUNK_SIZE:J = 0x1000000L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/ResourceUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areSame(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 797
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v2

    .line 802
    :goto_0
    return v0

    .line 800
    :cond_1
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 801
    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 802
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 803
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {v1}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->areSame(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static asFileResource(Lorg/apache/tools/ant/types/resources/FileProvider;)Lorg/apache/tools/ant/types/resources/FileResource;
    .registers 4

    .line 549
    instance-of v0, p0, Lorg/apache/tools/ant/types/resources/FileResource;

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 550
    :cond_0
    check-cast p0, Lorg/apache/tools/ant/types/resources/FileResource;

    .line 552
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/apache/tools/ant/Project;->getProject(Ljava/lang/Object;)Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 553
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-interface {p0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    move-object p0, v0

    .line 552
    goto :goto_0
.end method

.method private static binaryCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 572
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 573
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 574
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 576
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    :goto_0
    if-eq v1, v0, :cond_2

    .line 577
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 578
    if-eq v1, v4, :cond_1

    .line 579
    if-le v1, v4, :cond_0

    const/4 v0, 0x1

    .line 583
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 582
    :goto_1
    return v0

    .line 576
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0

    .line 582
    :cond_2
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-ne v1, v0, :cond_3

    const/4 v0, 0x0

    .line 583
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 572
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_3
    throw v0

    :catchall_2
    move-exception v1

    goto :goto_2

    :catchall_3
    move-exception v1

    goto :goto_3
.end method

.method private static charsetFor(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 2

    .line 689
    if-nez p0, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public static compareContent(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 517
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Resource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 536
    :cond_0
    :goto_0
    return v0

    .line 520
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v3

    .line 521
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v4

    .line 522
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    move v0, v2

    .line 523
    goto :goto_0

    .line 525
    :cond_2
    if-eq v3, v4, :cond_3

    .line 526
    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 528
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v3

    .line 529
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v4

    .line 530
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    move v0, v2

    .line 531
    goto :goto_0

    .line 533
    :cond_4
    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    .line 534
    :cond_5
    if-eqz v3, :cond_8

    :goto_1
    move v0, v1

    goto :goto_0

    .line 536
    :cond_6
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/ResourceUtils;->textCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I

    move-result v0

    goto :goto_0

    :cond_7
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/ResourceUtils;->binaryCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I

    move-result v0

    goto :goto_0

    :cond_8
    move v1, v0

    goto :goto_1
.end method

.method public static contentEquals(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 476
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 500
    :cond_0
    :goto_0
    return v1

    .line 479
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    .line 481
    goto :goto_0

    .line 485
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 489
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Resource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v0

    .line 490
    goto :goto_0

    .line 492
    :cond_3
    if-nez p2, :cond_4

    .line 493
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v2

    .line 494
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v4

    .line 495
    cmp-long v6, v2, v8

    if-eqz v6, :cond_4

    cmp-long v6, v4, v8

    if-eqz v6, :cond_4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 500
    :cond_4
    invoke-static {p0, p1, p2}, Lorg/apache/tools/ant/util/ResourceUtils;->compareContent(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Z)I

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/Project;)V

    .line 242
    return-void
.end method

.method public static copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/Project;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 260
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v5, v4

    move-object v6, v2

    move-object v7, v2

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V

    .line 262
    return-void
.end method

.method public static copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/FilterSetCollection;",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V

    .line 298
    return-void
.end method

.method public static copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/FilterSetCollection;",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Z)V

    .line 338
    return-void
.end method

.method public static copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Z)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/FilterSetCollection;",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Project;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    if-nez p4, :cond_1

    .line 376
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v2

    .line 375
    invoke-static {p0, p1, v2, v3}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->isOutOfDate(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 380
    invoke-virtual {p2}, Lorg/apache/tools/ant/types/FilterSetCollection;->hasFilters()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move v5, v3

    .line 381
    :goto_1
    if-eqz p3, :cond_f

    .line 382
    invoke-virtual {p3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v2, 0x1

    move v3, v2

    .line 384
    :goto_2
    instance-of v2, p0, Lorg/apache/tools/ant/types/resources/StringResource;

    if-eqz v2, :cond_5

    move-object v2, p0

    .line 385
    check-cast v2, Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/resources/StringResource;->getEncoding()Ljava/lang/String;

    move-result-object v7

    .line 389
    :goto_3
    const-class v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 391
    const-class v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v2}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v2

    move-object v4, v2

    .line 393
    :goto_4
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_2

    .line 394
    if-eqz p10, :cond_8

    .line 397
    sget-object v2, Lorg/apache/tools/ant/util/ResourceUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 403
    :cond_2
    if-eqz v5, :cond_9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 404
    invoke-static/range {v2 .. v9}, Lorg/apache/tools/ant/util/ResourceUtils;->copyWithFilterSets(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V

    .line 440
    :cond_3
    :goto_5
    if-eqz p5, :cond_0

    .line 441
    const-class v2, Lorg/apache/tools/ant/types/resources/Touchable;

    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/resources/Touchable;

    .line 442
    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/apache/tools/ant/util/ResourceUtils;->setLastModified(Lorg/apache/tools/ant/types/resources/Touchable;J)V

    goto :goto_0

    .line 380
    :cond_4
    const/4 v3, 0x0

    move v5, v3

    goto :goto_1

    :cond_5
    move-object/from16 v7, p7

    .line 387
    goto :goto_3

    .line 390
    :cond_6
    const/4 v2, 0x0

    move-object v4, v2

    goto :goto_4

    .line 398
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete read-only destination file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 395
    :cond_8
    new-instance v2, Lorg/apache/tools/ant/util/ResourceUtils$ReadOnlyTargetFileException;

    invoke-direct {v2, v4}, Lorg/apache/tools/ant/util/ResourceUtils$ReadOnlyTargetFileException;-><init>(Ljava/io/File;)V

    throw v2

    .line 407
    :cond_9
    if-nez v3, :cond_b

    if-eqz v7, :cond_a

    .line 409
    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    if-nez v7, :cond_c

    if-eqz p8, :cond_c

    :cond_b
    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 407
    invoke-static/range {v3 .. v9}, Lorg/apache/tools/ant/util/ResourceUtils;->copyWithFilterChainsOrTranscoding(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Ljava/util/Vector;ZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V

    goto :goto_5

    .line 416
    :cond_c
    const/4 v3, 0x0

    .line 417
    const-class v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    if-eqz v4, :cond_e

    if-nez p6, :cond_e

    .line 419
    const-class v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v2}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v2

    .line 422
    :try_start_0
    move-object/from16 v0, p9

    invoke-static {v2, v4, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->copyUsingFileChannels(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/Project;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    const/4 v2, 0x1

    .line 436
    :goto_6
    if-nez v2, :cond_3

    .line 437
    move/from16 v0, p6

    move-object/from16 v1, p9

    invoke-static {p0, p1, v0, v1}, Lorg/apache/tools/ant/util/ResourceUtils;->copyUsingStreams(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;ZLorg/apache/tools/ant/Project;)V

    goto :goto_5

    .line 424
    :catch_0
    move-exception v5

    .line 425
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to copy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " using NIO Channels failed due to \'"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'.  Falling back to streams."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    if-eqz p9, :cond_d

    .line 430
    const/4 v4, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    move v2, v3

    goto :goto_6

    .line 432
    :cond_d
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v3

    goto :goto_6

    :cond_e
    move v2, v3

    goto :goto_6

    :cond_f
    move v3, v2

    goto/16 :goto_2
.end method

.method private static copyUsingFileChannels(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/Project;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 728
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/tools/ant/util/FileUtils;->areSame(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping (self) copy of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->log(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 734
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 735
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 740
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v2, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 742
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 746
    const-wide/16 v2, 0x0

    .line 747
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 748
    :goto_1
    cmp-long v4, v2, v6

    if-gez v4, :cond_4

    .line 749
    const-wide/32 v4, 0x1000000

    sub-long v8, v6, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 751
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    add-long/2addr v2, v4

    .line 753
    goto :goto_1

    .line 736
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to create the parent directory for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 754
    :cond_4
    if-eqz v0, :cond_5

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_0

    .line 740
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_6

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_6
    :goto_2
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_7

    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_7
    :goto_3
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v1

    goto :goto_3
.end method

.method private static copyUsingStreams(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;ZLorg/apache/tools/ant/Project;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 761
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/ResourceUtils;->areSame(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping (self) copy of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->log(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 767
    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/apache/tools/ant/util/ResourceUtils;->getOutputStream(Lorg/apache/tools/ant/types/Resource;ZLorg/apache/tools/ant/Project;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 769
    const/16 v3, 0x2000

    :try_start_1
    new-array v3, v3, [B

    .line 772
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 773
    const/4 v0, 0x0

    array-length v4, v3

    invoke-virtual {v1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 774
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    .line 775
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 766
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_4
    :goto_1
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_5
    :goto_2
    throw v0

    :catchall_2
    move-exception v2

    goto :goto_1

    :catchall_3
    move-exception v1

    goto :goto_2
.end method

.method private static copyWithFilterChainsOrTranscoding(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Ljava/util/Vector;ZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/ResourceUtils;->areSame(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping (self) copy of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->log(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p6, p4, p2, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->filterWith(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/util/Vector;Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v1

    .line 709
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 710
    invoke-static {p1, p3, p6}, Lorg/apache/tools/ant/util/ResourceUtils;->getOutputStream(Lorg/apache/tools/ant/types/Resource;ZLorg/apache/tools/ant/Project;)Ljava/io/OutputStream;

    move-result-object v3

    .line 711
    invoke-static {p5}, Lorg/apache/tools/ant/util/ResourceUtils;->charsetFor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 712
    const/16 v0, 0x2000

    :try_start_1
    new-array v0, v0, [C

    .line 714
    :goto_1
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/Reader;->read([CII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 715
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 716
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    goto :goto_0

    .line 718
    :cond_2
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 707
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_2
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_3
    :goto_3
    throw v0

    :catchall_2
    move-exception v2

    goto :goto_2

    :catchall_3
    move-exception v1

    goto :goto_3
.end method

.method private static copyWithFilterSets(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/FilterSetCollection;",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/ResourceUtils;->areSame(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping (self) copy of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->log(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p7, p5, p3, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->filterWith(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/util/Vector;Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v1

    .line 654
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 655
    invoke-static {p1, p4, p7}, Lorg/apache/tools/ant/util/ResourceUtils;->getOutputStream(Lorg/apache/tools/ant/types/Resource;ZLorg/apache/tools/ant/Project;)Ljava/io/OutputStream;

    move-result-object v3

    .line 656
    invoke-static {p6}, Lorg/apache/tools/ant/util/ResourceUtils;->charsetFor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 658
    :try_start_1
    new-instance v3, Lorg/apache/tools/ant/util/LineTokenizer;

    invoke-direct {v3}, Lorg/apache/tools/ant/util/LineTokenizer;-><init>()V

    .line 659
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/util/LineTokenizer;->setIncludeDelims(Z)V

    .line 660
    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/util/LineTokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 661
    :goto_1
    if-eqz v0, :cond_4

    .line 662
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 665
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 669
    :goto_2
    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/util/LineTokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 667
    :cond_2
    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/types/FilterSetCollection;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 652
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_3
    :goto_4
    throw v0

    .line 671
    :cond_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    goto :goto_0

    .line 652
    :catchall_2
    move-exception v2

    goto :goto_3

    :catchall_3
    move-exception v1

    goto :goto_4
.end method

.method private static filterWith(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/util/Vector;Ljava/io/InputStream;)Ljava/io/Reader;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/io/Reader;"
        }
    .end annotation

    .line 676
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lorg/apache/tools/ant/util/ResourceUtils;->charsetFor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 677
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    new-instance v1, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-direct {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>()V

    .line 679
    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setBufferSize(I)V

    .line 680
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V

    .line 681
    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    .line 682
    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 683
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object v0

    .line 685
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v1
.end method

.method private static getOutputStream(Lorg/apache/tools/ant/types/Resource;ZLorg/apache/tools/ant/Project;)Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    if-eqz p1, :cond_1

    .line 781
    const-class v0, Lorg/apache/tools/ant/types/resources/Appendable;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Appendable;

    .line 782
    if-eqz v0, :cond_0

    .line 783
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/Appendable;->getAppendOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 793
    :goto_0
    return-object v0

    .line 785
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appendable OutputStream not available for non-appendable resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; using plain OutputStream"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    if-eqz p2, :cond_2

    .line 788
    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 793
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    .line 790
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic lambda$selectOutOfDateSources$0(Lorg/apache/tools/ant/types/Resource;JLorg/apache/tools/ant/types/Resource;)Z
    .registers 5

    .line 150
    invoke-static {p0, p3, p1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->isOutOfDate(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;J)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$selectOutOfDateSources$1(JLorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;
    .registers 5

    .line 150
    new-instance v0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0, p1}, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/Resource;J)V

    return-object v0
.end method

.method private static log(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V
    .registers 3

    .line 807
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->log(Lorg/apache/tools/ant/Project;Ljava/lang/String;I)V

    .line 808
    return-void
.end method

.method private static log(Lorg/apache/tools/ant/Project;Ljava/lang/String;I)V
    .registers 4

    .line 811
    if-nez p0, :cond_0

    .line 812
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 816
    :goto_0
    return-void

    .line 814
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static logFuture(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;J)V
    .registers 8

    .line 626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 627
    new-instance v2, Lorg/apache/tools/ant/types/resources/selectors/Date;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/resources/selectors/Date;-><init>()V

    .line 628
    add-long/2addr v0, p2

    invoke-virtual {v2, v0, v1}, Lorg/apache/tools/ant/types/resources/selectors/Date;->setMillis(J)V

    .line 629
    sget-object v0, Lorg/apache/tools/ant/types/TimeComparison;->AFTER:Lorg/apache/tools/ant/types/TimeComparison;

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/resources/selectors/Date;->setWhen(Lorg/apache/tools/ant/types/TimeComparison;)V

    .line 630
    new-instance v0, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Restrict;-><init>()V

    .line 631
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 632
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 633
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " modified in the future."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 636
    :cond_0
    return-void
.end method

.method public static selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)Lorg/apache/tools/ant/types/ResourceCollection;
    .registers 8

    .line 148
    invoke-static {p0, p1, p4, p5}, Lorg/apache/tools/ant/util/ResourceUtils;->logFuture(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;J)V

    .line 149
    new-instance v0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p4, p5}, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->selectSources(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;)Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    return-object v0
.end method

.method public static selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;)[Lorg/apache/tools/ant/types/Resource;
    .registers 10

    .line 98
    sget-object v0, Lorg/apache/tools/ant/util/ResourceUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 99
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 98
    invoke-static/range {v0 .. v5}, Lorg/apache/tools/ant/util/ResourceUtils;->selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)[Lorg/apache/tools/ant/types/Resource;
    .registers 12

    .line 124
    new-instance v1, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    .line 125
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/resources/Union;->addAll(Ljava/util/Collection;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 126
    invoke-static/range {v0 .. v5}, Lorg/apache/tools/ant/util/ResourceUtils;->selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/tools/ant/types/Resource;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->listResources()[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    goto :goto_0
.end method

.method public static selectSources(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;)Lorg/apache/tools/ant/types/ResourceCollection;
    .registers 16

    const/16 v10, 0x2f

    const/4 v9, 0x3

    .line 172
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "No sources found."

    invoke-virtual {p0, v0, v9}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 174
    sget-object v0, Lorg/apache/tools/ant/types/resources/Resources;->NONE:Lorg/apache/tools/ant/types/ResourceCollection;

    .line 224
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-static {p1}, Lorg/apache/tools/ant/types/resources/Union;->getInstance(Lorg/apache/tools/ant/types/ResourceCollection;)Lorg/apache/tools/ant/types/resources/Union;

    move-result-object v0

    .line 178
    new-instance v2, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    .line 179
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 180
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_1

    .line 182
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_1
    const/4 v3, 0x0

    .line 188
    :try_start_0
    invoke-interface {p2, v0}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 193
    :goto_2
    if-eqz v4, :cond_2

    array-length v0, v4

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " skipped - don\'t know how to handle it"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mapping resource "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    move-object v4, v3

    goto :goto_2

    .line 198
    :cond_3
    new-instance v6, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v6}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    .line 199
    array-length v7, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, v7, :cond_5

    aget-object v0, v4, v3

    .line 200
    if-nez v0, :cond_4

    .line 201
    const-string v0, "(no name)"

    .line 203
    :cond_4
    sget-char v8, Ljava/io/File;->separatorChar:C

    .line 204
    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-interface {p3, v0}, Lorg/apache/tools/ant/types/ResourceFactory;->getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 199
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 207
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Restrict;-><init>()V

    .line 208
    invoke-interface {p4, v1}, Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;->getTargetSelectorForSource(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 209
    invoke-virtual {v0, v6}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 210
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 211
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 212
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Restrict;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " added as "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " is outdated."

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p0, v0, v9}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 214
    :cond_6
    const-string v0, " doesn\'t exist."

    goto :goto_4

    .line 219
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " omitted as "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/resources/Union;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/resources/Union;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const-string v0, " is"

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " up to date."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {p0, v0, v9}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 221
    :cond_8
    const-string v0, " are "

    goto :goto_5

    :cond_9
    move-object v0, v2

    .line 224
    goto/16 :goto_0
.end method

.method public static setLastModified(Lorg/apache/tools/ant/types/resources/Touchable;J)V
    .registers 6

    .line 459
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/Touchable;->touch(J)V

    .line 460
    return-void
.end method

.method private static textCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 599
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 600
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 602
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 603
    :goto_0
    if-eqz v0, :cond_2

    .line 604
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 605
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 606
    if-nez v3, :cond_0

    .line 607
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x1

    .line 613
    :goto_1
    return v0

    .line 609
    :cond_0
    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 614
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 611
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 613
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 614
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 613
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    .line 597
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_4
    throw v0

    :catchall_2
    move-exception v2

    goto :goto_3

    :catchall_3
    move-exception v1

    goto :goto_4
.end method
