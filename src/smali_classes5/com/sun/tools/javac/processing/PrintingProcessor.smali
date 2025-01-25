.class public Lcom/sun/tools/javac/processing/PrintingProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "PrintingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "*"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_7:Ljavax/lang/model/SourceVersion;
.end annotation


# instance fields
.field writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 89
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor;->writer:Ljava/io/PrintWriter;

    .line 90
    return-void
.end method


# virtual methods
.method print(Ljavax/lang/model/element/Element;)V
    .registers 5

    .line 109
    new-instance v0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor;->writer:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/PrintingProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;-><init>(Ljava/io/Writer;Ljavax/lang/model/util/Elements;)V

    .line 110
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visit(Ljavax/lang/model/element/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->flush()V

    .line 111
    return-void
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .line 100
    invoke-interface {p2}, Ljavax/annotation/processing/RoundEnvironment;->getRootElements()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 101
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/processing/PrintingProcessor;->print(Ljavax/lang/model/element/Element;)V

    goto :goto_8

    .line 105
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public setWriter(Ljava/io/Writer;)V
    .registers 3

    .line 93
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor;->writer:Ljava/io/PrintWriter;

    .line 94
    return-void
.end method
