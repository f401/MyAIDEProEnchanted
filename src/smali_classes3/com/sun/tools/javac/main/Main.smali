.class public Lcom/sun/tools/javac/main/Main;
.super Ljava/lang/Object;
.source "Main.java"


# static fields
.field public static final EXIT_ABNORMAL:I = 0x4

.field public static final EXIT_CMDERR:I = 0x2

.field public static final EXIT_ERROR:I = 0x1

.field public static final EXIT_OK:I = 0x0

.field public static final EXIT_SYSERR:I = 0x3

.field private static final javacBundleName:Ljava/lang/String; = "com.sun.tools.javac.resources.javac"

.field private static messages:Lcom/sun/tools/javac/util/JavacMessages;


# instance fields
.field apiMode:Z

.field public classnames:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private diagnosticListener:Ljavax/tools/DiagnosticListener;

.field private fileManager:Ljavax/tools/JavaFileManager;

.field public filenames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private options:Lcom/sun/tools/javac/util/Options;

.field out:Ljava/io/PrintWriter;

.field ownName:Ljava/lang/String;

.field private recognizedOptions:[Lcom/sun/tools/javac/main/JavacOption$Option;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 160
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/main/Main;-><init>(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v1, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 100
    iput-object v1, p0, Lcom/sun/tools/javac/main/Main;->classnames:Lcom/sun/tools/javac/util/ListBuffer;

    .line 114
    new-instance v0, Lcom/sun/tools/javac/main/Main$1;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/main/Main$1;-><init>(Lcom/sun/tools/javac/main/Main;)V

    invoke-static {v0}, Lcom/sun/tools/javac/main/RecognizedOptions;->getJavaCompilerOptions(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)[Lcom/sun/tools/javac/main/JavacOption$Option;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/main/Main;->recognizedOptions:[Lcom/sun/tools/javac/main/JavacOption$Option;

    .line 152
    iput-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    .line 167
    iput-object p1, p0, Lcom/sun/tools/javac/main/Main;->ownName:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    .line 169
    return-void
.end method

.method private checkDirectory(Lcom/sun/tools/javac/main/OptionName;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    iget-object v2, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v2

    .line 379
    if-nez v2, :cond_1

    .line 390
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 383
    const-string v3, "err.dir.not.found"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/sun/tools/javac/main/Main;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 384
    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 387
    const-string v3, "err.file.not.directory"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/sun/tools/javac/main/Main;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 388
    goto :goto_0
.end method

.method public static varargs getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 178
    :try_start_0
    sget-object v0, Lcom/sun/tools/javac/main/Main;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/sun/tools/javac/util/JavacMessages;

    const-string v1, "com.sun.tools.javac.resources.javac"

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/JavacMessages;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/Main;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    .line 180
    :cond_0
    sget-object v0, Lcom/sun/tools/javac/main/Main;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javac."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sun/tools/javac/util/JavacMessages;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Fatal Error: Resource for javac is missing"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static useRawMessages(Z)V
    .registers 3

    .line 187
    if-eqz p0, :cond_0

    .line 188
    new-instance v0, Lcom/sun/tools/javac/main/Main$2;

    const-string v1, "com.sun.tools.javac.resources.javac"

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/main/Main$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/Main;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v0, Lcom/sun/tools/javac/util/JavacMessages;

    const-string v1, "com.sun.tools.javac.resources.javac"

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/JavacMessages;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/Main;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    goto :goto_0
.end method


# virtual methods
.method apMessage(Lcom/sun/tools/javac/processing/AnnotationProcessingError;)V
    .registers 5

    .line 618
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    .line 619
    const-string v1, "msg.proc.annotation.uncaught.exception"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 618
    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p1}, Lcom/sun/tools/javac/processing/AnnotationProcessingError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 621
    return-void
.end method

.method bugMessage(Ljava/lang/Throwable;)V
    .registers 7

    .line 577
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    .line 578
    invoke-static {}, Lcom/sun/tools/javac/main/JavaCompiler;->version()Ljava/lang/String;

    move-result-object v1

    .line 577
    const-string v2, "msg.bug"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 580
    return-void
.end method

.method public compile([Ljava/lang/String;)I
    .registers 5

    .line 399
    new-instance v0, Lcom/sun/tools/javac/util/Context;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context;-><init>()V

    .line 400
    invoke-static {v0}, Lcom/sun/tools/javac/file/JavacFileManager;->preRegister(Lcom/sun/tools/javac/util/Context;)V

    .line 401
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/main/Main;->compile([Ljava/lang/String;Lcom/sun/tools/javac/util/Context;)I

    move-result v1

    .line 402
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->fileManager:Ljavax/tools/JavaFileManager;

    instance-of v2, v0, Lcom/sun/tools/javac/file/JavacFileManager;

    if-eqz v2, :cond_0

    .line 404
    check-cast v0, Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/JavacFileManager;->close()V

    .line 406
    :cond_0
    return v1
.end method

.method public compile([Ljava/lang/String;Lcom/sun/tools/javac/util/Context;)I
    .registers 5

    .line 410
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/tools/javac/main/Main;->compile([Ljava/lang/String;Lcom/sun/tools/javac/util/Context;Lcom/sun/tools/javac/util/List;Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public compile([Ljava/lang/String;Lcom/sun/tools/javac/util/Context;Lcom/sun/tools/javac/util/List;Ljava/lang/Iterable;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/util/Context;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/annotation/processing/Processor;",
            ">;)I"
        }
    .end annotation

    .line 422
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/main/Main;->compile([Ljava/lang/String;[Ljava/lang/String;Lcom/sun/tools/javac/util/Context;Lcom/sun/tools/javac/util/List;Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public compile([Ljava/lang/String;[Ljava/lang/String;Lcom/sun/tools/javac/util/Context;Lcom/sun/tools/javac/util/List;Ljava/lang/Iterable;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/util/Context;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/annotation/processing/Processor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 430
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    if-nez v1, :cond_0

    .line 431
    invoke-static {p3}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    .line 433
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 434
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/main/Main;->classnames:Lcom/sun/tools/javac/util/ListBuffer;

    .line 442
    :try_start_0
    array-length v1, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_28
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_26
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_0 .. :try_end_0} :catch_24
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_0 .. :try_end_0} :catch_22
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_21
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_0 .. :try_end_0} :catch_33
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_8

    if-eqz p2, :cond_1

    :try_start_1
    array-length v1, p2

    if-nez v1, :cond_8

    .line 444
    :cond_1
    invoke-virtual {p4}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 445
    invoke-virtual {p0}, Lcom/sun/tools/javac/main/Main;->help()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_1 .. :try_end_1} :catch_49
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 567
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    .line 569
    :goto_0
    return v0

    .line 545
    :catch_0
    move-exception v1

    move-object v0, v3

    :goto_1
    move-object v2, v0

    .line 548
    :goto_2
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 560
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 562
    :try_start_3
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_3
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_3 .. :try_end_3} :catch_2c

    .line 567
    :cond_2
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    .line 569
    throw v0

    .line 540
    :catch_1
    move-exception v1

    move-object v0, v3

    :goto_3
    move-object v2, v0

    .line 541
    :goto_4
    :try_start_4
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/Main;->apiMode:Z

    if-nez v0, :cond_21

    .line 543
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/Main;->apMessage(Lcom/sun/tools/javac/processing/AnnotationProcessingError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 544
    if-eqz v2, :cond_3

    .line 562
    :try_start_5
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_5
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_5 .. :try_end_5} :catch_23

    .line 567
    :cond_3
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v5

    .line 544
    goto :goto_0

    .line 537
    :catch_2
    move-exception v1

    move-object v0, v3

    :goto_5
    move-object v2, v0

    .line 538
    :goto_6
    :try_start_6
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/Main;->feMessage(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 539
    if-eqz v2, :cond_4

    .line 562
    :try_start_7
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_7
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_7 .. :try_end_7} :catch_25

    .line 567
    :cond_4
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v5

    .line 539
    goto :goto_0

    .line 534
    :catch_3
    move-exception v1

    move-object v0, v3

    :goto_7
    move-object v2, v0

    .line 535
    :goto_8
    :try_start_8
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/Main;->resourceMessage(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 536
    if-eqz v2, :cond_5

    .line 562
    :try_start_9
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_9
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_9 .. :try_end_9} :catch_27

    .line 567
    :cond_5
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v5

    .line 536
    goto :goto_0

    .line 531
    :catch_4
    move-exception v1

    move-object v0, v3

    :goto_9
    move-object v2, v0

    .line 532
    :goto_a
    :try_start_a
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/Main;->resourceMessage(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 533
    if-eqz v2, :cond_6

    .line 562
    :try_start_b
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_b
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_b .. :try_end_b} :catch_29

    .line 567
    :cond_6
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v5

    .line 533
    goto :goto_0

    .line 528
    :catch_5
    move-exception v1

    move-object v0, v3

    :goto_b
    move-object v2, v0

    .line 529
    :goto_c
    :try_start_c
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/Main;->ioMessage(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 530
    if-eqz v2, :cond_7

    .line 562
    :try_start_d
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_d
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_d .. :try_end_d} :catch_2b

    .line 567
    :cond_7
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v5

    .line 530
    goto :goto_0

    .line 451
    :cond_8
    :try_start_e
    invoke-static {p1}, Lcom/sun/tools/javac/main/CommandLine;->parse([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/main/Main;->processArgs([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_28
    .catch Ljava/lang/StackOverflowError; {:try_start_e .. :try_end_e} :catch_26
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_e .. :try_end_e} :catch_24
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_e .. :try_end_e} :catch_22
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_e .. :try_end_e} :catch_21
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_e .. :try_end_e} :catch_33
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-result-object v7

    .line 452
    if-nez v7, :cond_9

    .line 567
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    goto :goto_0

    .line 455
    :cond_9
    :try_start_f
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_28
    .catch Ljava/lang/StackOverflowError; {:try_start_f .. :try_end_f} :catch_26
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_f .. :try_end_f} :catch_24
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_f .. :try_end_f} :catch_22
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_f .. :try_end_f} :catch_21
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_f .. :try_end_f} :catch_33
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-result v1

    if-eqz v1, :cond_d

    :try_start_10
    invoke-virtual {p4}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->classnames:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 457
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->HELP:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->X:Lcom/sun/tools/javac/main/OptionName;

    .line 458
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->VERSION:Lcom/sun/tools/javac/main/OptionName;

    .line 459
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->FULLVERSION:Lcom/sun/tools/javac/main/OptionName;

    .line 460
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/StackOverflowError; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_10 .. :try_end_10} :catch_49
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    move-result v1

    if-eqz v1, :cond_b

    .line 567
    :cond_a
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v4

    .line 461
    goto/16 :goto_0

    .line 462
    :cond_b
    :try_start_11
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    invoke-static {v1}, Lcom/sun/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested(Lcom/sun/tools/javac/util/Options;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 463
    const-string v1, "err.no.source.files.classes"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/main/Main;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/StackOverflowError; {:try_start_11 .. :try_end_11} :catch_3
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_11 .. :try_end_11} :catch_2
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_11 .. :try_end_11} :catch_1
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_11 .. :try_end_11} :catch_49
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 567
    :goto_d
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    goto/16 :goto_0

    .line 465
    :cond_c
    :try_start_12
    const-string v1, "err.no.source.files"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/main/Main;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/StackOverflowError; {:try_start_12 .. :try_end_12} :catch_3
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_12 .. :try_end_12} :catch_2
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_12 .. :try_end_12} :catch_1
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_12 .. :try_end_12} :catch_49
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto :goto_d

    .line 469
    :catch_6
    move-exception v0

    .line 470
    :try_start_13
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sun/tools/javac/main/Main;->ownName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 471
    const-string v4, "err.file.not.found"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v6}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v1, v0}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_1e
    .catch Ljava/lang/StackOverflowError; {:try_start_13 .. :try_end_13} :catch_1d
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_13 .. :try_end_13} :catch_1c
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_13 .. :try_end_13} :catch_1b
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_13 .. :try_end_13} :catch_1a
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_13 .. :try_end_13} :catch_19
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 567
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v5

    .line 473
    goto/16 :goto_0

    .line 474
    :cond_d
    :try_start_14
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "stdout"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_28
    .catch Ljava/lang/StackOverflowError; {:try_start_14 .. :try_end_14} :catch_26
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_14 .. :try_end_14} :catch_24
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_14 .. :try_end_14} :catch_22
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_14 .. :try_end_14} :catch_21
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_14 .. :try_end_14} :catch_33
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-result v0

    .line 477
    if-eqz v0, :cond_e

    .line 478
    :try_start_15
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 479
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/lang/StackOverflowError; {:try_start_15 .. :try_end_15} :catch_3
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_15 .. :try_end_15} :catch_2
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_15 .. :try_end_15} :catch_1
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_15 .. :try_end_15} :catch_49
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 482
    :cond_e
    :try_start_16
    sget-object v0, Lcom/sun/tools/javac/util/Log;->outKey:Lcom/sun/tools/javac/util/Context$Key;

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {p3, v0, v1}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->diagnosticListener:Ljavax/tools/DiagnosticListener;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_28
    .catch Ljava/lang/StackOverflowError; {:try_start_16 .. :try_end_16} :catch_26
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_16 .. :try_end_16} :catch_24
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_16 .. :try_end_16} :catch_22
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_16 .. :try_end_16} :catch_21
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_16 .. :try_end_16} :catch_33
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v0, :cond_f

    .line 485
    :try_start_17
    const-class v0, Ljavax/tools/DiagnosticListener;

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->diagnosticListener:Ljavax/tools/DiagnosticListener;

    invoke-virtual {p3, v0, v1}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/lang/StackOverflowError; {:try_start_17 .. :try_end_17} :catch_3
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_17 .. :try_end_17} :catch_2
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_17 .. :try_end_17} :catch_1
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_17 .. :try_end_17} :catch_49
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 490
    :cond_f
    :try_start_18
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "nonBatchMode"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isUnset(Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_28
    .catch Ljava/lang/StackOverflowError; {:try_start_18 .. :try_end_18} :catch_26
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_18 .. :try_end_18} :catch_24
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_18 .. :try_end_18} :catch_22
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_18 .. :try_end_18} :catch_21
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_18 .. :try_end_18} :catch_33
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    move-result v0

    if-eqz v0, :cond_12

    .line 491
    :try_start_19
    const-string v0, "nonBatchMode"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v6

    .line 492
    :goto_e
    if-eqz v0, :cond_10

    .line 493
    invoke-static {p3}, Lcom/sun/tools/javac/file/CacheFSInfo;->preRegister(Lcom/sun/tools/javac/util/Context;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_19} :catch_4
    .catch Ljava/lang/StackOverflowError; {:try_start_19 .. :try_end_19} :catch_3
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_19 .. :try_end_19} :catch_2
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_19 .. :try_end_19} :catch_1
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_19 .. :try_end_19} :catch_49
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 495
    :cond_10
    :try_start_1a
    const-class v0, Ljavax/tools/JavaFileManager;

    invoke-virtual {p3, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileManager;

    iput-object v0, p0, Lcom/sun/tools/javac/main/Main;->fileManager:Ljavax/tools/JavaFileManager;

    .line 497
    invoke-static {p3}, Lcom/sun/tools/javac/main/JavaCompiler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_1a} :catch_28
    .catch Ljava/lang/StackOverflowError; {:try_start_1a .. :try_end_1a} :catch_26
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_1a .. :try_end_1a} :catch_24
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_1a .. :try_end_1a} :catch_22
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_1a .. :try_end_1a} :catch_21
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_1a .. :try_end_1a} :catch_33
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    move-result-object v0

    .line 498
    if-nez v0, :cond_13

    .line 560
    if-eqz v0, :cond_11

    .line 562
    :try_start_1b
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_1b
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_1b .. :try_end_1b} :catch_7

    .line 567
    :cond_11
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v5

    .line 498
    goto/16 :goto_0

    :cond_12
    move v0, v4

    .line 491
    goto :goto_e

    .line 563
    :catch_7
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 500
    :cond_13
    :try_start_1c
    invoke-static {p3}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v8

    .line 502
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_2d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_1c} :catch_2e
    .catch Ljava/lang/StackOverflowError; {:try_start_1c .. :try_end_1c} :catch_2f
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_1c .. :try_end_1c} :catch_30
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_1c .. :try_end_1c} :catch_31
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_1c .. :try_end_1c} :catch_32
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_1c .. :try_end_1c} :catch_34
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    move-result v1

    if-nez v1, :cond_16

    .line 504
    :try_start_1d
    invoke-static {p3}, Lcom/sun/tools/javac/main/JavaCompiler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_3d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_1d} :catch_3f
    .catch Ljava/lang/StackOverflowError; {:try_start_1d .. :try_end_1d} :catch_41
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_1d .. :try_end_1d} :catch_43
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_1d .. :try_end_1d} :catch_45
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_1d .. :try_end_1d} :catch_47
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_1d .. :try_end_1d} :catch_4a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    move-result-object v2

    .line 505
    :try_start_1e
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 506
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->fileManager:Ljavax/tools/JavaFileManager;

    check-cast v0, Lcom/sun/tools/javac/file/JavacFileManager;

    .line 507
    invoke-virtual {v0, v7}, Lcom/sun/tools/javac/file/JavacFileManager;->getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    .line 508
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_f

    .line 509
    :cond_14
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_3e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_1e} :catch_40
    .catch Ljava/lang/StackOverflowError; {:try_start_1e .. :try_end_1e} :catch_42
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_1e .. :try_end_1e} :catch_44
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_1e .. :try_end_1e} :catch_46
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_1e .. :try_end_1e} :catch_48
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_1e .. :try_end_1e} :catch_4b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    move-result-object v1

    :goto_10
    :try_start_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    .line 510
    invoke-virtual {p4, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_1f} :catch_17
    .catch Ljava/lang/StackOverflowError; {:try_start_1f .. :try_end_1f} :catch_16
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_1f .. :try_end_1f} :catch_15
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_1f .. :try_end_1f} :catch_14
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_1f .. :try_end_1f} :catch_13
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_1f .. :try_end_1f} :catch_3b
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    move-result-object p4

    goto :goto_10

    :cond_15
    move-object v0, v2

    .line 512
    :cond_16
    :try_start_20
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->classnames:Lcom/sun/tools/javac/util/ListBuffer;

    .line 513
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_35
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_20} :catch_36
    .catch Ljava/lang/StackOverflowError; {:try_start_20 .. :try_end_20} :catch_37
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_20 .. :try_end_20} :catch_38
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_20 .. :try_end_20} :catch_39
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_20 .. :try_end_20} :catch_3a
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_20 .. :try_end_20} :catch_3c
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    move-result-object v1

    .line 512
    :try_start_21
    invoke-virtual {v0, p4, v1, p5}, Lcom/sun/tools/javac/main/JavaCompiler;->compile(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Ljava/lang/Iterable;)V

    .line 516
    iget-object v1, v8, Lcom/sun/tools/javac/util/Log;->expectDiagKeys:Ljava/util/Set;

    if-eqz v1, :cond_1a

    .line 517
    iget-object v1, v8, Lcom/sun/tools/javac/util/Log;->expectDiagKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 518
    iget-object v1, v8, Lcom/sun/tools/javac/util/Log;->noticeWriter:Ljava/io/PrintWriter;

    const-string v2, "all expected diagnostics found"

    invoke-static {v1, v2}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_21} :catch_11
    .catch Ljava/lang/StackOverflowError; {:try_start_21 .. :try_end_21} :catch_10
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_21 .. :try_end_21} :catch_f
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_21 .. :try_end_21} :catch_e
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_21 .. :try_end_21} :catch_d
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_21 .. :try_end_21} :catch_c
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    .line 519
    if-eqz v0, :cond_17

    .line 562
    :try_start_22
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_22
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_22 .. :try_end_22} :catch_8

    .line 567
    :cond_17
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v4

    .line 519
    goto/16 :goto_0

    .line 563
    :catch_8
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 521
    :cond_18
    :try_start_23
    iget-object v1, v8, Lcom/sun/tools/javac/util/Log;->noticeWriter:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected diagnostic keys not found: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/sun/tools/javac/util/Log;->expectDiagKeys:Ljava/util/Set;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23 .. :try_end_23} :catch_11
    .catch Ljava/lang/StackOverflowError; {:try_start_23 .. :try_end_23} :catch_10
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_23 .. :try_end_23} :catch_f
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_23 .. :try_end_23} :catch_e
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_23 .. :try_end_23} :catch_d
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_23 .. :try_end_23} :catch_c
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    .line 522
    if-eqz v0, :cond_19

    .line 562
    :try_start_24
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_24
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_24 .. :try_end_24} :catch_9

    .line 567
    :cond_19
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v6

    .line 522
    goto/16 :goto_0

    .line 563
    :catch_9
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 526
    :cond_1a
    :try_start_25
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->errorCount()I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_25 .. :try_end_25} :catch_11
    .catch Ljava/lang/StackOverflowError; {:try_start_25 .. :try_end_25} :catch_10
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_25 .. :try_end_25} :catch_f
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_25 .. :try_end_25} :catch_e
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_25 .. :try_end_25} :catch_d
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_25 .. :try_end_25} :catch_c
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    move-result v1

    if-eqz v1, :cond_1c

    .line 527
    if-eqz v0, :cond_1b

    .line 562
    :try_start_26
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_26
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_26 .. :try_end_26} :catch_a

    .line 567
    :cond_1b
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v6

    .line 527
    goto/16 :goto_0

    .line 563
    :catch_a
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 560
    :cond_1c
    if-eqz v0, :cond_1d

    .line 562
    :try_start_27
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_27
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_27 .. :try_end_27} :catch_b

    .line 567
    :cond_1d
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v4

    .line 569
    goto/16 :goto_0

    .line 563
    :catch_b
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 551
    :catchall_1
    move-exception v1

    move-object v2, v0

    .line 555
    :goto_11
    if-eqz v2, :cond_1e

    :try_start_28
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    .line 556
    const-string v4, "dev"

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 557
    :cond_1e
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/Main;->bugMessage(Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 558
    :cond_1f
    if-eqz v2, :cond_20

    .line 562
    :try_start_29
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_29
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_29 .. :try_end_29} :catch_20

    .line 567
    :cond_20
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    .line 558
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 549
    :catch_c
    move-exception v1

    move-object v2, v0

    .line 550
    :goto_12
    :try_start_2a
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/PropagatedException;->getCause()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 545
    :catch_d
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2

    .line 540
    :catch_e
    move-exception v1

    move-object v2, v0

    goto/16 :goto_4

    .line 537
    :catch_f
    move-exception v1

    move-object v2, v0

    goto/16 :goto_6

    .line 534
    :catch_10
    move-exception v1

    move-object v2, v0

    goto/16 :goto_8

    .line 531
    :catch_11
    move-exception v1

    move-object v2, v0

    goto/16 :goto_a

    .line 528
    :catch_12
    move-exception v1

    move-object v2, v0

    goto/16 :goto_c

    .line 545
    :catch_13
    move-exception v1

    move-object v0, v2

    :goto_13
    move-object v2, v0

    goto/16 :goto_2

    .line 540
    :catch_14
    move-exception v1

    move-object v0, v2

    :goto_14
    move-object v2, v0

    goto/16 :goto_4

    .line 537
    :catch_15
    move-exception v1

    move-object v0, v2

    :goto_15
    move-object v2, v0

    goto/16 :goto_6

    .line 534
    :catch_16
    move-exception v1

    move-object v0, v2

    :goto_16
    move-object v2, v0

    goto/16 :goto_8

    .line 531
    :catch_17
    move-exception v1

    move-object v0, v2

    :goto_17
    move-object v2, v0

    goto/16 :goto_a

    .line 528
    :catch_18
    move-exception v1

    move-object v0, v2

    :goto_18
    move-object v2, v0

    goto/16 :goto_c

    .line 551
    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto :goto_11

    .line 549
    :catch_19
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto :goto_12

    .line 545
    :catch_1a
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_2

    .line 540
    :catch_1b
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_4

    .line 537
    :catch_1c
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_6

    .line 534
    :catch_1d
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_8

    .line 531
    :catch_1e
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_a

    .line 528
    :catch_1f
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_c

    .line 563
    :catch_20
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 545
    :catch_21
    move-exception v1

    move-object v0, v3

    :goto_19
    move-object v2, v0

    goto/16 :goto_2

    .line 540
    :catch_22
    move-exception v1

    move-object v0, v3

    :goto_1a
    move-object v2, v0

    goto/16 :goto_4

    .line 563
    :catch_23
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 542
    :cond_21
    :try_start_2b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/sun/tools/javac/processing/AnnotationProcessingError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 537
    :catch_24
    move-exception v1

    move-object v0, v3

    :goto_1b
    move-object v2, v0

    goto/16 :goto_6

    .line 563
    :catch_25
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 534
    :catch_26
    move-exception v1

    move-object v0, v3

    :goto_1c
    move-object v2, v0

    goto/16 :goto_8

    .line 563
    :catch_27
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 531
    :catch_28
    move-exception v1

    move-object v0, v3

    :goto_1d
    move-object v2, v0

    goto/16 :goto_a

    .line 563
    :catch_29
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 528
    :catch_2a
    move-exception v1

    move-object v0, v3

    :goto_1e
    move-object v2, v0

    goto/16 :goto_c

    .line 563
    :catch_2b
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 563
    :catch_2c
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 528
    :catch_2d
    move-exception v1

    goto :goto_1e

    .line 531
    :catch_2e
    move-exception v1

    goto :goto_1d

    .line 534
    :catch_2f
    move-exception v1

    goto :goto_1c

    .line 537
    :catch_30
    move-exception v1

    goto :goto_1b

    .line 540
    :catch_31
    move-exception v1

    goto :goto_1a

    .line 545
    :catch_32
    move-exception v1

    goto :goto_19

    .line 549
    :catch_33
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_12

    :catch_34
    move-exception v1

    move-object v2, v0

    goto/16 :goto_12

    .line 551
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_11

    :catchall_4
    move-exception v1

    move-object v2, v0

    goto/16 :goto_11

    .line 528
    :catch_35
    move-exception v1

    goto/16 :goto_18

    .line 531
    :catch_36
    move-exception v1

    goto/16 :goto_17

    .line 534
    :catch_37
    move-exception v1

    goto/16 :goto_16

    .line 537
    :catch_38
    move-exception v1

    goto/16 :goto_15

    .line 540
    :catch_39
    move-exception v1

    goto/16 :goto_14

    .line 545
    :catch_3a
    move-exception v1

    goto/16 :goto_13

    .line 549
    :catch_3b
    move-exception v0

    move-object v1, v0

    goto/16 :goto_12

    :catch_3c
    move-exception v1

    move-object v2, v0

    goto/16 :goto_12

    .line 551
    :catchall_5
    move-exception v0

    move-object v1, v0

    goto/16 :goto_11

    :catchall_6
    move-exception v1

    move-object v2, v0

    goto/16 :goto_11

    .line 528
    :catch_3d
    move-exception v1

    goto/16 :goto_b

    :catch_3e
    move-exception v1

    move-object v0, v2

    goto/16 :goto_b

    .line 531
    :catch_3f
    move-exception v1

    goto/16 :goto_9

    :catch_40
    move-exception v1

    move-object v0, v2

    goto/16 :goto_9

    .line 534
    :catch_41
    move-exception v1

    goto/16 :goto_7

    :catch_42
    move-exception v1

    move-object v0, v2

    goto/16 :goto_7

    .line 537
    :catch_43
    move-exception v1

    goto/16 :goto_5

    :catch_44
    move-exception v1

    move-object v0, v2

    goto/16 :goto_5

    .line 540
    :catch_45
    move-exception v1

    goto/16 :goto_3

    :catch_46
    move-exception v1

    move-object v0, v2

    goto/16 :goto_3

    .line 545
    :catch_47
    move-exception v1

    goto/16 :goto_1

    :catch_48
    move-exception v1

    move-object v0, v2

    goto/16 :goto_1

    .line 549
    :catch_49
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_12

    :catch_4a
    move-exception v1

    move-object v2, v0

    goto/16 :goto_12

    :catch_4b
    move-exception v0

    move-object v1, v0

    goto/16 :goto_12

    .line 551
    :catchall_7
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_11

    :catchall_8
    move-exception v1

    move-object v2, v0

    goto/16 :goto_11

    :catchall_9
    move-exception v0

    move-object v1, v0

    goto/16 :goto_11
.end method

.method varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    .line 233
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/Main;->apiMode:Z

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/main/Main;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    const-string v1, "msg.usage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/tools/javac/main/Main;->ownName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 239
    return-void

    .line 234
    :cond_0
    invoke-static {p1, p2}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/sun/tools/javac/util/PropagatedException;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/sun/tools/javac/util/PropagatedException;-><init>(Ljava/lang/RuntimeException;)V

    throw v1
.end method

.method feMessage(Ljava/lang/Throwable;)V
    .registers 4

    .line 586
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 587
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "dev"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 590
    :cond_0
    return-void
.end method

.method public getDiagnosticListener()Ljavax/tools/DiagnosticListener;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->diagnosticListener:Ljavax/tools/DiagnosticListener;

    return-object v0
.end method

.method public getOption(Ljava/lang/String;)Lcom/sun/tools/javac/main/JavacOption$Option;
    .registers 7

    .line 250
    iget-object v2, p0, Lcom/sun/tools/javac/main/Main;->recognizedOptions:[Lcom/sun/tools/javac/main/JavacOption$Option;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 251
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/main/JavacOption$Option;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    :goto_1
    return-object v0

    .line 250
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 254
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method help()V
    .registers 6

    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    const-string v2, "msg.usage.header"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sun/tools/javac/main/Main;->ownName:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->recognizedOptions:[Lcom/sun/tools/javac/main/JavacOption$Option;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 213
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/main/JavacOption$Option;->help(Ljava/io/PrintWriter;)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 216
    return-void
.end method

.method ioMessage(Ljava/lang/Throwable;)V
    .registers 5

    .line 600
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    const-string v1, "msg.io"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 602
    return-void
.end method

.method public processArgs([Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/main/Main;->processArgs([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public processArgs([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 278
    move v0, v1

    .line 279
    :cond_0
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_6

    .line 280
    aget-object v5, p1, v0

    .line 281
    add-int/lit8 v2, v0, 0x1

    .line 285
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 289
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_1

    move v0, v1

    .line 290
    :goto_1
    iget-object v4, p0, Lcom/sun/tools/javac/main/Main;->recognizedOptions:[Lcom/sun/tools/javac/main/JavacOption$Option;

    array-length v6, v4

    if-ge v0, v6, :cond_13

    .line 291
    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/main/JavacOption$Option;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 292
    iget-object v4, p0, Lcom/sun/tools/javac/main/Main;->recognizedOptions:[Lcom/sun/tools/javac/main/JavacOption$Option;

    aget-object v0, v4, v0

    move-object v4, v0

    .line 298
    :goto_2
    if-nez v4, :cond_3

    .line 299
    const-string v0, "err.invalid.flag"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v5, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/main/Main;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 373
    :goto_3
    return-object v0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->recognizedOptions:[Lcom/sun/tools/javac/main/JavacOption$Option;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 290
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    :cond_3
    invoke-virtual {v4}, Lcom/sun/tools/javac/main/JavacOption$Option;->hasArg()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 304
    array-length v0, p1

    if-ne v2, v0, :cond_4

    .line 305
    const-string v0, "err.req.arg"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v5, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/main/Main;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 306
    goto :goto_3

    .line 308
    :cond_4
    aget-object v6, p1, v2

    .line 309
    add-int/lit8 v0, v2, 0x1

    .line 310
    iget-object v2, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    invoke-virtual {v4, v2, v5, v6}, Lcom/sun/tools/javac/main/JavacOption$Option;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v3

    .line 311
    goto :goto_3

    .line 313
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    invoke-virtual {v4, v0, v5}, Lcom/sun/tools/javac/main/JavacOption$Option;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v3

    .line 314
    goto :goto_3

    .line 318
    :cond_6
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->classnames:Lcom/sun/tools/javac/util/ListBuffer;

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    .line 319
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    .line 322
    :cond_7
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->D:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/main/Main;->checkDirectory(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v3

    .line 323
    goto :goto_3

    .line 324
    :cond_8
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->S:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/main/Main;->checkDirectory(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v3

    .line 325
    goto :goto_3

    .line 327
    :cond_9
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->SOURCE:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v4

    .line 328
    if-eqz v4, :cond_a

    .line 329
    invoke-static {v4}, Lcom/sun/tools/javac/code/Source;->lookup(Ljava/lang/String;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    .line 331
    :goto_4
    iget-object v2, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v5, Lcom/sun/tools/javac/main/OptionName;->TARGET:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v5

    .line 332
    if-eqz v5, :cond_b

    .line 333
    invoke-static {v5}, Lcom/sun/tools/javac/jvm/Target;->lookup(Ljava/lang/String;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v2

    .line 340
    :goto_5
    iget-object v6, v2, Lcom/sun/tools/javac/jvm/Target;->name:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 341
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->requiredTarget()Lcom/sun/tools/javac/jvm/Target;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_11

    .line 342
    if-eqz v5, :cond_d

    .line 343
    if-nez v4, :cond_c

    .line 344
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->requiredTarget()Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Target;->name:Ljava/lang/String;

    const-string v2, "warn.target.default.source.conflict"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v5, v4, v1

    aput-object v0, v4, v7

    invoke-virtual {p0, v2, v4}, Lcom/sun/tools/javac/main/Main;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    move-object v0, v3

    .line 352
    goto/16 :goto_3

    .line 330
    :cond_a
    sget-object v0, Lcom/sun/tools/javac/code/Source;->DEFAULT:Lcom/sun/tools/javac/code/Source;

    goto :goto_4

    .line 334
    :cond_b
    sget-object v2, Lcom/sun/tools/javac/jvm/Target;->DEFAULT:Lcom/sun/tools/javac/jvm/Target;

    goto :goto_5

    .line 348
    :cond_c
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->requiredTarget()Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Target;->name:Ljava/lang/String;

    const-string v2, "warn.source.target.conflict"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v1

    aput-object v0, v5, v7

    invoke-virtual {p0, v2, v5}, Lcom/sun/tools/javac/main/Main;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 354
    :cond_d
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->requiredTarget()Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    const-string v2, "-target"

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Target;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_e
    :goto_7
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "showClass"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_10

    .line 368
    const-string v1, "showClass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 369
    const-string v0, "com.sun.tools.javac.Main"

    .line 370
    :cond_f
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/Main;->showClass(Ljava/lang/String;)V

    .line 373
    :cond_10
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    goto/16 :goto_3

    .line 358
    :cond_11
    if-nez v5, :cond_e

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowGenerics()Z

    move-result v0

    if-nez v0, :cond_e

    .line 359
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_4:Lcom/sun/tools/javac/jvm/Target;

    .line 360
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    const-string v2, "-target"

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Target;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    move v0, v2

    goto/16 :goto_0

    :cond_13
    move-object v4, v3

    goto/16 :goto_2
.end method

.method resourceMessage(Ljava/lang/Throwable;)V
    .registers 5

    .line 608
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    const-string v1, "msg.resource"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 611
    return-void
.end method

.method public setAPIMode(Z)V
    .registers 2

    .line 264
    iput-boolean p1, p0, Lcom/sun/tools/javac/main/Main;->apiMode:Z

    .line 265
    return-void
.end method

.method public setDiagnosticListener(Ljavax/tools/DiagnosticListener;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/sun/tools/javac/main/Main;->diagnosticListener:Ljavax/tools/DiagnosticListener;

    .line 205
    return-void
.end method

.method public setOptions(Lcom/sun/tools/javac/util/Options;)V
    .registers 3

    .line 258
    if-eqz p1, :cond_0

    .line 260
    iput-object p1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    .line 261
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method showClass(Ljava/lang/String;)V
    .registers 10

    const/16 v4, 0x2f

    const/4 v0, 0x0

    .line 627
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javac: show class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 629
    if-nez v1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    const-string v1, "  class not found"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    :goto_0
    return-void

    .line 632
    :cond_0
    iget-object v2, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 637
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    const/16 v1, 0x2000

    :try_start_1
    new-array v1, v1, [B

    .line 642
    :cond_1
    invoke-virtual {v3, v1}, Ljava/security/DigestInputStream;->read([B)I

    move-result v4

    .line 643
    if-gtz v4, :cond_1

    .line 644
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 646
    :try_start_2
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    array-length v3, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-byte v4, v1, v0

    .line 650
    :try_start_3
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  MD5 checksum: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 652
    :catch_0
    move-exception v0

    .line 653
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  cannot compute digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 646
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 647
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 245
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/tools/javac/main/Main;->ownName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-static {p1, p2}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method xhelp()V
    .registers 5

    const/4 v1, 0x0

    .line 222
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sun/tools/javac/main/Main;->recognizedOptions:[Lcom/sun/tools/javac/main/JavacOption$Option;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 223
    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/main/JavacOption$Option;->xhelp(Ljava/io/PrintWriter;)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 226
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    const-string v2, "msg.usage.nonstandard.footer"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/sun/tools/javac/main/Main;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 227
    return-void
.end method
