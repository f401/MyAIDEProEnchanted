.class Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;
.super Ljava/lang/Object;
.source "JavacProcessingEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessorState"
.end annotation


# instance fields
.field public contributed:Z

.field public processor:Ljavax/annotation/processing/Processor;

.field private supportedAnnotationPatterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private supportedOptionNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/annotation/processing/Processor;Lcom/sun/tools/javac/util/Log;Lcom/sun/tools/javac/code/Source;Ljavax/annotation/processing/ProcessingEnvironment;)V
    .registers 9

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Ljavax/annotation/processing/Processor;

    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->contributed:Z

    .line 517
    :try_start_8
    invoke-interface {p1, p4}, Ljavax/annotation/processing/Processor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 519
    invoke-direct {p0, p3, p2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->checkSourceVersionCompatibility(Lcom/sun/tools/javac/code/Source;Lcom/sun/tools/javac/util/Log;)V

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->supportedAnnotationPatterns:Ljava/util/ArrayList;

    .line 522
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Ljavax/annotation/processing/Processor;

    invoke-interface {v0}, Ljavax/annotation/processing/Processor;->getSupportedAnnotationTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 523
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->supportedAnnotationPatterns:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Ljavax/annotation/processing/Processor;

    invoke-static {v0, v3, p2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$100(Ljava/lang/String;Ljavax/annotation/processing/Processor;Lcom/sun/tools/javac/util/Log;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_8 .. :try_end_36} :catch_37
    .catchall {:try_start_8 .. :try_end_36} :catchall_62

    goto :goto_1f

    .line 534
    :catch_37
    move-exception v0

    .line 535
    throw v0

    .line 528
    :cond_39
    :try_start_39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->supportedOptionNames:Ljava/util/ArrayList;

    .line 529
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Ljavax/annotation/processing/Processor;

    invoke-interface {v0}, Ljavax/annotation/processing/Processor;->getSupportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 530
    invoke-direct {p0, v0, p2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->checkOptionName(Ljava/lang/String;Lcom/sun/tools/javac/util/Log;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 531
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->supportedOptionNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_39 .. :try_end_61} :catch_37
    .catchall {:try_start_39 .. :try_end_61} :catchall_62

    goto :goto_4a

    .line 536
    :catchall_62
    move-exception v0

    .line 537
    new-instance v1, Lcom/sun/tools/javac/processing/AnnotationProcessingError;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/processing/AnnotationProcessingError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 538
    :cond_69
    return-void
.end method

.method private checkOptionName(Ljava/lang/String;Lcom/sun/tools/javac/util/Log;)Z
    .registers 8

    .line 559
    invoke-static {p1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->isValidOptionName(Ljava/lang/String;)Z

    move-result v0

    .line 560
    if-nez v0, :cond_1e

    .line 561
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Ljavax/annotation/processing/Processor;

    .line 563
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 561
    const-string v2, "proc.processor.bad.option.name"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    :cond_1e
    return v0
.end method

.method private checkSourceVersionCompatibility(Lcom/sun/tools/javac/code/Source;Lcom/sun/tools/javac/util/Log;)V
    .registers 9

    .line 548
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Ljavax/annotation/processing/Processor;

    invoke-interface {v0}, Ljavax/annotation/processing/Processor;->getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    .line 550
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->toSourceVersion(Lcom/sun/tools/javac/code/Source;)Ljavax/lang/model/SourceVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/lang/model/SourceVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_2d

    .line 551
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Ljavax/annotation/processing/Processor;

    .line 553
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    .line 551
    const-string v3, "proc.processor.incompatible.source.version"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-virtual {p2, v3, v4}, Lcom/sun/tools/javac/util/Log;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    :cond_2d
    return-void
.end method


# virtual methods
.method public annotationSupported(Ljava/lang/String;)Z
    .registers 4

    .line 568
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->supportedAnnotationPatterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 569
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 570
    const/4 v0, 0x1

    .line 572
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public removeSupportedOptions(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->supportedOptionNames:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 580
    return-void
.end method
