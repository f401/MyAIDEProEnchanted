.class public Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;
.super Ljavax/lang/model/util/ElementScanner7;
.source "JavacProcessingEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComputeAnnotationSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/ElementScanner7",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljavax/lang/model/element/TypeElement;",
        ">;",
        "Ljava/util/Set",
        "<",
        "Ljavax/lang/model/element/TypeElement;",
        ">;>;"
    }
.end annotation


# instance fields
.field final elements:Ljavax/lang/model/util/Elements;


# direct methods
.method public constructor <init>(Ljavax/lang/model/util/Elements;)V
    .registers 2

    .line 768
    invoke-direct {p0}, Ljavax/lang/model/util/ElementScanner7;-><init>()V

    .line 769
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->elements:Ljavax/lang/model/util/Elements;

    .line 770
    return-void
.end method


# virtual methods
.method public bridge synthetic scan(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 763
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->scan(Ljavax/lang/model/element/Element;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public scan(Ljavax/lang/model/element/Element;Ljava/util/Set;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getAllAnnotationMirrors(Ljavax/lang/model/element/Element;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 782
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 783
    check-cast v0, Ljavax/lang/model/element/TypeElement;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 785
    :cond_24
    invoke-super {p0, p1, p2}, Ljavax/lang/model/util/ElementScanner7;->scan(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 763
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/PackageElement;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 775
    return-object p2
.end method
