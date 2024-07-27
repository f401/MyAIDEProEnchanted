.class public Lcom/sun/tools/javac/processing/JavacFiler;
.super Ljava/lang/Object;
.source "JavacFiler.java"

# interfaces
.implements Ljavax/annotation/processing/Filer;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/processing/JavacFiler$FilerInputFileObject;,
        Lcom/sun/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;,
        Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;,
        Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;,
        Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputStream;,
        Lcom/sun/tools/javac/processing/JavacFiler$FilerWriter;
    }
.end annotation


# static fields
.field private static final ALREADY_OPENED:Ljava/lang/String; = "Output stream or writer has already been opened."

.field private static final NOT_FOR_READING:Ljava/lang/String; = "FileObject was not opened for reading."

.field private static final NOT_FOR_WRITING:Ljava/lang/String; = "FileObject was not opened for writing."


# instance fields
.field private final aggregateGeneratedClassNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aggregateGeneratedSourceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field context:Lcom/sun/tools/javac/util/Context;

.field fileManager:Ljavax/tools/JavaFileManager;

.field private final fileObjectHistory:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/FileObject;",
            ">;"
        }
    .end annotation
.end field

.field private final generatedClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field private generatedSourceFileObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field private generatedSourceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lastRound:Z

.field private final lint:Z

.field log:Lcom/sun/tools/javac/util/Log;

.field private final openTypeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 4

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacFiler;->context:Lcom/sun/tools/javac/util/Context;

    .line 366
    const-class v0, Ljavax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileManager;

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->fileManager:Ljavax/tools/JavaFileManager;

    .line 368
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->log:Lcom/sun/tools/javac/util/Log;

    .line 370
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->fileObjectHistory:Ljava/util/Set;

    .line 371
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedSourceNames:Ljava/util/Set;

    .line 372
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedSourceFileObjects:Ljava/util/Set;

    .line 374
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedClasses:Ljava/util/Map;

    .line 376
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    .line 378
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->aggregateGeneratedSourceNames:Ljava/util/Set;

    .line 379
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->aggregateGeneratedClassNames:Ljava/util/Set;

    .line 381
    invoke-static {p1}, Lcom/sun/tools/javac/code/Lint;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Lint;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->PROCESSING:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Lint;->isEnabled(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->lint:Z

    .line 382
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/processing/JavacFiler;Ljava/lang/String;Ljavax/tools/FileObject;)V
    .registers 3

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/processing/JavacFiler;->closeFileObject(Ljava/lang/String;Ljavax/tools/FileObject;)V

    return-void
.end method

.method private checkFileReopening(Ljavax/tools/FileObject;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/annotation/processing/FilerException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->fileObjectHistory:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/FileObject;

    .line 540
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacFiler;->fileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v2, v0, p1}, Ljavax/tools/JavaFileManager;->isSameFile(Ljavax/tools/FileObject;Ljavax/tools/FileObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->lint:Z

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "proc.file.reopening"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljavax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to reopen a file for path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljavax/annotation/processing/FilerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/annotation/processing/FilerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 546
    :cond_2
    if-eqz p2, :cond_3

    .line 547
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->fileObjectHistory:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_3
    return-void
.end method

.method private checkName(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/annotation/processing/FilerException;
        }
    .end annotation

    .line 496
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/processing/JavacFiler;->checkName(Ljava/lang/String;Z)V

    .line 497
    return-void
.end method

.method private checkName(Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/annotation/processing/FilerException;
        }
    .end annotation

    .line 500
    invoke-static {p1}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/processing/JavacFiler;->isPackageInfo(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->lint:Z

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "proc.illegal.file.name"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljavax/annotation/processing/FilerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/annotation/processing/FilerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 505
    :cond_1
    return-void
.end method

.method private checkNameAndExistence(Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/annotation/processing/FilerException;
        }
    .end annotation

    .line 525
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/processing/JavacFiler;->checkName(Ljava/lang/String;Z)V

    .line 526
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->aggregateGeneratedSourceNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->aggregateGeneratedClassNames:Ljava/util/Set;

    .line 527
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    :cond_0
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->lint:Z

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "proc.type.recreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to recreate a file for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljavax/annotation/processing/FilerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/annotation/processing/FilerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_2
    return-void
.end method

.method private clearRoundState()V
    .registers 2

    .line 595
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedSourceNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 596
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedSourceFileObjects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 597
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 598
    return-void
.end method

.method private closeFileObject(Ljava/lang/String;Ljavax/tools/FileObject;)V
    .registers 5

    .line 628
    if-eqz p1, :cond_0

    .line 629
    instance-of v0, p2, Ljavax/tools/JavaFileObject;

    if-eqz v0, :cond_3

    .line 631
    check-cast p2, Ljavax/tools/JavaFileObject;

    .line 632
    sget-object v0, Lcom/sun/tools/javac/processing/JavacFiler$1;->$SwitchMap$javax$tools$JavaFileObject$Kind:[I

    invoke-interface {p2}, Ljavax/tools/JavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/tools/JavaFileObject$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedClasses:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedSourceNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedSourceFileObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 630
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavaFileOject not found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private createSourceOrClassFile(ZLjava/lang/String;)Ljavax/tools/JavaFileObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 395
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->lint:Z

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 397
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 398
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 399
    if-eqz p1, :cond_2

    const-string v0, ".java"

    .line 400
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacFiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v2, "proc.suspicious.class.name"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v5

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/sun/tools/javac/processing/JavacFiler;->checkNameAndExistence(Ljava/lang/String;Z)V

    .line 405
    if-eqz p1, :cond_3

    sget-object v0, Ljavax/tools/StandardLocation;->SOURCE_OUTPUT:Ljavax/tools/StandardLocation;

    move-object v1, v0

    .line 406
    :goto_1
    if-eqz p1, :cond_4

    .line 407
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    .line 410
    :goto_2
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacFiler;->fileManager:Ljavax/tools/JavaFileManager;

    .line 411
    const/4 v3, 0x0

    invoke-interface {v2, v1, p2, v0, v3}, Ljavax/tools/JavaFileManager;->getJavaFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    .line 412
    invoke-direct {p0, v0, v4}, Lcom/sun/tools/javac/processing/JavacFiler;->checkFileReopening(Ljavax/tools/FileObject;Z)V

    .line 414
    iget-boolean v1, p0, Lcom/sun/tools/javac/processing/JavacFiler;->lastRound:Z

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacFiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v2, "proc.file.create.last.round"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    :cond_1
    if-eqz p1, :cond_5

    .line 418
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacFiler;->aggregateGeneratedSourceNames:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 421
    :goto_3
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v1, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;

    invoke-direct {v1, p0, p2, v0}, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;-><init>(Lcom/sun/tools/javac/processing/JavacFiler;Ljava/lang/String;Ljavax/tools/JavaFileObject;)V

    return-object v1

    .line 399
    :cond_2
    const-string v0, ".class"

    goto :goto_0

    .line 405
    :cond_3
    sget-object v0, Ljavax/tools/StandardLocation;->CLASS_OUTPUT:Ljavax/tools/StandardLocation;

    move-object v1, v0

    goto :goto_1

    .line 408
    :cond_4
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    goto :goto_2

    .line 420
    :cond_5
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacFiler;->aggregateGeneratedClassNames:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private isPackageInfo(Ljava/lang/String;Z)Z
    .registers 6

    const/4 v0, 0x0

    .line 510
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 512
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 513
    if-eqz p2, :cond_0

    const-string v0, "package-info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 518
    :cond_0
    :goto_0
    return v0

    .line 516
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 517
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-static {v2}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "package-info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private locationCheck(Ljavax/tools/JavaFileManager$Location;)V
    .registers 4

    .line 448
    instance-of v0, p1, Ljavax/tools/StandardLocation;

    if-eqz v0, :cond_0

    .line 449
    check-cast p1, Ljavax/tools/StandardLocation;

    .line 450
    invoke-virtual {p1}, Ljavax/tools/StandardLocation;->isOutputLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    :cond_0
    return-void

    .line 451
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource creation not supported in location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 586
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/JavacFiler;->clearRoundState()V

    .line 588
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->fileObjectHistory:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 589
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 590
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->aggregateGeneratedSourceNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 591
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->aggregateGeneratedClassNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 592
    return-void
.end method

.method public varargs createClassFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/processing/JavacFiler;->createSourceOrClassFile(ZLjava/lang/String;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public varargs createResource(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/FileObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 430
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/processing/JavacFiler;->locationCheck(Ljavax/tools/JavaFileManager$Location;)V

    .line 432
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 434
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/processing/JavacFiler;->checkName(Ljava/lang/String;)V

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacFiler;->fileManager:Ljavax/tools/JavaFileManager;

    .line 438
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-interface {v1, p1, v0, v2, v3}, Ljavax/tools/JavaFileManager;->getFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

    move-result-object v0

    .line 439
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/processing/JavacFiler;->checkFileReopening(Ljavax/tools/FileObject;Z)V

    .line 441
    instance-of v1, v0, Ljavax/tools/JavaFileObject;

    if-eqz v1, :cond_1

    .line 442
    new-instance v1, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;

    check-cast v0, Ljavax/tools/JavaFileObject;

    invoke-direct {v1, p0, v3, v0}, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;-><init>(Lcom/sun/tools/javac/processing/JavacFiler;Ljava/lang/String;Ljavax/tools/JavaFileObject;)V

    move-object v0, v1

    .line 444
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;

    invoke-direct {v1, p0, v3, v0}, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;-><init>(Lcom/sun/tools/javac/processing/JavacFiler;Ljava/lang/String;Ljavax/tools/FileObject;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public varargs createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/processing/JavacFiler;->createSourceOrClassFile(ZLjava/lang/String;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public displayState()V
    .registers 4

    .line 604
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->context:Lcom/sun/tools/javac/util/Context;

    sget-object v1, Lcom/sun/tools/javac/util/Log;->outKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File Object History : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacFiler;->fileObjectHistory:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open Type Names     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gen. Src Names      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedSourceNames:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gen. Cls Names      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedClasses:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agg. Gen. Src Names : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacFiler;->aggregateGeneratedSourceNames:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agg. Gen. Cls Names : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacFiler;->aggregateGeneratedClassNames:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public getGeneratedClasses()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedClasses:Ljava/util/Map;

    return-object v0
.end method

.method public getGeneratedSourceFileObjects()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedSourceFileObjects:Ljava/util/Set;

    return-object v0
.end method

.method public getGeneratedSourceNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedSourceNames:Ljava/util/Set;

    return-object v0
.end method

.method public getResource(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljavax/tools/FileObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 461
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/processing/JavacFiler;->checkName(Ljava/lang/String;)V

    .line 474
    :cond_0
    invoke-interface {p1}, Ljavax/tools/JavaFileManager$Location;->isOutputLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->fileManager:Ljavax/tools/JavaFileManager;

    .line 476
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, v2, v3}, Ljavax/tools/JavaFileManager;->getFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

    move-result-object v0

    .line 484
    :goto_0
    if-nez v0, :cond_3

    .line 485
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 486
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    :goto_1
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->fileManager:Ljavax/tools/JavaFileManager;

    .line 481
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-interface {v0, p1, v1, v2}, Ljavax/tools/JavaFileManager;->getFileForInput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Ljavax/tools/FileObject;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 491
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/processing/JavacFiler;->checkFileReopening(Ljavax/tools/FileObject;Z)V

    .line 492
    new-instance v1, Lcom/sun/tools/javac/processing/JavacFiler$FilerInputFileObject;

    invoke-direct {v1, p0, v0}, Lcom/sun/tools/javac/processing/JavacFiler$FilerInputFileObject;-><init>(Lcom/sun/tools/javac/processing/JavacFiler;Ljavax/tools/FileObject;)V

    return-object v1
.end method

.method public newFiles()Z
    .registers 2

    .line 551
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedSourceNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->generatedClasses:Ljava/util/Map;

    .line 552
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 551
    :goto_0
    return v0

    .line 552
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newRound(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 576
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacFiler;->context:Lcom/sun/tools/javac/util/Context;

    .line 577
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->log:Lcom/sun/tools/javac/util/Log;

    .line 578
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/JavacFiler;->clearRoundState()V

    .line 579
    return-void
.end method

.method setLastRound(Z)V
    .registers 2

    .line 582
    iput-boolean p1, p0, Lcom/sun/tools/javac/processing/JavacFiler;->lastRound:Z

    .line 583
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 614
    const-string v0, "javac Filer"

    return-object v0
.end method

.method public warnIfUnclosedFiles()V
    .registers 6

    .line 568
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "proc.unclosed.type.files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    :cond_0
    return-void
.end method
