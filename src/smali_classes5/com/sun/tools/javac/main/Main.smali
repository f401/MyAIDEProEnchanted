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
    if-nez v2, :cond_b

    .line 390
    :cond_a
    :goto_a
    return v0

    .line 381
    :cond_b
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_21

    .line 383
    const-string v3, "err.dir.not.found"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/sun/tools/javac/main/Main;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 384
    goto :goto_a

    .line 386
    :cond_21
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_a

    .line 387
    const-string v3, "err.file.not.directory"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/sun/tools/javac/main/Main;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 388
    goto :goto_a
.end method

.method public static varargs getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 178
    :try_start_0
    sget-object v0, Lcom/sun/tools/javac/main/Main;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    if-nez v0, :cond_d

    .line 179
    new-instance v0, Lcom/sun/tools/javac/util/JavacMessages;

    const-string v1, "com.sun.tools.javac.resources.javac"

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/JavacMessages;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/Main;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    .line 180
    :cond_d
    sget-object v0, Lcom/sun/tools/javac/main/Main;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javac."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sun/tools/javac/util/JavacMessages;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_23
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_23} :catch_25

    move-result-object v0

    return-object v0

    .line 181
    :catch_25
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
    if-eqz p0, :cond_c

    .line 188
    new-instance v0, Lcom/sun/tools/javac/main/Main$2;

    const-string v1, "com.sun.tools.javac.resources.javac"

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/main/Main$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/Main;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    .line 197
    :goto_b
    return-void

    .line 195
    :cond_c
    new-instance v0, Lcom/sun/tools/javac/util/JavacMessages;

    const-string v1, "com.sun.tools.javac.resources.javac"

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/JavacMessages;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/main/Main;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    goto :goto_b
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

    if-eqz v2, :cond_17

    .line 404
    check-cast v0, Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/JavacFileManager;->close()V

    .line 406
    :cond_17
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

    if-nez v1, :cond_f

    .line 431
    invoke-static {p3}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    .line 433
    :cond_f
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 434
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/main/Main;->classnames:Lcom/sun/tools/javac/util/ListBuffer;

    .line 442
    :try_start_1d
    array-length v1, p1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1e} :catch_374
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_1e} :catch_364
    .catch Ljava/lang/StackOverflowError; {:try_start_1d .. :try_end_1e} :catch_354
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_1d .. :try_end_1e} :catch_344
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_1d .. :try_end_1e} :catch_32a
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_1d .. :try_end_1e} :catch_325
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_1d .. :try_end_1e} :catch_39b
    .catchall {:try_start_1d .. :try_end_1e} :catchall_3a4

    if-nez v1, :cond_a4

    if-eqz p2, :cond_25

    :try_start_22
    array-length v1, p2

    if-nez v1, :cond_a4

    .line 444
    :cond_25
    invoke-virtual {p4}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 445
    invoke-virtual {p0}, Lcom/sun/tools/javac/main/Main;->help()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2e} :catch_93
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_2e} :catch_82
    .catch Ljava/lang/StackOverflowError; {:try_start_22 .. :try_end_2e} :catch_71
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_22 .. :try_end_2e} :catch_60
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_22 .. :try_end_2e} :catch_4b
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_22 .. :try_end_2e} :catch_33
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_22 .. :try_end_2e} :catch_3f9
    .catchall {:try_start_22 .. :try_end_2e} :catchall_406

    .line 567
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    .line 569
    :goto_32
    return v0

    .line 545
    :catch_33
    move-exception v1

    move-object v0, v3

    :goto_35
    move-object v2, v0

    .line 548
    :goto_36
    :try_start_36
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_40

    .line 560
    :catchall_40
    move-exception v0

    if-eqz v2, :cond_46

    .line 562
    :try_start_43
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_46
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_43 .. :try_end_46} :catch_384

    .line 567
    :cond_46
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    .line 569
    throw v0

    .line 540
    :catch_4b
    move-exception v1

    move-object v0, v3

    :goto_4d
    move-object v2, v0

    .line 541
    :goto_4e
    :try_start_4e
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/Main;->apiMode:Z

    if-nez v0, :cond_33a

    .line 543
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/Main;->apMessage(Lcom/sun/tools/javac/processing/AnnotationProcessingError;)V
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_40

    .line 544
    if-eqz v2, :cond_5a

    .line 562
    :try_start_57
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_5a
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_57 .. :try_end_5a} :catch_32f

    .line 567
    :cond_5a
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v5

    .line 544
    goto :goto_32

    .line 537
    :catch_60
    move-exception v1

    move-object v0, v3

    :goto_62
    move-object v2, v0

    .line 538
    :goto_63
    :try_start_63
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/Main;->feMessage(Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_40

    .line 539
    if-eqz v2, :cond_6b

    .line 562
    :try_start_68
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_6b
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_68 .. :try_end_6b} :catch_349

    .line 567
    :cond_6b
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v5

    .line 539
    goto :goto_32

    .line 534
    :catch_71
    move-exception v1

    move-object v0, v3

    :goto_73
    move-object v2, v0

    .line 535
    :goto_74
    :try_start_74
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/Main;->resourceMessage(Ljava/lang/Throwable;)V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_40

    .line 536
    if-eqz v2, :cond_7c

    .line 562
    :try_start_79
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_7c
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_79 .. :try_end_7c} :catch_359

    .line 567
    :cond_7c
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v5

    .line 536
    goto :goto_32

    .line 531
    :catch_82
    move-exception v1

    move-object v0, v3

    :goto_84
    move-object v2, v0

    .line 532
    :goto_85
    :try_start_85
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/Main;->resourceMessage(Ljava/lang/Throwable;)V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_40

    .line 533
    if-eqz v2, :cond_8d

    .line 562
    :try_start_8a
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_8d
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_8a .. :try_end_8d} :catch_369

    .line 567
    :cond_8d
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v5

    .line 533
    goto :goto_32

    .line 528
    :catch_93
    move-exception v1

    move-object v0, v3

    :goto_95
    move-object v2, v0

    .line 529
    :goto_96
    :try_start_96
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/Main;->ioMessage(Ljava/lang/Throwable;)V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_40

    .line 530
    if-eqz v2, :cond_9e

    .line 562
    :try_start_9b
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_9e
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_9b .. :try_end_9e} :catch_379

    .line 567
    :cond_9e
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v5

    .line 530
    goto :goto_32

    .line 451
    :cond_a4
    :try_start_a4
    invoke-static {p1}, Lcom/sun/tools/javac/main/CommandLine;->parse([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/main/Main;->processArgs([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;
    :try_end_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_a4 .. :try_end_ab} :catch_115
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_ab} :catch_374
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a4 .. :try_end_ab} :catch_364
    .catch Ljava/lang/StackOverflowError; {:try_start_a4 .. :try_end_ab} :catch_354
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_a4 .. :try_end_ab} :catch_344
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_a4 .. :try_end_ab} :catch_32a
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_a4 .. :try_end_ab} :catch_325
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_a4 .. :try_end_ab} :catch_39b
    .catchall {:try_start_a4 .. :try_end_ab} :catchall_3a4

    move-result-object v7

    .line 452
    if-nez v7, :cond_b3

    .line 567
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    goto :goto_32

    .line 455
    :cond_b3
    :try_start_b3
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z
    :try_end_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_b3 .. :try_end_b6} :catch_115
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_374
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b3 .. :try_end_b6} :catch_364
    .catch Ljava/lang/StackOverflowError; {:try_start_b3 .. :try_end_b6} :catch_354
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_b3 .. :try_end_b6} :catch_344
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_b3 .. :try_end_b6} :catch_32a
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_b3 .. :try_end_b6} :catch_325
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_b3 .. :try_end_b6} :catch_39b
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_3a4

    move-result v1

    if-eqz v1, :cond_148

    :try_start_b9
    invoke-virtual {p4}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_148

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->classnames:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_148

    .line 457
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->HELP:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v1

    if-nez v1, :cond_ef

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->X:Lcom/sun/tools/javac/main/OptionName;

    .line 458
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v1

    if-nez v1, :cond_ef

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->VERSION:Lcom/sun/tools/javac/main/OptionName;

    .line 459
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v1

    if-nez v1, :cond_ef

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->FULLVERSION:Lcom/sun/tools/javac/main/OptionName;

    .line 460
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z
    :try_end_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_b9 .. :try_end_ec} :catch_115
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_ec} :catch_93
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b9 .. :try_end_ec} :catch_82
    .catch Ljava/lang/StackOverflowError; {:try_start_b9 .. :try_end_ec} :catch_71
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_b9 .. :try_end_ec} :catch_60
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_b9 .. :try_end_ec} :catch_4b
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_b9 .. :try_end_ec} :catch_33
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_b9 .. :try_end_ec} :catch_3f9
    .catchall {:try_start_b9 .. :try_end_ec} :catchall_406

    move-result v1

    if-eqz v1, :cond_f6

    .line 567
    :cond_ef
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v4

    .line 461
    goto/16 :goto_32

    .line 462
    :cond_f6
    :try_start_f6
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    invoke-static {v1}, Lcom/sun/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested(Lcom/sun/tools/javac/util/Options;)Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 463
    const-string v1, "err.no.source.files.classes"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/main/Main;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_106
    .catch Ljava/io/FileNotFoundException; {:try_start_f6 .. :try_end_106} :catch_115
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_106} :catch_93
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f6 .. :try_end_106} :catch_82
    .catch Ljava/lang/StackOverflowError; {:try_start_f6 .. :try_end_106} :catch_71
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_f6 .. :try_end_106} :catch_60
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_f6 .. :try_end_106} :catch_4b
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_f6 .. :try_end_106} :catch_33
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_f6 .. :try_end_106} :catch_3f9
    .catchall {:try_start_f6 .. :try_end_106} :catchall_406

    .line 567
    :goto_106
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    goto/16 :goto_32

    .line 465
    :cond_10c
    :try_start_10c
    const-string v1, "err.no.source.files"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/main/Main;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_114
    .catch Ljava/io/FileNotFoundException; {:try_start_10c .. :try_end_114} :catch_115
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_114} :catch_93
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10c .. :try_end_114} :catch_82
    .catch Ljava/lang/StackOverflowError; {:try_start_10c .. :try_end_114} :catch_71
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_10c .. :try_end_114} :catch_60
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_10c .. :try_end_114} :catch_4b
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_10c .. :try_end_114} :catch_33
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_10c .. :try_end_114} :catch_3f9
    .catchall {:try_start_10c .. :try_end_114} :catchall_406

    goto :goto_106

    .line 469
    :catch_115
    move-exception v0

    .line 470
    :try_start_116
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
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_141} :catch_315
    .catch Ljava/lang/OutOfMemoryError; {:try_start_116 .. :try_end_141} :catch_310
    .catch Ljava/lang/StackOverflowError; {:try_start_116 .. :try_end_141} :catch_30b
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_116 .. :try_end_141} :catch_306
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_116 .. :try_end_141} :catch_301
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_116 .. :try_end_141} :catch_2fc
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_116 .. :try_end_141} :catch_2f8
    .catchall {:try_start_116 .. :try_end_141} :catchall_2f4

    .line 567
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v5

    .line 473
    goto/16 :goto_32

    .line 474
    :cond_148
    :try_start_148
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "stdout"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14f} :catch_374
    .catch Ljava/lang/OutOfMemoryError; {:try_start_148 .. :try_end_14f} :catch_364
    .catch Ljava/lang/StackOverflowError; {:try_start_148 .. :try_end_14f} :catch_354
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_148 .. :try_end_14f} :catch_344
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_148 .. :try_end_14f} :catch_32a
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_148 .. :try_end_14f} :catch_325
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_148 .. :try_end_14f} :catch_39b
    .catchall {:try_start_148 .. :try_end_14f} :catchall_3a4

    move-result v0

    .line 477
    if-eqz v0, :cond_161

    .line 478
    :try_start_152
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 479
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_161} :catch_93
    .catch Ljava/lang/OutOfMemoryError; {:try_start_152 .. :try_end_161} :catch_82
    .catch Ljava/lang/StackOverflowError; {:try_start_152 .. :try_end_161} :catch_71
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_152 .. :try_end_161} :catch_60
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_152 .. :try_end_161} :catch_4b
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_152 .. :try_end_161} :catch_33
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_152 .. :try_end_161} :catch_3f9
    .catchall {:try_start_152 .. :try_end_161} :catchall_406

    .line 482
    :cond_161
    :try_start_161
    sget-object v0, Lcom/sun/tools/javac/util/Log;->outKey:Lcom/sun/tools/javac/util/Context$Key;

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {p3, v0, v1}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->diagnosticListener:Ljavax/tools/DiagnosticListener;
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_16a} :catch_374
    .catch Ljava/lang/OutOfMemoryError; {:try_start_161 .. :try_end_16a} :catch_364
    .catch Ljava/lang/StackOverflowError; {:try_start_161 .. :try_end_16a} :catch_354
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_161 .. :try_end_16a} :catch_344
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_161 .. :try_end_16a} :catch_32a
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_161 .. :try_end_16a} :catch_325
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_161 .. :try_end_16a} :catch_39b
    .catchall {:try_start_161 .. :try_end_16a} :catchall_3a4

    if-eqz v0, :cond_173

    .line 485
    :try_start_16c
    const-class v0, Ljavax/tools/DiagnosticListener;

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->diagnosticListener:Ljavax/tools/DiagnosticListener;

    invoke-virtual {p3, v0, v1}, Lcom/sun/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_173} :catch_93
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16c .. :try_end_173} :catch_82
    .catch Ljava/lang/StackOverflowError; {:try_start_16c .. :try_end_173} :catch_71
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_16c .. :try_end_173} :catch_60
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_16c .. :try_end_173} :catch_4b
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_16c .. :try_end_173} :catch_33
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_16c .. :try_end_173} :catch_3f9
    .catchall {:try_start_16c .. :try_end_173} :catchall_406

    .line 490
    :cond_173
    :try_start_173
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "nonBatchMode"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isUnset(Ljava/lang/String;)Z
    :try_end_17a
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_17a} :catch_374
    .catch Ljava/lang/OutOfMemoryError; {:try_start_173 .. :try_end_17a} :catch_364
    .catch Ljava/lang/StackOverflowError; {:try_start_173 .. :try_end_17a} :catch_354
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_173 .. :try_end_17a} :catch_344
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_173 .. :try_end_17a} :catch_32a
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_173 .. :try_end_17a} :catch_325
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_173 .. :try_end_17a} :catch_39b
    .catchall {:try_start_173 .. :try_end_17a} :catchall_3a4

    move-result v0

    if-eqz v0, :cond_1a7

    .line 491
    :try_start_17d
    const-string v0, "nonBatchMode"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a7

    move v0, v6

    .line 492
    :goto_186
    if-eqz v0, :cond_18b

    .line 493
    invoke-static {p3}, Lcom/sun/tools/javac/file/CacheFSInfo;->preRegister(Lcom/sun/tools/javac/util/Context;)V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_18b} :catch_93
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17d .. :try_end_18b} :catch_82
    .catch Ljava/lang/StackOverflowError; {:try_start_17d .. :try_end_18b} :catch_71
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_17d .. :try_end_18b} :catch_60
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_17d .. :try_end_18b} :catch_4b
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_17d .. :try_end_18b} :catch_33
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_17d .. :try_end_18b} :catch_3f9
    .catchall {:try_start_17d .. :try_end_18b} :catchall_406

    .line 495
    :cond_18b
    :try_start_18b
    const-class v0, Ljavax/tools/JavaFileManager;

    invoke-virtual {p3, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileManager;

    iput-object v0, p0, Lcom/sun/tools/javac/main/Main;->fileManager:Ljavax/tools/JavaFileManager;

    .line 497
    invoke-static {p3}, Lcom/sun/tools/javac/main/JavaCompiler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_198} :catch_374
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18b .. :try_end_198} :catch_364
    .catch Ljava/lang/StackOverflowError; {:try_start_18b .. :try_end_198} :catch_354
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_18b .. :try_end_198} :catch_344
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_18b .. :try_end_198} :catch_32a
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_18b .. :try_end_198} :catch_325
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_18b .. :try_end_198} :catch_39b
    .catchall {:try_start_18b .. :try_end_198} :catchall_3a4

    move-result-object v0

    .line 498
    if-nez v0, :cond_1b4

    .line 560
    if-eqz v0, :cond_1a0

    .line 562
    :try_start_19d
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_1a0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_19d .. :try_end_1a0} :catch_1a9

    .line 567
    :cond_1a0
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v5

    .line 498
    goto/16 :goto_32

    :cond_1a7
    move v0, v4

    .line 491
    goto :goto_186

    .line 563
    :catch_1a9
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 500
    :cond_1b4
    :try_start_1b4
    invoke-static {p3}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v8

    .line 502
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1b4 .. :try_end_1bb} :catch_38f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b4 .. :try_end_1bb} :catch_391
    .catch Ljava/lang/StackOverflowError; {:try_start_1b4 .. :try_end_1bb} :catch_393
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_1b4 .. :try_end_1bb} :catch_395
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_1b4 .. :try_end_1bb} :catch_397
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_1b4 .. :try_end_1bb} :catch_399
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_1b4 .. :try_end_1bb} :catch_3a0
    .catchall {:try_start_1b4 .. :try_end_1bb} :catchall_3a9

    move-result v1

    if-nez v1, :cond_1fa

    .line 504
    :try_start_1be
    invoke-static {p3}, Lcom/sun/tools/javac/main/JavaCompiler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;
    :try_end_1c1
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1c1} :catch_3cf
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1be .. :try_end_1c1} :catch_3d6
    .catch Ljava/lang/StackOverflowError; {:try_start_1be .. :try_end_1c1} :catch_3dd
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_1be .. :try_end_1c1} :catch_3e4
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_1be .. :try_end_1c1} :catch_3eb
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_1be .. :try_end_1c1} :catch_3f2
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_1be .. :try_end_1c1} :catch_3fe
    .catchall {:try_start_1be .. :try_end_1c1} :catchall_40b

    move-result-object v2

    .line 505
    :try_start_1c2
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

    :goto_1d2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    .line 508
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1d2

    .line 509
    :cond_1e4
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1e7} :catch_3d2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c2 .. :try_end_1e7} :catch_3d9
    .catch Ljava/lang/StackOverflowError; {:try_start_1c2 .. :try_end_1e7} :catch_3e0
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_1c2 .. :try_end_1e7} :catch_3e7
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_1c2 .. :try_end_1e7} :catch_3ee
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_1c2 .. :try_end_1e7} :catch_3f5
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_1c2 .. :try_end_1e7} :catch_402
    .catchall {:try_start_1c2 .. :try_end_1e7} :catchall_40f

    move-result-object v1

    :goto_1e8
    :try_start_1e8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject;

    .line 510
    invoke-virtual {p4, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    :try_end_1f7
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_1f7} :catch_2ef
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e8 .. :try_end_1f7} :catch_2ea
    .catch Ljava/lang/StackOverflowError; {:try_start_1e8 .. :try_end_1f7} :catch_2e5
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_1e8 .. :try_end_1f7} :catch_2e0
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_1e8 .. :try_end_1f7} :catch_2db
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_1e8 .. :try_end_1f7} :catch_2d6
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_1e8 .. :try_end_1f7} :catch_3bf
    .catchall {:try_start_1e8 .. :try_end_1f7} :catchall_3c7

    move-result-object p4

    goto :goto_1e8

    :cond_1f9
    move-object v0, v2

    .line 512
    :cond_1fa
    :try_start_1fa
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->classnames:Lcom/sun/tools/javac/util/ListBuffer;

    .line 513
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;
    :try_end_1ff
    .catch Ljava/io/IOException; {:try_start_1fa .. :try_end_1ff} :catch_3ad
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1fa .. :try_end_1ff} :catch_3b0
    .catch Ljava/lang/StackOverflowError; {:try_start_1fa .. :try_end_1ff} :catch_3b3
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_1fa .. :try_end_1ff} :catch_3b6
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_1fa .. :try_end_1ff} :catch_3b9
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_1fa .. :try_end_1ff} :catch_3bc
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_1fa .. :try_end_1ff} :catch_3c3
    .catchall {:try_start_1fa .. :try_end_1ff} :catchall_3cb

    move-result-object v1

    .line 512
    :try_start_200
    invoke-virtual {v0, p4, v1, p5}, Lcom/sun/tools/javac/main/JavaCompiler;->compile(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Ljava/lang/Iterable;)V

    .line 516
    iget-object v1, v8, Lcom/sun/tools/javac/util/Log;->expectDiagKeys:Ljava/util/Set;

    if-eqz v1, :cond_25c

    .line 517
    iget-object v1, v8, Lcom/sun/tools/javac/util/Log;->expectDiagKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22d

    .line 518
    iget-object v1, v8, Lcom/sun/tools/javac/util/Log;->noticeWriter:Ljava/io/PrintWriter;

    const-string v2, "all expected diagnostics found"

    invoke-static {v1, v2}, Lcom/sun/tools/javac/util/Log;->printLines(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_216
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_216} :catch_2d2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_200 .. :try_end_216} :catch_2ce
    .catch Ljava/lang/StackOverflowError; {:try_start_200 .. :try_end_216} :catch_2ca
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_200 .. :try_end_216} :catch_2c6
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_200 .. :try_end_216} :catch_2c2
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_200 .. :try_end_216} :catch_2be
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_200 .. :try_end_216} :catch_2b7
    .catchall {:try_start_200 .. :try_end_216} :catchall_290

    .line 519
    if-eqz v0, :cond_21b

    .line 562
    :try_start_218
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_21b
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_218 .. :try_end_21b} :catch_222

    .line 567
    :cond_21b
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v4

    .line 519
    goto/16 :goto_32

    .line 563
    :catch_222
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 521
    :cond_22d
    :try_start_22d
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
    :try_end_245
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_245} :catch_2d2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22d .. :try_end_245} :catch_2ce
    .catch Ljava/lang/StackOverflowError; {:try_start_22d .. :try_end_245} :catch_2ca
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_22d .. :try_end_245} :catch_2c6
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_22d .. :try_end_245} :catch_2c2
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_22d .. :try_end_245} :catch_2be
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_22d .. :try_end_245} :catch_2b7
    .catchall {:try_start_22d .. :try_end_245} :catchall_290

    .line 522
    if-eqz v0, :cond_24a

    .line 562
    :try_start_247
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_24a
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_247 .. :try_end_24a} :catch_251

    .line 567
    :cond_24a
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v6

    .line 522
    goto/16 :goto_32

    .line 563
    :catch_251
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 526
    :cond_25c
    :try_start_25c
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->errorCount()I
    :try_end_25f
    .catch Ljava/io/IOException; {:try_start_25c .. :try_end_25f} :catch_2d2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_25c .. :try_end_25f} :catch_2ce
    .catch Ljava/lang/StackOverflowError; {:try_start_25c .. :try_end_25f} :catch_2ca
    .catch Lcom/sun/tools/javac/util/FatalError; {:try_start_25c .. :try_end_25f} :catch_2c6
    .catch Lcom/sun/tools/javac/processing/AnnotationProcessingError; {:try_start_25c .. :try_end_25f} :catch_2c2
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_25c .. :try_end_25f} :catch_2be
    .catch Lcom/sun/tools/javac/util/PropagatedException; {:try_start_25c .. :try_end_25f} :catch_2b7
    .catchall {:try_start_25c .. :try_end_25f} :catchall_290

    move-result v1

    if-eqz v1, :cond_279

    .line 527
    if-eqz v0, :cond_267

    .line 562
    :try_start_264
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_267
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_264 .. :try_end_267} :catch_26e

    .line 567
    :cond_267
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v6

    .line 527
    goto/16 :goto_32

    .line 563
    :catch_26e
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 560
    :cond_279
    if-eqz v0, :cond_27e

    .line 562
    :try_start_27b
    invoke-virtual {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_27e
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_27b .. :try_end_27e} :catch_285

    .line 567
    :cond_27e
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    move v0, v4

    .line 569
    goto/16 :goto_32

    .line 563
    :catch_285
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 551
    :catchall_290
    move-exception v1

    move-object v2, v0

    .line 555
    :goto_292
    if-eqz v2, :cond_2a8

    :try_start_294
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v0

    if-eqz v0, :cond_2a8

    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    if-eqz v0, :cond_2a8

    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    .line 556
    const-string v4, "dev"

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ab

    .line 557
    :cond_2a8
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/main/Main;->bugMessage(Ljava/lang/Throwable;)V
    :try_end_2ab
    .catchall {:try_start_294 .. :try_end_2ab} :catchall_40

    .line 558
    :cond_2ab
    if-eqz v2, :cond_2b0

    .line 562
    :try_start_2ad
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->close()V
    :try_end_2b0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_2ad .. :try_end_2b0} :catch_31a

    .line 567
    :cond_2b0
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    .line 568
    iput-object v3, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    .line 558
    const/4 v0, 0x4

    goto/16 :goto_32

    .line 549
    :catch_2b7
    move-exception v1

    move-object v2, v0

    .line 550
    :goto_2b9
    :try_start_2b9
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/PropagatedException;->getCause()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2be
    .catchall {:try_start_2b9 .. :try_end_2be} :catchall_40

    .line 545
    :catch_2be
    move-exception v1

    move-object v2, v0

    goto/16 :goto_36

    .line 540
    :catch_2c2
    move-exception v1

    move-object v2, v0

    goto/16 :goto_4e

    .line 537
    :catch_2c6
    move-exception v1

    move-object v2, v0

    goto/16 :goto_63

    .line 534
    :catch_2ca
    move-exception v1

    move-object v2, v0

    goto/16 :goto_74

    .line 531
    :catch_2ce
    move-exception v1

    move-object v2, v0

    goto/16 :goto_85

    .line 528
    :catch_2d2
    move-exception v1

    move-object v2, v0

    goto/16 :goto_96

    .line 545
    :catch_2d6
    move-exception v1

    move-object v0, v2

    :goto_2d8
    move-object v2, v0

    goto/16 :goto_36

    .line 540
    :catch_2db
    move-exception v1

    move-object v0, v2

    :goto_2dd
    move-object v2, v0

    goto/16 :goto_4e

    .line 537
    :catch_2e0
    move-exception v1

    move-object v0, v2

    :goto_2e2
    move-object v2, v0

    goto/16 :goto_63

    .line 534
    :catch_2e5
    move-exception v1

    move-object v0, v2

    :goto_2e7
    move-object v2, v0

    goto/16 :goto_74

    .line 531
    :catch_2ea
    move-exception v1

    move-object v0, v2

    :goto_2ec
    move-object v2, v0

    goto/16 :goto_85

    .line 528
    :catch_2ef
    move-exception v1

    move-object v0, v2

    :goto_2f1
    move-object v2, v0

    goto/16 :goto_96

    .line 551
    :catchall_2f4
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto :goto_292

    .line 549
    :catch_2f8
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto :goto_2b9

    .line 545
    :catch_2fc
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_36

    .line 540
    :catch_301
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_4e

    .line 537
    :catch_306
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_63

    .line 534
    :catch_30b
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_74

    .line 531
    :catch_310
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_85

    .line 528
    :catch_315
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_96

    .line 563
    :catch_31a
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 545
    :catch_325
    move-exception v1

    move-object v0, v3

    :goto_327
    move-object v2, v0

    goto/16 :goto_36

    .line 540
    :catch_32a
    move-exception v1

    move-object v0, v3

    :goto_32c
    move-object v2, v0

    goto/16 :goto_4e

    .line 563
    :catch_32f
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 542
    :cond_33a
    :try_start_33a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/sun/tools/javac/processing/AnnotationProcessingError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_344
    .catchall {:try_start_33a .. :try_end_344} :catchall_40

    .line 537
    :catch_344
    move-exception v1

    move-object v0, v3

    :goto_346
    move-object v2, v0

    goto/16 :goto_63

    .line 563
    :catch_349
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 534
    :catch_354
    move-exception v1

    move-object v0, v3

    :goto_356
    move-object v2, v0

    goto/16 :goto_74

    .line 563
    :catch_359
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 531
    :catch_364
    move-exception v1

    move-object v0, v3

    :goto_366
    move-object v2, v0

    goto/16 :goto_85

    .line 563
    :catch_369
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 528
    :catch_374
    move-exception v1

    move-object v0, v3

    :goto_376
    move-object v2, v0

    goto/16 :goto_96

    .line 563
    :catch_379
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 563
    :catch_384
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ClientCodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 528
    :catch_38f
    move-exception v1

    goto :goto_376

    .line 531
    :catch_391
    move-exception v1

    goto :goto_366

    .line 534
    :catch_393
    move-exception v1

    goto :goto_356

    .line 537
    :catch_395
    move-exception v1

    goto :goto_346

    .line 540
    :catch_397
    move-exception v1

    goto :goto_32c

    .line 545
    :catch_399
    move-exception v1

    goto :goto_327

    .line 549
    :catch_39b
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_2b9

    :catch_3a0
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2b9

    .line 551
    :catchall_3a4
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_292

    :catchall_3a9
    move-exception v1

    move-object v2, v0

    goto/16 :goto_292

    .line 528
    :catch_3ad
    move-exception v1

    goto/16 :goto_2f1

    .line 531
    :catch_3b0
    move-exception v1

    goto/16 :goto_2ec

    .line 534
    :catch_3b3
    move-exception v1

    goto/16 :goto_2e7

    .line 537
    :catch_3b6
    move-exception v1

    goto/16 :goto_2e2

    .line 540
    :catch_3b9
    move-exception v1

    goto/16 :goto_2dd

    .line 545
    :catch_3bc
    move-exception v1

    goto/16 :goto_2d8

    .line 549
    :catch_3bf
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2b9

    :catch_3c3
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2b9

    .line 551
    :catchall_3c7
    move-exception v0

    move-object v1, v0

    goto/16 :goto_292

    :catchall_3cb
    move-exception v1

    move-object v2, v0

    goto/16 :goto_292

    .line 528
    :catch_3cf
    move-exception v1

    goto/16 :goto_95

    :catch_3d2
    move-exception v1

    move-object v0, v2

    goto/16 :goto_95

    .line 531
    :catch_3d6
    move-exception v1

    goto/16 :goto_84

    :catch_3d9
    move-exception v1

    move-object v0, v2

    goto/16 :goto_84

    .line 534
    :catch_3dd
    move-exception v1

    goto/16 :goto_73

    :catch_3e0
    move-exception v1

    move-object v0, v2

    goto/16 :goto_73

    .line 537
    :catch_3e4
    move-exception v1

    goto/16 :goto_62

    :catch_3e7
    move-exception v1

    move-object v0, v2

    goto/16 :goto_62

    .line 540
    :catch_3eb
    move-exception v1

    goto/16 :goto_4d

    :catch_3ee
    move-exception v1

    move-object v0, v2

    goto/16 :goto_4d

    .line 545
    :catch_3f2
    move-exception v1

    goto/16 :goto_35

    :catch_3f5
    move-exception v1

    move-object v0, v2

    goto/16 :goto_35

    .line 549
    :catch_3f9
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_2b9

    :catch_3fe
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2b9

    :catch_402
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2b9

    .line 551
    :catchall_406
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_292

    :catchall_40b
    move-exception v1

    move-object v2, v0

    goto/16 :goto_292

    :catchall_40f
    move-exception v0

    move-object v1, v0

    goto/16 :goto_292
.end method

.method varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    .line 233
    iget-boolean v0, p0, Lcom/sun/tools/javac/main/Main;->apiMode:Z

    if-nez v0, :cond_1b

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
    :cond_1b
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

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "dev"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 588
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 590
    :cond_22
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

    :goto_5
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 251
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/main/JavacOption$Option;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 254
    :goto_f
    return-object v0

    .line 250
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 254
    :cond_14
    const/4 v0, 0x0

    goto :goto_f
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
    :goto_13
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->recognizedOptions:[Lcom/sun/tools/javac/main/JavacOption$Option;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 213
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/main/JavacOption$Option;->help(Ljava/io/PrintWriter;)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 215
    :cond_22
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

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 278
    move v0, v1

    .line 279
    :cond_5
    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_6f

    .line 280
    aget-object v5, p1, v0

    .line 281
    add-int/lit8 v2, v0, 0x1

    .line 285
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_131

    .line 289
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_3a

    move v0, v1

    .line 290
    :goto_1b
    iget-object v4, p0, Lcom/sun/tools/javac/main/Main;->recognizedOptions:[Lcom/sun/tools/javac/main/JavacOption$Option;

    array-length v6, v4

    if-ge v0, v6, :cond_131

    .line 291
    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/main/JavacOption$Option;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 292
    iget-object v4, p0, Lcom/sun/tools/javac/main/Main;->recognizedOptions:[Lcom/sun/tools/javac/main/JavacOption$Option;

    aget-object v0, v4, v0

    move-object v4, v0

    .line 298
    :goto_2d
    if-nez v4, :cond_43

    .line 299
    const-string v0, "err.invalid.flag"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v5, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/main/Main;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 373
    :goto_39
    return-object v0

    .line 289
    :cond_3a
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->recognizedOptions:[Lcom/sun/tools/javac/main/JavacOption$Option;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 290
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 303
    :cond_43
    invoke-virtual {v4}, Lcom/sun/tools/javac/main/JavacOption$Option;->hasArg()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 304
    array-length v0, p1

    if-ne v2, v0, :cond_57

    .line 305
    const-string v0, "err.req.arg"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v5, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/main/Main;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 306
    goto :goto_39

    .line 308
    :cond_57
    aget-object v6, p1, v2

    .line 309
    add-int/lit8 v0, v2, 0x1

    .line 310
    iget-object v2, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    invoke-virtual {v4, v2, v5, v6}, Lcom/sun/tools/javac/main/JavacOption$Option;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v3

    .line 311
    goto :goto_39

    .line 313
    :cond_65
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    invoke-virtual {v4, v0, v5}, Lcom/sun/tools/javac/main/JavacOption$Option;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12e

    move-object v0, v3

    .line 314
    goto :goto_39

    .line 318
    :cond_6f
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->classnames:Lcom/sun/tools/javac/util/ListBuffer;

    if-eqz v0, :cond_7c

    if-eqz p2, :cond_7c

    .line 319
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    .line 322
    :cond_7c
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->D:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/main/Main;->checkDirectory(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-nez v0, :cond_86

    move-object v0, v3

    .line 323
    goto :goto_39

    .line 324
    :cond_86
    sget-object v0, Lcom/sun/tools/javac/main/OptionName;->S:Lcom/sun/tools/javac/main/OptionName;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/main/Main;->checkDirectory(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-nez v0, :cond_90

    move-object v0, v3

    .line 325
    goto :goto_39

    .line 327
    :cond_90
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v2, Lcom/sun/tools/javac/main/OptionName;->SOURCE:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v4

    .line 328
    if-eqz v4, :cond_da

    .line 329
    invoke-static {v4}, Lcom/sun/tools/javac/code/Source;->lookup(Ljava/lang/String;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    .line 331
    :goto_9e
    iget-object v2, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v5, Lcom/sun/tools/javac/main/OptionName;->TARGET:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v5

    .line 332
    if-eqz v5, :cond_dd

    .line 333
    invoke-static {v5}, Lcom/sun/tools/javac/jvm/Target;->lookup(Ljava/lang/String;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v2

    .line 340
    :goto_ac
    iget-object v6, v2, Lcom/sun/tools/javac/jvm/Target;->name:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_ff

    .line 341
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->requiredTarget()Lcom/sun/tools/javac/jvm/Target;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sun/tools/javac/jvm/Target;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_11a

    .line 342
    if-eqz v5, :cond_f2

    .line 343
    if-nez v4, :cond_e0

    .line 344
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->requiredTarget()Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Target;->name:Ljava/lang/String;

    const-string v2, "warn.target.default.source.conflict"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v5, v4, v1

    aput-object v0, v4, v7

    invoke-virtual {p0, v2, v4}, Lcom/sun/tools/javac/main/Main;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_d7
    move-object v0, v3

    .line 352
    goto/16 :goto_39

    .line 330
    :cond_da
    sget-object v0, Lcom/sun/tools/javac/code/Source;->DEFAULT:Lcom/sun/tools/javac/code/Source;

    goto :goto_9e

    .line 334
    :cond_dd
    sget-object v2, Lcom/sun/tools/javac/jvm/Target;->DEFAULT:Lcom/sun/tools/javac/jvm/Target;

    goto :goto_ac

    .line 348
    :cond_e0
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->requiredTarget()Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Target;->name:Ljava/lang/String;

    const-string v2, "warn.source.target.conflict"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v1

    aput-object v0, v5, v7

    invoke-virtual {p0, v2, v5}, Lcom/sun/tools/javac/main/Main;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d7

    .line 354
    :cond_f2
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->requiredTarget()Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    const-string v2, "-target"

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Target;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_ff
    :goto_ff
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    const-string v1, "showClass"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_116

    .line 368
    const-string v1, "showClass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 369
    const-string v0, "com.sun.tools.javac.Main"

    .line 370
    :cond_113
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/Main;->showClass(Ljava/lang/String;)V

    .line 373
    :cond_116
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->filenames:Ljava/util/Set;

    goto/16 :goto_39

    .line 358
    :cond_11a
    if-nez v5, :cond_ff

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowGenerics()Z

    move-result v0

    if-nez v0, :cond_ff

    .line 359
    sget-object v0, Lcom/sun/tools/javac/jvm/Target;->JDK1_4:Lcom/sun/tools/javac/jvm/Target;

    .line 360
    iget-object v1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    const-string v2, "-target"

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Target;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ff

    :cond_12e
    move v0, v2

    goto/16 :goto_5

    :cond_131
    move-object v4, v3

    goto/16 :goto_2d
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
    if-eqz p1, :cond_5

    .line 260
    iput-object p1, p0, Lcom/sun/tools/javac/main/Main;->options:Lcom/sun/tools/javac/util/Options;

    .line 261
    return-void

    .line 259
    :cond_5
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
    if-nez v1, :cond_45

    .line 630
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    const-string v1, "  class not found"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    :goto_44
    return-void

    .line 632
    :cond_45
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
    :try_start_5b
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 637
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6a} :catch_b2

    .line 639
    const/16 v1, 0x2000

    :try_start_6c
    new-array v1, v1, [B

    .line 642
    :cond_6e
    invoke-virtual {v3, v1}, Ljava/security/DigestInputStream;->read([B)I

    move-result v4

    .line 643
    if-gtz v4, :cond_6e

    .line 644
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_cb

    move-result-object v1

    .line 646
    :try_start_78
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    array-length v3, v1
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_81} :catch_b2

    :goto_81
    if-ge v0, v3, :cond_9b

    aget-byte v4, v1, v0

    .line 650
    :try_start_85
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

    goto :goto_81

    .line 651
    :cond_9b
    iget-object v0, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  MD5 checksum: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_b1} :catch_b2

    goto :goto_44

    .line 652
    :catch_b2
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

    goto/16 :goto_44

    .line 646
    :catchall_cb
    move-exception v0

    :try_start_cc
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 647
    throw v0
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d0} :catch_b2
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

    :goto_2
    iget-object v2, p0, Lcom/sun/tools/javac/main/Main;->recognizedOptions:[Lcom/sun/tools/javac/main/JavacOption$Option;

    array-length v3, v2

    if-ge v0, v3, :cond_11

    .line 223
    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sun/tools/javac/main/Main;->out:Ljava/io/PrintWriter;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/main/JavacOption$Option;->xhelp(Ljava/io/PrintWriter;)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 225
    :cond_11
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
