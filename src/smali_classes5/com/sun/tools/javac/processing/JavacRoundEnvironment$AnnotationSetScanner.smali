.class Lcom/sun/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;
.super Ljavax/lang/model/util/ElementScanner7;
.source "JavacRoundEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacRoundEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnnotationSetScanner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/ElementScanner7",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljavax/lang/model/element/Element;",
        ">;",
        "Ljavax/lang/model/type/DeclaredType;",
        ">;"
    }
.end annotation


# instance fields
.field annotatedElements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/processing/JavacRoundEnvironment;

.field typeUtil:Ljavax/lang/model/util/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/processing/JavacRoundEnvironment;Ljava/util/Set;Ljavax/lang/model/util/Types;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;",
            "Ljavax/lang/model/util/Types;",
            ")V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->this$0:Lcom/sun/tools/javac/processing/JavacRoundEnvironment;

    .line 145
    invoke-direct {p0, p2}, Ljavax/lang/model/util/ElementScanner7;-><init>(Ljava/lang/Object;)V

    .line 141
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->annotatedElements:Ljava/util/Set;

    .line 146
    iput-object p3, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->typeUtil:Ljavax/lang/model/util/Types;

    .line 147
    return-void
.end method


# virtual methods
.method public bridge synthetic scan(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 138
    check-cast p2, Ljavax/lang/model/type/DeclaredType;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->scan(Ljavax/lang/model/element/Element;Ljavax/lang/model/type/DeclaredType;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public scan(Ljavax/lang/model/element/Element;Ljavax/lang/model/type/DeclaredType;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/type/DeclaredType;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->this$0:Lcom/sun/tools/javac/processing/JavacRoundEnvironment;

    .line 152
    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->access$000(Lcom/sun/tools/javac/processing/JavacRoundEnvironment;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getAllAnnotationMirrors(Ljavax/lang/model/element/Element;)Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 154
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->typeUtil:Ljavax/lang/model/util/Types;

    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v2, v0, p2}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 155
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->annotatedElements:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 157
    :cond_30
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/element/Element;->accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->annotatedElements:Ljava/util/Set;

    return-object v0
.end method
