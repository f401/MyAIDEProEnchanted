.class public Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;
.super Lorg/apache/tools/ant/Task;
.source "JavaCC.java"


# static fields
.field protected static final ARCHIVE_LOCATIONS:[Ljava/lang/String;

.field protected static final ARCHIVE_LOCATIONS_VS_MAJOR_VERSION:[I

.field private static final BUILD_PARSER:Ljava/lang/String; = "BUILD_PARSER"

.field private static final BUILD_TOKEN_MANAGER:Ljava/lang/String; = "BUILD_TOKEN_MANAGER"

.field private static final CACHE_TOKENS:Ljava/lang/String; = "CACHE_TOKENS"

.field private static final CHOICE_AMBIGUITY_CHECK:Ljava/lang/String; = "CHOICE_AMBIGUITY_CHECK"

.field private static final COMMON_TOKEN_ACTION:Ljava/lang/String; = "COMMON_TOKEN_ACTION"

.field protected static final COM_JAVACC_CLASS:Ljava/lang/String; = "javacc.Main"

.field protected static final COM_JJDOC_CLASS:Ljava/lang/String; = "jjdoc.JJDocMain"

.field protected static final COM_JJTREE_CLASS:Ljava/lang/String; = "jjtree.Main"

.field protected static final COM_PACKAGE:Ljava/lang/String; = "COM.sun.labs."

.field private static final DEBUG_LOOKAHEAD:Ljava/lang/String; = "DEBUG_LOOKAHEAD"

.field private static final DEBUG_PARSER:Ljava/lang/String; = "DEBUG_PARSER"

.field private static final DEBUG_TOKEN_MANAGER:Ljava/lang/String; = "DEBUG_TOKEN_MANAGER"

.field private static final ERROR_REPORTING:Ljava/lang/String; = "ERROR_REPORTING"

.field private static final FORCE_LA_CHECK:Ljava/lang/String; = "FORCE_LA_CHECK"

.field private static final IGNORE_CASE:Ljava/lang/String; = "IGNORE_CASE"

.field private static final JAVA_UNICODE_ESCAPE:Ljava/lang/String; = "JAVA_UNICODE_ESCAPE"

.field private static final JDK_VERSION:Ljava/lang/String; = "JDK_VERSION"

.field private static final KEEP_LINE_COLUMN:Ljava/lang/String; = "KEEP_LINE_COLUMN"

.field private static final LOOKAHEAD:Ljava/lang/String; = "LOOKAHEAD"

.field private static final OPTIMIZE_TOKEN_MANAGER:Ljava/lang/String; = "OPTIMIZE_TOKEN_MANAGER"

.field protected static final ORG_JAVACC_CLASS:Ljava/lang/String; = "parser.Main"

.field protected static final ORG_JJDOC_CLASS:Ljava/lang/String; = "jjdoc.JJDocMain"

.field protected static final ORG_JJTREE_CLASS:Ljava/lang/String; = "jjtree.Main"

.field protected static final ORG_PACKAGE_3_0:Ljava/lang/String; = "org.netbeans.javacc."

.field protected static final ORG_PACKAGE_3_1:Ljava/lang/String; = "org.javacc."

.field private static final OTHER_AMBIGUITY_CHECK:Ljava/lang/String; = "OTHER_AMBIGUITY_CHECK"

.field private static final SANITY_CHECK:Ljava/lang/String; = "SANITY_CHECK"

.field private static final STATIC:Ljava/lang/String; = "STATIC"

.field protected static final TASKDEF_TYPE_JAVACC:I = 0x1

.field protected static final TASKDEF_TYPE_JJDOC:I = 0x3

.field protected static final TASKDEF_TYPE_JJTREE:I = 0x2

.field private static final UNICODE_INPUT:Ljava/lang/String; = "UNICODE_INPUT"

.field private static final USER_CHAR_STREAM:Ljava/lang/String; = "USER_CHAR_STREAM"

.field private static final USER_TOKEN_MANAGER:Ljava/lang/String; = "USER_TOKEN_MANAGER"


# instance fields
.field private cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

.field private javaccHome:Ljava/io/File;

.field private maxMemory:Ljava/lang/String;

.field private final optionalAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private outputDirectory:Ljava/io/File;

.field private targetFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x4

    .line 80
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "JavaCC.zip"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bin/lib/JavaCC.zip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bin/lib/javacc.jar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "javacc.jar"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->ARCHIVE_LOCATIONS:[Ljava/lang/String;

    .line 88
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->ARCHIVE_LOCATIONS_VS_MAJOR_VERSION:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 326
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    .line 70
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->outputDirectory:Ljava/io/File;

    .line 71
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    .line 72
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->javaccHome:Ljava/io/File;

    .line 74
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    .line 107
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->maxMemory:Ljava/lang/String;

    .line 327
    const-string v1, "java"

    invoke-static {v1}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJreExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->setVm(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method protected static getArchiveFile(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 390
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->ARCHIVE_LOCATIONS:[Ljava/lang/String;

    .line 391
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getArchiveLocationIndex(Ljava/io/File;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 390
    return-object v1
.end method

.method private static getArchiveLocationIndex(Ljava/io/File;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 511
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 515
    :goto_0
    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->ARCHIVE_LOCATIONS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 516
    new-instance v3, Ljava/io/File;

    aget-object v2, v2, v0

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    return v0

    .line 515
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Could not find a path to JavaCC.zip or javacc.jar from \'%s\'."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 512
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "JavaCC home must be a valid directory."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getMainClass(Ljava/io/File;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 405
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 406
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;

    move-result-object v1

    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getArchiveFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path$PathElement;->setLocation(Ljava/io/File;)V

    .line 407
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->addJavaRuntime()V

    .line 408
    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getMainClass(Lorg/apache/tools/ant/types/Path;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getMainClass(Lorg/apache/tools/ant/types/Path;I)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 422
    .line 425
    const-string v0, "ignore"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 426
    const/4 v2, 0x1

    invoke-static {v1, v1, v0, v2}, Lorg/apache/tools/ant/AntClassLoader;->newAntClassLoader(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v3

    .line 430
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COM.sun.labs.javacc.Main"

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/AntClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 433
    if-eqz v0, :cond_2

    .line 434
    const-string v0, "COM.sun.labs."

    .line 435
    packed-switch p1, :pswitch_data_0

    .line 490
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 493
    if-eqz v1, :cond_4

    .line 496
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 497
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    .line 496
    :cond_1
    return-object v0

    .line 447
    :pswitch_0
    const-string v1, "jjdoc.JJDocMain"

    goto :goto_0

    .line 442
    :pswitch_1
    const-string v1, "jjtree.Main"

    goto :goto_0

    .line 437
    :pswitch_2
    const-string v1, "javacc.Main"

    goto :goto_0

    .line 454
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.javacc.parser.Main"

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/AntClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 457
    if-eqz v2, :cond_3

    .line 458
    const-string v0, "org.javacc."

    .line 463
    :goto_1
    if-eqz v2, :cond_0

    .line 469
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 471
    :pswitch_3
    const-string v1, "parser.Main"

    goto :goto_0

    .line 460
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.netbeans.javacc.parser.Main"

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/AntClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 463
    if-eqz v2, :cond_7

    .line 464
    const-string v0, "org.netbeans.javacc."

    goto :goto_1

    .line 481
    :pswitch_4
    const-string v1, "jjdoc.JJDocMain"

    goto :goto_0

    .line 476
    :pswitch_5
    const-string v1, "jjtree.Main"

    goto :goto_0

    .line 494
    :cond_4
    :try_start_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown task type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 425
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Lorg/apache/tools/ant/AntClassLoader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    :goto_2
    throw v0

    .line 491
    :cond_6
    :try_start_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "failed to load JavaCC"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 425
    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1

    .line 435
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 469
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected static getMajorVersionNumber(Ljava/io/File;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 539
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->ARCHIVE_LOCATIONS_VS_MAJOR_VERSION:[I

    .line 540
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getArchiveLocationIndex(Ljava/io/File;)I

    move-result v1

    aget v0, v0, v1

    .line 539
    return v0
.end method

.method private getOutputJavaFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .registers 7

    const/4 v2, -0x1

    .line 549
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 552
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 553
    if-eq v1, v2, :cond_0

    .line 554
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 559
    if-eq v1, v2, :cond_2

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".java"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_0
    if-eqz p1, :cond_1

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 562
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".java"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x1

    .line 338
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 342
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->outputDirectory:Ljava/io/File;

    if-nez v0, :cond_1

    .line 348
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->outputDirectory:Ljava/io/File;

    .line 352
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-OUTPUT_DIRECTORY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->outputDirectory:Ljava/io/File;

    .line 353
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->outputDirectory:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getOutputJavaFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    .line 358
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target is already built - skipping ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->log(Ljava/lang/String;I)V

    .line 378
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Outputdir not a directory."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->javaccHome:Ljava/io/File;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getArchiveFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 367
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Path$PathElement;->setPath(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->addJavaRuntime()V

    .line 370
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-static {v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getMainClass(Lorg/apache/tools/ant/types/Path;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->setClassname(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->maxMemory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->setMaxmemory(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createVmArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-Dinstall.root="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->javaccHome:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->runCommand(Lorg/apache/tools/ant/Task;[Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Invalid target: %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic lambda$execute$0$JavaCC(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 338
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public setBuildparser(Z)V
    .registers 5

    .line 235
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "BUILD_PARSER"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void

    .line 235
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setBuildtokenmanager(Z)V
    .registers 5

    .line 243
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "BUILD_TOKEN_MANAGER"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void

    .line 243
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setCachetokens(Z)V
    .registers 5

    .line 267
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "CACHE_TOKENS"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-void

    .line 267
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setChoiceambiguitycheck(I)V
    .registers 5

    .line 122
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    const-string v1, "CHOICE_AMBIGUITY_CHECK"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public setCommontokenaction(Z)V
    .registers 5

    .line 211
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "COMMON_TOKEN_ACTION"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void

    .line 211
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setDebuglookahead(Z)V
    .registers 5

    .line 154
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "DEBUG_LOOKAHEAD"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void

    .line 154
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setDebugparser(Z)V
    .registers 5

    .line 146
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "DEBUG_PARSER"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void

    .line 146
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setDebugtokenmanager(Z)V
    .registers 5

    .line 162
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "DEBUG_TOKEN_MANAGER"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void

    .line 162
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setErrorreporting(Z)V
    .registers 5

    .line 179
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "ERROR_REPORTING"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void

    .line 179
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setForcelacheck(Z)V
    .registers 5

    .line 259
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "FORCE_LA_CHECK"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-void

    .line 259
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setIgnorecase(Z)V
    .registers 5

    .line 203
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "IGNORE_CASE"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void

    .line 203
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setJDKversion(Ljava/lang/String;)V
    .registers 4

    .line 284
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    const-string v1, "JDK_VERSION"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public setJavacchome(Ljava/io/File;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->javaccHome:Ljava/io/File;

    .line 311
    return-void
.end method

.method public setJavaunicodeescape(Z)V
    .registers 5

    .line 187
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "JAVA_UNICODE_ESCAPE"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void

    .line 187
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setKeeplinecolumn(Z)V
    .registers 5

    .line 275
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "KEEP_LINE_COLUMN"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    return-void

    .line 275
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setLookahead(I)V
    .registers 5

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    const-string v1, "LOOKAHEAD"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public setMaxmemory(Ljava/lang/String;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->maxMemory:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setOptimizetokenmanager(Z)V
    .registers 5

    .line 170
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    .line 171
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 170
    :goto_0
    const-string v2, "OPTIMIZE_TOKEN_MANAGER"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void

    .line 171
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setOtherambiguityCheck(I)V
    .registers 5

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    const-string v1, "OTHER_AMBIGUITY_CHECK"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public setOutputdirectory(Ljava/io/File;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->outputDirectory:Ljava/io/File;

    .line 295
    return-void
.end method

.method public setSanitycheck(Z)V
    .registers 5

    .line 251
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "SANITY_CHECK"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-void

    .line 251
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setStatic(Z)V
    .registers 5

    .line 138
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "STATIC"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void

    .line 138
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setTarget(Ljava/io/File;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    .line 303
    return-void
.end method

.method public setUnicodeinput(Z)V
    .registers 5

    .line 195
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "UNICODE_INPUT"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void

    .line 195
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setUsercharstream(Z)V
    .registers 5

    .line 227
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "USER_CHAR_STREAM"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void

    .line 227
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setUsertokenmanager(Z)V
    .registers 5

    .line 219
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-string v2, "USER_TOKEN_MANAGER"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void

    .line 219
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
