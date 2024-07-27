.class public Lorg/apache/tools/ant/taskdefs/SignJar;
.super Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;
.source "SignJar.java"


# static fields
.field public static final ERROR_BAD_MAP:Ljava/lang/String; = "Cannot map source file to anything sensible: "

.field public static final ERROR_MAPPER_WITHOUT_DEST:Ljava/lang/String; = "The destDir attribute is required if a mapper is set"

.field public static final ERROR_NO_ALIAS:Ljava/lang/String; = "alias attribute must be set"

.field public static final ERROR_NO_STOREPASS:Ljava/lang/String; = "storepass attribute must be set"

.field public static final ERROR_SIGNEDJAR_AND_PATHS:Ljava/lang/String; = "You cannot specify the signed JAR when using paths or filesets"

.field public static final ERROR_TODIR_AND_SIGNEDJAR:Ljava/lang/String; = "\'destdir\' and \'signedjar\' cannot both be set"

.field public static final ERROR_TOO_MANY_MAPPERS:Ljava/lang/String; = "Too many mappers"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field protected destDir:Ljava/io/File;

.field private digestAlg:Ljava/lang/String;

.field private force:Z

.field protected internalsf:Z

.field protected lazy:Z

.field private mapper:Lorg/apache/tools/ant/util/FileNameMapper;

.field private preserveLastModified:Z

.field protected sectionsonly:Z

.field private sigAlg:Ljava/lang/String;

.field protected sigfile:Ljava/lang/String;

.field protected signedjar:Ljava/io/File;

.field private tsaDigestAlg:Ljava/lang/String;

.field protected tsacert:Ljava/lang/String;

.field protected tsaproxyhost:Ljava/lang/String;

.field protected tsaproxyport:Ljava/lang/String;

.field protected tsaurl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/SignJar;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->force:Z

    return-void
.end method

.method private addProxyFor(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V
    .registers 5

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-J-D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".proxyHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyhost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyport:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-J-D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".proxyPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 673
    :cond_0
    return-void
.end method

.method private addTimestampAuthorityCommands(Lorg/apache/tools/ant/taskdefs/ExecTask;)V
    .registers 4

    .line 573
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaurl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 574
    const-string v0, "-tsa"

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaurl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 578
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsacert:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 579
    const-string v0, "-tsacert"

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsacert:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 583
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyhost:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 584
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaurl:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    :cond_2
    const-string v0, "https"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addProxyFor(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 587
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaurl:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 588
    :cond_4
    const-string v0, "http"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addProxyFor(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 592
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaDigestAlg:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 593
    const-string v0, "-tsadigestalg"

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaDigestAlg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 596
    :cond_6
    return-void
.end method

.method private signOneJar(Ljava/io/File;Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 494
    .line 495
    if-nez p2, :cond_0

    move-object p2, p1

    .line 498
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/SignJar;->isUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    :cond_1
    :goto_0
    return-void

    .line 502
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 503
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->createJarSigner()Lorg/apache/tools/ant/taskdefs/ExecTask;

    move-result-object v2

    .line 505
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/SignJar;->setCommonOptions(Lorg/apache/tools/ant/taskdefs/ExecTask;)V

    .line 507
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/SignJar;->bindToKeystore(Lorg/apache/tools/ant/taskdefs/ExecTask;)V

    .line 508
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigfile:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 509
    const-string v3, "-sigfile"

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 510
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigfile:Ljava/lang/String;

    .line 511
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 517
    :cond_3
    :try_start_0
    sget-object v3, Lorg/apache/tools/ant/taskdefs/SignJar;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v3, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->areSame(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 518
    const-string v4, "-signedjar"

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_4
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->internalsf:Z

    if-eqz v4, :cond_5

    .line 526
    const-string v4, "-internalsf"

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 529
    :cond_5
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sectionsonly:Z

    if-eqz v4, :cond_6

    .line 530
    const-string v4, "-sectionsonly"

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 533
    :cond_6
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigAlg:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 534
    const-string v4, "-sigalg"

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 535
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigAlg:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 538
    :cond_7
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->digestAlg:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 539
    const-string v4, "-digestalg"

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 540
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->digestAlg:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 544
    :cond_8
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/SignJar;->addTimestampAuthorityCommands(Lorg/apache/tools/ant/taskdefs/ExecTask;)V

    .line 547
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 550
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->alias:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signing JAR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->alias:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 552
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->log(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/ExecTask;->execute()V

    .line 561
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->preserveLastModified:Z

    if-eqz v2, :cond_1

    .line 562
    invoke-virtual {v3, p2, v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V

    goto/16 :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 4

    .line 235
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_0

    .line 238
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 239
    return-void

    .line 236
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Too many mappers"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->jar:Ljava/io/File;

    if-eqz v0, :cond_5

    move v0, v1

    .line 405
    :goto_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->signedjar:Ljava/io/File;

    if-eqz v3, :cond_6

    move v3, v1

    .line 406
    :goto_1
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->destDir:Ljava/io/File;

    if-eqz v4, :cond_7

    move v4, v1

    .line 407
    :goto_2
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-eqz v5, :cond_0

    move v2, v1

    .line 409
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->hasResources()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 412
    :cond_1
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->alias:Ljava/lang/String;

    if-eqz v5, :cond_12

    .line 416
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->storepass:Ljava/lang/String;

    if-eqz v5, :cond_11

    .line 420
    if-eqz v4, :cond_2

    if-nez v3, :cond_9

    .line 425
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->hasResources()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v3, :cond_a

    .line 431
    :cond_3
    if-nez v4, :cond_4

    if-nez v2, :cond_b

    .line 435
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->beginExecution()V

    .line 440
    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    .line 442
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->jar:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->signedjar:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SignJar;->signOneJar(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->endExecution()V

    .line 477
    :goto_3
    return-void

    :cond_5
    move v0, v2

    .line 404
    goto :goto_0

    :cond_6
    move v3, v2

    .line 405
    goto :goto_1

    :cond_7
    move v4, v2

    .line 406
    goto :goto_2

    .line 410
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "jar must be set through jar attribute or nested filesets"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "\'destdir\' and \'signedjar\' cannot both be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You cannot specify the signed JAR when using paths or filesets"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The destDir attribute is required if a mapper is set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_c
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->createUnifiedSourcePath()Lorg/apache/tools/ant/types/Path;

    move-result-object v3

    .line 452
    if-eqz v2, :cond_d

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    move-object v2, v0

    .line 458
    :goto_4
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Path;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 459
    const-class v5, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-static {v0}, Lorg/apache/tools/ant/util/ResourceUtils;->asFileResource(Lorg/apache/tools/ant/types/resources/FileProvider;)Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v5

    .line 464
    if-eqz v4, :cond_e

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->destDir:Ljava/io/File;

    .line 467
    :goto_6
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/resources/FileResource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 468
    if-eqz v6, :cond_f

    array-length v7, v6

    if-ne v7, v1, :cond_f

    .line 472
    new-instance v7, Ljava/io/File;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-direct {v7, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lorg/apache/tools/ant/taskdefs/SignJar;->signOneJar(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 476
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->endExecution()V

    .line 477
    throw v0

    .line 452
    :cond_d
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    move-object v2, v0

    goto :goto_4

    .line 464
    :cond_e
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v0

    goto :goto_6

    .line 470
    :cond_f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot map source file to anything sensible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 476
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->endExecution()V

    goto/16 :goto_3

    .line 417
    :cond_11
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "storepass attribute must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_12
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "alias attribute must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDigestAlg()Ljava/lang/String;
    .registers 2

    .line 373
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->digestAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getMapper()Lorg/apache/tools/ant/util/FileNameMapper;
    .registers 2

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    return-object v0
.end method

.method public getSigAlg()Ljava/lang/String;
    .registers 2

    .line 355
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getTSADigestAlg()Ljava/lang/String;
    .registers 2

    .line 393
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaDigestAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getTsacert()Ljava/lang/String;
    .registers 2

    .line 310
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsacert:Ljava/lang/String;

    return-object v0
.end method

.method public getTsaproxyhost()Ljava/lang/String;
    .registers 2

    .line 274
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyhost:Ljava/lang/String;

    return-object v0
.end method

.method public getTsaproxyport()Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyport:Ljava/lang/String;

    return-object v0
.end method

.method public getTsaurl()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaurl:Ljava/lang/String;

    return-object v0
.end method

.method public isForce()Z
    .registers 2

    .line 337
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->force:Z

    return v0
.end method

.method protected isSigned(Ljava/io/File;)Z
    .registers 4

    .line 649
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigfile:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->alias:Ljava/lang/String;

    :cond_0
    invoke-static {p1, v0}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->isSigned(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 653
    :goto_0
    return v0

    .line 650
    :catch_0
    move-exception v0

    .line 652
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SignJar;->log(Ljava/lang/String;I)V

    .line 653
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUpToDate(Ljava/io/File;Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    .line 612
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->isForce()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v0

    .line 620
    :cond_1
    if-nez p2, :cond_2

    move-object p2, p1

    .line 626
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 627
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->lazy:Z

    if-eqz v1, :cond_0

    .line 629
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/SignJar;->isSigned(Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    .line 636
    :cond_3
    sget-object v0, Lorg/apache/tools/ant/taskdefs/SignJar;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->isUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDestDir(Ljava/io/File;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->destDir:Ljava/io/File;

    .line 224
    return-void
.end method

.method public setDigestAlg(Ljava/lang/String;)V
    .registers 2

    .line 364
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->digestAlg:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setForce(Z)V
    .registers 2

    .line 327
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->force:Z

    .line 328
    return-void
.end method

.method public setInternalsf(Z)V
    .registers 2

    .line 194
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->internalsf:Z

    .line 195
    return-void
.end method

.method public setLazy(Z)V
    .registers 2

    .line 213
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->lazy:Z

    .line 214
    return-void
.end method

.method public setPreserveLastModified(Z)V
    .registers 2

    .line 664
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->preserveLastModified:Z

    .line 665
    return-void
.end method

.method public setSectionsonly(Z)V
    .registers 2

    .line 203
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sectionsonly:Z

    .line 204
    return-void
.end method

.method public setSigAlg(Ljava/lang/String;)V
    .registers 2

    .line 346
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigAlg:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setSigfile(Ljava/lang/String;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigfile:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setSignedjar(Ljava/io/File;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->signedjar:Ljava/io/File;

    .line 185
    return-void
.end method

.method public setTSADigestAlg(Ljava/lang/String;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaDigestAlg:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setTsacert(Ljava/lang/String;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsacert:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setTsaproxyhost(Ljava/lang/String;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyhost:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setTsaproxyport(Ljava/lang/String;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyport:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setTsaurl(Ljava/lang/String;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaurl:Ljava/lang/String;

    .line 266
    return-void
.end method
