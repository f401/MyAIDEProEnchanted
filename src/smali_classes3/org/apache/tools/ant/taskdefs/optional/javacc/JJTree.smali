.class public Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;
.super Lorg/apache/tools/ant/Task;
.source "JJTree.java"


# static fields
.field private static final BUILD_NODE_FILES:Ljava/lang/String; = "BUILD_NODE_FILES"

.field private static final DEFAULT_SUFFIX:Ljava/lang/String; = ".jj"

.field private static final MULTI:Ljava/lang/String; = "MULTI"

.field private static final NODE_DEFAULT_VOID:Ljava/lang/String; = "NODE_DEFAULT_VOID"

.field private static final NODE_FACTORY:Ljava/lang/String; = "NODE_FACTORY"

.field private static final NODE_PACKAGE:Ljava/lang/String; = "NODE_PACKAGE"

.field private static final NODE_PREFIX:Ljava/lang/String; = "NODE_PREFIX"

.field private static final NODE_SCOPE_HOOK:Ljava/lang/String; = "NODE_SCOPE_HOOK"

.field private static final NODE_USES_PARSER:Ljava/lang/String; = "NODE_USES_PARSER"

.field private static final OUTPUT_FILE:Ljava/lang/String; = "OUTPUT_FILE"

.field private static final STATIC:Ljava/lang/String; = "STATIC"

.field private static final VISITOR:Ljava/lang/String; = "VISITOR"

.field private static final VISITOR_EXCEPTION:Ljava/lang/String; = "VISITOR_EXCEPTION"


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

.field private outputFile:Ljava/lang/String;

.field private targetFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->optionalAttrs:Ljava/util/Map;

    .line 59
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->outputFile:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->outputDirectory:Ljava/io/File;

    .line 65
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->targetFile:Ljava/io/File;

    .line 66
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->javaccHome:Ljava/io/File;

    .line 68
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    .line 70
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->maxMemory:Ljava/lang/String;

    .line 210
    const-string v1, "java"

    invoke-static {v1}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJreExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->setVm(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private createOutputFileName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 v5, 0x5c

    const/16 v4, 0x2f

    .line 301
    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->validateOutputFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 305
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 306
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 308
    if-ltz v1, :cond_1

    .line 309
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 314
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jj"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    :cond_2
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->getDefaultOutputDirectory()Ljava/lang/String;

    move-result-object p3

    .line 332
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 317
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    const-string v3, ".jj"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jj"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jj"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private getDefaultOutputDirectory()Ljava/lang/String;
    .registers 4

    .line 392
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRoot(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 402
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 404
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_0
    return-object v0
.end method

.method private makeOutputFileRelative(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x2f

    const/4 v4, -0x1

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->getDefaultOutputDirectory()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 376
    add-int/lit8 v0, v0, 0x1

    .line 378
    :cond_0
    :goto_0
    if-le v0, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 379
    const-string v3, "/.."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 382
    if-eq v0, v4, :cond_0

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private validateOutputFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 349
    if-nez p1, :cond_1

    .line 350
    const/4 p1, 0x0

    .line 369
    :cond_0
    :goto_0
    return-object p1

    .line 353
    :cond_1
    if-nez p2, :cond_3

    .line 354
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->makeOutputFileRelative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 356
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->setOutputfile(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->getRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 364
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Drive letter in \'outputfile\' not supported: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public execute()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v7, 0x5c

    const/16 v6, 0x2f

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 221
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->optionalAttrs:Ljava/util/Map;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 224
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->targetFile:Ljava/io/File;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 231
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->outputDirectory:Ljava/io/File;

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-OUTPUT_DIRECTORY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->getDefaultOutputDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->targetFile:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->outputFile:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v8}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->createOutputFileName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->targetFile:Ljava/io/File;

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target is already built - skipping ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->targetFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->log(Ljava/lang/String;I)V

    .line 296
    :cond_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-OUTPUT_DIRECTORY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->outputDirectory:Ljava/io/File;

    .line 248
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->targetFile:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->outputFile:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->outputDirectory:Ljava/io/File;

    .line 253
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 251
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->createOutputFileName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->outputFile:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-OUTPUT_FILE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->outputFile:Ljava/lang/String;

    .line 265
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 268
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->targetFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->javaccHome:Ljava/io/File;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getArchiveFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 272
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Path$PathElement;->setPath(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->addJavaRuntime()V

    .line 275
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-static {v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getMainClass(Lorg/apache/tools/ant/types/Path;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->setClassname(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->maxMemory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->setMaxmemory(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createVmArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-Dinstall.root="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->javaccHome:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 282
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    invoke-direct {v1, p0, v4, v4}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    invoke-direct {v0, v1, v8}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 287
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->describeCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->log(Ljava/lang/String;I)V

    .line 288
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 291
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "JJTree failed."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Failed to launch JJTree"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 241
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'outputdirectory\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->outputDirectory:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a directory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Invalid target: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->targetFile:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic lambda$execute$0$JJTree(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 221
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public setBuildnodefiles(Z)V
    .registers 5

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->optionalAttrs:Ljava/util/Map;

    const-string v1, "BUILD_NODE_FILES"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public setJavacchome(Ljava/io/File;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->javaccHome:Ljava/io/File;

    .line 194
    return-void
.end method

.method public setMaxmemory(Ljava/lang/String;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->maxMemory:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setMulti(Z)V
    .registers 5

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->optionalAttrs:Ljava/util/Map;

    const-string v1, "MULTI"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public setNodedefaultvoid(Z)V
    .registers 5

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->optionalAttrs:Ljava/util/Map;

    const-string v1, "NODE_DEFAULT_VOID"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public setNodefactory(Z)V
    .registers 5

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->optionalAttrs:Ljava/util/Map;

    const-string v1, "NODE_FACTORY"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public setNodepackage(Ljava/lang/String;)V
    .registers 4

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->optionalAttrs:Ljava/util/Map;

    const-string v1, "NODE_PACKAGE"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public setNodeprefix(Ljava/lang/String;)V
    .registers 4

    .line 157
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->optionalAttrs:Ljava/util/Map;

    const-string v1, "NODE_PREFIX"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public setNodescopehook(Z)V
    .registers 5

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->optionalAttrs:Ljava/util/Map;

    const-string v1, "NODE_SCOPE_HOOK"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public setNodeusesparser(Z)V
    .registers 5

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->optionalAttrs:Ljava/util/Map;

    const-string v1, "NODE_USES_PARSER"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public setOutputdirectory(Ljava/io/File;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->outputDirectory:Ljava/io/File;

    .line 168
    return-void
.end method

.method public setOutputfile(Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->outputFile:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setStatic(Z)V
    .registers 5

    .line 125
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->optionalAttrs:Ljava/util/Map;

    const-string v1, "STATIC"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public setTarget(Ljava/io/File;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->targetFile:Ljava/io/File;

    .line 186
    return-void
.end method

.method public setVisitor(Z)V
    .registers 5

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->optionalAttrs:Ljava/util/Map;

    const-string v1, "VISITOR"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public setVisitorException(Ljava/lang/String;)V
    .registers 4

    .line 149
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJTree;->optionalAttrs:Ljava/util/Map;

    const-string v1, "VISITOR_EXCEPTION"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method
