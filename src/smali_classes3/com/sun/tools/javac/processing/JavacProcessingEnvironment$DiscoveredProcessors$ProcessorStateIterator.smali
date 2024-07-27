.class Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;
.super Ljava/lang/Object;
.source "JavacProcessingEnvironment.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessorStateIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;",
        ">;"
    }
.end annotation


# instance fields
.field innerIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;",
            ">;"
        }
    .end annotation
.end field

.field onProcInterator:Z

.field psi:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

.field final this$1:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;)V
    .registers 4

    .line 599
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->this$1:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->psi:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    .line 601
    iget-object v0, p2, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->procStateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->innerIter:Ljava/util/Iterator;

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->onProcInterator:Z

    .line 603
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 623
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->onProcInterator:Z

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->psi:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v0, v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->processorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 626
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->innerIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->psi:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v0, v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->processorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;
    .registers 6

    .line 606
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->onProcInterator:Z

    if-nez v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->innerIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->innerIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;

    .line 617
    :goto_0
    return-object v0

    .line 610
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->onProcInterator:Z

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->psi:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v0, v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->processorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    new-instance v1, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;

    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->psi:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v0, v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->processorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/annotation/processing/Processor;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->this$1:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v2, v2, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    iget-object v2, v2, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->this$1:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v3, v3, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    iget-object v3, v3, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->source:Lcom/sun/tools/javac/code/Source;

    iget-object v4, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->this$1:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v4, v4, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;-><init>(Ljavax/annotation/processing/Processor;Lcom/sun/tools/javac/util/Log;Lcom/sun/tools/javac/code/Source;Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 616
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->psi:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v0, v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->procStateList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 617
    goto :goto_0

    .line 619
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 594
    invoke-virtual {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->next()Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 630
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public runContributingProcs(Ljavax/annotation/processing/RoundEnvironment;)V
    .registers 5

    .line 639
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->onProcInterator:Z

    if-nez v0, :cond_1

    .line 640
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 641
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->innerIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->innerIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;

    .line 643
    iget-boolean v2, v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->contributed:Z

    if-eqz v2, :cond_0

    .line 644
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->this$1:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v2, v2, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    iget-object v0, v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Ljavax/annotation/processing/Processor;

    invoke-static {v2, v0, v1, p1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->access$200(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Ljavax/annotation/processing/Processor;Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z

    goto :goto_0

    .line 647
    :cond_1
    return-void
.end method
