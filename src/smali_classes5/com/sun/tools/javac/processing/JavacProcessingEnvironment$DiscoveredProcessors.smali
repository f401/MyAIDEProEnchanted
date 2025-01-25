.class Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;
.super Ljava/lang/Object;
.source "JavacProcessingEnvironment.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DiscoveredProcessors"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;",
        ">;"
    }
.end annotation


# instance fields
.field procStateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;",
            ">;"
        }
    .end annotation
.end field

.field processorIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Ljavax/annotation/processing/Processor;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;Ljava/util/Iterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Ljavax/annotation/processing/Processor;",
            ">;)V"
        }
    .end annotation

    .line 657
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->this$0:Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p2, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->processorIterator:Ljava/util/Iterator;

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->procStateList:Ljava/util/ArrayList;

    .line 660
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 666
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->processorIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_d

    instance-of v1, v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;

    if-eqz v1, :cond_d

    .line 668
    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->close()V

    .line 670
    :cond_d
    return-void
.end method

.method public iterator()Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;
    .registers 2

    .line 654
    new-instance v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;

    invoke-direct {v0, p0, p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;-><init>(Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 592
    invoke-virtual {p0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->iterator()Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;

    move-result-object v0

    return-object v0
.end method
