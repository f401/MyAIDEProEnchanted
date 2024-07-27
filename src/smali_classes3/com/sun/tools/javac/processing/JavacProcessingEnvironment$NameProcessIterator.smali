.class Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;
.super Ljava/lang/Object;
.source "JavacProcessingEnvironment.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameProcessIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljavax/annotation/processing/Processor;",
        ">;"
    }
.end annotation


# instance fields
.field log:Lcom/sun/tools/javac/util/Log;

.field names:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field nextProc:Ljavax/annotation/processing/Processor;

.field processorCL:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/sun/tools/javac/util/Log;)V
    .registers 5

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->nextProc:Ljavax/annotation/processing/Processor;

    .line 408
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->names:Ljava/util/Iterator;

    .line 409
    iput-object p2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->processorCL:Ljava/lang/ClassLoader;

    .line 410
    iput-object p3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->log:Lcom/sun/tools/javac/util/Log;

    .line 411
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 414
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->nextProc:Ljavax/annotation/processing/Processor;

    if-eqz v1, :cond_0

    move v1, v3

    .line 443
    :goto_0
    return v1

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->names:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    .line 418
    goto :goto_0

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->names:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 425
    :try_start_0
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->processorCL:Ljava/lang/ClassLoader;

    .line 426
    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljavax/annotation/processing/Processor;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iput-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->nextProc:Ljavax/annotation/processing/Processor;

    move v1, v3

    .line 443
    goto :goto_0

    .line 433
    :catch_0
    move-exception v2

    .line 434
    :try_start_1
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "proc.processor.cant.instantiate"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v5}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v4

    .line 435
    goto :goto_0

    .line 430
    :catch_1
    move-exception v2

    .line 431
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "proc.processor.wrong.type"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v5}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v4

    .line 432
    goto :goto_0

    .line 427
    :catch_2
    move-exception v2

    .line 428
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "proc.processor.not.found"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v5}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    .line 429
    goto :goto_0

    .line 439
    :catchall_0
    move-exception v1

    .line 440
    new-instance v2, Lcom/sun/tools/javac/processing/AnnotationProcessingError;

    invoke-direct {v2, v1}, Lcom/sun/tools/javac/processing/AnnotationProcessingError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 437
    :catch_3
    move-exception v1

    .line 438
    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 401
    invoke-virtual {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->next()Ljavax/annotation/processing/Processor;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/annotation/processing/Processor;
    .registers 3

    .line 450
    invoke-virtual {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->nextProc:Ljavax/annotation/processing/Processor;

    .line 452
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->nextProc:Ljavax/annotation/processing/Processor;

    .line 453
    return-object v0

    .line 455
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 459
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
