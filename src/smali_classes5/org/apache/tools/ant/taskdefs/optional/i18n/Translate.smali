.class public Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Translate.java"


# static fields
.field private static final BUNDLE_DEFAULT_LANGUAGE:I = 0x6

.field private static final BUNDLE_DEFAULT_LANGUAGE_COUNTRY:I = 0x5

.field private static final BUNDLE_DEFAULT_LANGUAGE_COUNTRY_VARIANT:I = 0x4

.field private static final BUNDLE_MAX_ALTERNATIVES:I = 0x7

.field private static final BUNDLE_NOMATCH:I = 0x3

.field private static final BUNDLE_SPECIFIED_LANGUAGE:I = 0x2

.field private static final BUNDLE_SPECIFIED_LANGUAGE_COUNTRY:I = 0x1

.field private static final BUNDLE_SPECIFIED_LANGUAGE_COUNTRY_VARIANT:I

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private bundle:Ljava/lang/String;

.field private bundleCountry:Ljava/lang/String;

.field private bundleEncoding:Ljava/lang/String;

.field private bundleLanguage:Ljava/lang/String;

.field private bundleLastModified:[J

.field private bundleVariant:Ljava/lang/String;

.field private destEncoding:Ljava/lang/String;

.field private destLastModified:J

.field private endToken:Ljava/lang/String;

.field private filesets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private forceOverwrite:Z

.field private loaded:Z

.field private resourceMap:Ljava/util/Map;
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

.field private srcEncoding:Ljava/lang/String;

.field private srcLastModified:J

.field private startToken:Ljava/lang/String;

.field private toDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 152
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 142
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->filesets:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->resourceMap:Ljava/util/Map;

    .line 157
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLastModified:[J

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->loaded:Z

    return-void
.end method

.method private loadResourceMap(Ljava/io/InputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 420
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleEncoding:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_a9

    .line 423
    :cond_e
    :goto_e
    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b8

    .line 425
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_e

    const/16 v0, 0x23

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_e

    const/16 v0, 0x21

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_e

    .line 427
    const/16 v0, 0x3d

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 428
    if-ne v6, v2, :cond_3f

    .line 429
    const/16 v0, 0x3a

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 431
    :cond_3f
    if-ne v6, v2, :cond_be

    move v0, v1

    .line 432
    :goto_42
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_be

    .line 433
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 440
    :goto_52
    if-eq v6, v0, :cond_e

    .line 441
    const/4 v2, 0x0

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 442
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 444
    :goto_67
    const-string v4, "\\"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 445
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 447
    if-eqz v4, :cond_97

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_67

    .line 432
    :cond_94
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 453
    :cond_97
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 455
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->resourceMap:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a2
    .catchall {:try_start_e .. :try_end_a2} :catchall_a4

    goto/16 :goto_e

    .line 420
    :catchall_a4
    move-exception v0

    :try_start_a5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_bc

    :goto_a8
    :try_start_a8
    throw v0
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_a9} :catch_a9

    .line 460
    :catch_a9
    move-exception v0

    .line 461
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 460
    :cond_b8
    :try_start_b8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_a9

    .line 462
    return-void

    .line 420
    :catchall_bc
    move-exception v1

    goto :goto_a8

    :cond_be
    move v0, v2

    goto :goto_52
.end method

.method private loadResourceMaps()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 364
    new-instance v2, Ljava/util/Locale;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLanguage:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleCountry:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleVariant:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_f7

    const-string v0, ""

    .line 369
    :goto_1b
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10e

    const-string v1, ""

    .line 370
    :goto_27
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_125

    const-string v2, ""

    .line 372
    :goto_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v6, v6}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->processBundle(Ljava/lang/String;IZ)V

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v7, v6}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->processBundle(Ljava/lang/String;IZ)V

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v6}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->processBundle(Ljava/lang/String;IZ)V

    .line 375
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v6}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->processBundle(Ljava/lang/String;IZ)V

    .line 379
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13c

    const-string v0, ""

    .line 382
    :goto_8f
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_153

    const-string v1, ""

    .line 383
    :goto_9b
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16a

    move-object v2, v3

    .line 384
    :goto_a6
    const-string v3, "file.encoding"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleEncoding:Ljava/lang/String;

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3, v6}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->processBundle(Ljava/lang/String;IZ)V

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2, v6}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->processBundle(Ljava/lang/String;IZ)V

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1, v7}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->processBundle(Ljava/lang/String;IZ)V

    .line 389
    return-void

    .line 368
    :cond_f7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b

    .line 369
    :cond_10e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_27

    .line 370
    :cond_125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_33

    .line 381
    :cond_13c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8f

    .line 382
    :cond_153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9b

    .line 383
    :cond_16a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a6
.end method

.method private processBundle(Ljava/lang/String;IZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v6, 0x4

    .line 396
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 397
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 400
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->loaded:Z

    .line 401
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLastModified:[J

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    aput-wide v4, v2, p2

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->log(Ljava/lang/String;I)V

    .line 403
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->loadResourceMap(Ljava/io/InputStream;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_48} :catch_49

    .line 413
    :cond_48
    return-void

    .line 404
    :catch_49
    move-exception v0

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->log(Ljava/lang/String;I)V

    .line 409
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->loaded:Z

    if-nez v1, :cond_48

    if-eqz p3, :cond_48

    .line 410
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method private translate()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 478
    const/4 v2, 0x0

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->filesets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_102

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/FileSet;

    .line 480
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v7

    .line 481
    invoke-virtual {v7}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v4, 0x0

    move v2, v3

    :goto_25
    if-ge v4, v9, :cond_ff

    aget-object v10, v8, v4

    .line 483
    :try_start_29
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->toDir:Ljava/io/File;

    invoke-virtual {v3, v5, v10}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_32} :catch_ca

    move-result-object v11

    .line 486
    :try_start_33
    new-instance v3, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_45

    .line 488
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_45} :catch_ac
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_45} :catch_11f

    .line 495
    :cond_45
    :goto_45
    :try_start_45
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->destLastModified:J

    .line 496
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v7}, Lorg/apache/tools/ant/DirectoryScanner;->getBasedir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5, v10}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 497
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->srcLastModified:J

    .line 499
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->forceOverwrite:Z
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_63} :catch_ca

    if-nez v3, :cond_6f

    :try_start_65
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->destLastModified:J

    move-wide/from16 v16, v0

    cmp-long v3, v16, v14

    if-gez v3, :cond_d9

    :cond_6f
    const/4 v3, 0x1

    .line 501
    :goto_70
    if-nez v3, :cond_87

    .line 502
    const/4 v5, 0x0

    :goto_73
    const/4 v13, 0x7

    if-ge v5, v13, :cond_87

    .line 503
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->destLastModified:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLastModified:[J

    aget-wide v16, v3, v5

    cmp-long v3, v14, v16

    if-gez v3, :cond_db

    const/4 v3, 0x1

    .line 504
    :goto_85
    if-eqz v3, :cond_dd

    .line 509
    :cond_87
    if-eqz v3, :cond_e0

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->log(Ljava/lang/String;I)V

    .line 511
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->translateOneFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_a5} :catch_fd

    .line 512
    add-int/lit8 v2, v2, 0x1

    .line 519
    :goto_a7
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_25

    .line 490
    :catch_ac
    move-exception v3

    .line 491
    :try_start_ad
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception occurred while trying to check/create  parent directory.  "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 491
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->log(Ljava/lang/String;I)V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_c8} :catch_ca

    goto/16 :goto_45

    .line 517
    :catch_ca
    move-exception v2

    .line 518
    :goto_cb
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v3

    .line 499
    :cond_d9
    const/4 v3, 0x0

    goto :goto_70

    .line 503
    :cond_db
    const/4 v3, 0x0

    goto :goto_85

    .line 502
    :cond_dd
    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    .line 514
    :cond_e0
    :try_start_e0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as destination file is up to date"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->log(Ljava/lang/String;I)V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_fc} :catch_fd

    goto :goto_a7

    .line 517
    :catch_fd
    move-exception v2

    goto :goto_cb

    :cond_ff
    move v3, v2

    .line 481
    goto/16 :goto_a

    .line 522
    :cond_102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Translation performed on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " file(s)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->log(Ljava/lang/String;I)V

    .line 523
    return-void

    .line 517
    :catch_11f
    move-exception v2

    goto :goto_cb
.end method

.method private translateOneFile(Ljava/io/File;Ljava/io/File;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 526
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->destEncoding:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 528
    :try_start_18
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 529
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->srcEncoding:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_116

    .line 530
    :try_start_2f
    new-instance v8, Lorg/apache/tools/ant/util/LineTokenizer;

    invoke-direct {v8}, Lorg/apache/tools/ant/util/LineTokenizer;-><init>()V

    .line 531
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lorg/apache/tools/ant/util/LineTokenizer;->setIncludeDelims(Z)V

    .line 532
    invoke-virtual {v8, v7}, Lorg/apache/tools/ant/util/LineTokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 533
    :goto_3c
    if-eqz v0, :cond_10a

    .line 539
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move-object v3, v0

    .line 540
    :goto_45
    if-ltz v2, :cond_101

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    .line 541
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v0, v5, :cond_101

    .line 545
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->endToken:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    .line 551
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 550
    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 552
    if-gez v9, :cond_6d

    .line 553
    add-int/lit8 v0, v2, 0x1

    .line 593
    :goto_65
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    move v2, v0

    .line 594
    goto :goto_45

    .line 556
    :cond_6d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    .line 557
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 556
    add-int/2addr v0, v2

    invoke-virtual {v3, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move v0, v4

    move v5, v1

    .line 563
    :goto_7a
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_98

    if-eqz v0, :cond_98

    .line 564
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 565
    const/16 v12, 0x3a

    if-eq v11, v12, :cond_94

    const/16 v12, 0x3d

    if-eq v11, v12, :cond_94

    .line 566
    invoke-static {v11}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v11

    if-eqz v11, :cond_95

    :cond_94
    move v0, v1

    .line 563
    :cond_95
    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    .line 570
    :cond_98
    if-nez v0, :cond_9d

    .line 571
    add-int/lit8 v0, v2, 0x1

    goto :goto_65

    .line 574
    :cond_9d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->resourceMap:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 575
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->resourceMap:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 584
    :goto_ad
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->endToken:Ljava/lang/String;

    .line 585
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_65

    .line 577
    :cond_d5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replacement string missing for: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->log(Ljava/lang/String;I)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->endToken:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ad

    .line 595
    :cond_101
    invoke-virtual {v6, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v8, v7}, Lorg/apache/tools/ant/util/LineTokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;
    :try_end_107
    .catchall {:try_start_2f .. :try_end_107} :catchall_111

    move-result-object v0

    goto/16 :goto_3c

    .line 598
    :cond_10a
    :try_start_10a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_116

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 599
    return-void

    .line 526
    :catchall_111
    move-exception v0

    :try_start_112
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_11b

    :goto_115
    :try_start_115
    throw v0
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_116

    :catchall_116
    move-exception v0

    :try_start_117
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_11a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_11d

    :goto_11a
    throw v0

    :catchall_11b
    move-exception v1

    goto :goto_115

    :catchall_11d
    move-exception v1

    goto :goto_11a
.end method


# virtual methods
.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 273
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->filesets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method public execute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    if-eqz v0, :cond_a9

    .line 292
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    if-eqz v0, :cond_9d

    .line 297
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->endToken:Ljava/lang/String;

    if-eqz v0, :cond_91

    .line 302
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLanguage:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 303
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLanguage:Ljava/lang/String;

    .line 307
    :cond_1a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleCountry:Ljava/lang/String;

    if-nez v0, :cond_28

    .line 308
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleCountry:Ljava/lang/String;

    .line 311
    :cond_28
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleVariant:Ljava/lang/String;

    if-nez v0, :cond_3b

    .line 312
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleCountry:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleVariant:Ljava/lang/String;

    .line 316
    :cond_3b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->toDir:Ljava/io/File;

    if-eqz v0, :cond_85

    .line 321
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 322
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->toDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 327
    :cond_4a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->srcEncoding:Ljava/lang/String;

    if-nez v0, :cond_56

    .line 328
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->srcEncoding:Ljava/lang/String;

    .line 331
    :cond_56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->destEncoding:Ljava/lang/String;

    if-nez v0, :cond_5e

    .line 332
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->srcEncoding:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->destEncoding:Ljava/lang/String;

    .line 335
    :cond_5e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleEncoding:Ljava/lang/String;

    if-nez v0, :cond_66

    .line 336
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->srcEncoding:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleEncoding:Ljava/lang/String;

    .line 339
    :cond_66
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->loadResourceMaps()V

    .line 341
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->translate()V

    .line 342
    return-void

    .line 323
    :cond_6d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->toDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 324
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s is not a directory"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->toDir:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 317
    :cond_85
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The todir attribute must be set."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 298
    :cond_91
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The endtoken attribute must be set."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 293
    :cond_9d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The starttoken attribute must be set."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 288
    :cond_a9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The bundle attribute must be set."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setBundle(Ljava/lang/String;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setBundleCountry(Ljava/lang/String;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleCountry:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setBundleEncoding(Ljava/lang/String;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleEncoding:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setBundleLanguage(Ljava/lang/String;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLanguage:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setBundleVariant(Ljava/lang/String;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleVariant:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setDestEncoding(Ljava/lang/String;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->destEncoding:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setEndToken(Ljava/lang/String;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->endToken:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setForceOverwrite(Z)V
    .registers 2

    .line 265
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->forceOverwrite:Z

    .line 266
    return-void
.end method

.method public setSrcEncoding(Ljava/lang/String;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->srcEncoding:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setStartToken(Ljava/lang/String;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setToDir(Ljava/io/File;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->toDir:Ljava/io/File;

    .line 212
    return-void
.end method
