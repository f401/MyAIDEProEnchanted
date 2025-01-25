.class public Lcom/sun/tools/javac/processing/JavacRoundEnvironment;
.super Ljava/lang/Object;
.source "JavacRoundEnvironment.java"

# interfaces
.implements Ljavax/annotation/processing/RoundEnvironment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;
    }
.end annotation


# static fields
.field private static final NOT_AN_ANNOTATION_TYPE:Ljava/lang/String; = "The argument does not represent an annotation type: "


# instance fields
.field private final errorRaised:Z

.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

.field private final processingOver:Z

.field private final rootElements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZZLjava/util/Set;Ljavax/annotation/processing/ProcessingEnvironment;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean p1, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->processingOver:Z

    .line 63
    iput-boolean p2, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->errorRaised:Z

    .line 64
    iput-object p3, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->rootElements:Ljava/util/Set;

    .line 65
    iput-object p4, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/processing/JavacRoundEnvironment;)Ljavax/annotation/processing/ProcessingEnvironment;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method


# virtual methods
.method public errorRaised()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->errorRaised:Z

    return v0
.end method

.method public getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 169
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 170
    if-nez v0, :cond_11

    .line 171
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 177
    :goto_10
    return-object v0

    .line 173
    :cond_11
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    invoke-interface {v1, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 174
    if-nez v0, :cond_22

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_10

    .line 177
    :cond_22
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->getElementsAnnotatedWith(Ljavax/lang/model/element/TypeElement;)Ljava/util/Set;

    move-result-object v0

    goto :goto_10

    .line 168
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The argument does not represent an annotation type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getElementsAnnotatedWith(Ljavax/lang/model/element/TypeElement;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 117
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v2

    .line 118
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v3, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v3, :cond_55

    .line 122
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 123
    instance-of v3, v0, Ljavax/lang/model/type/DeclaredType;

    if-eqz v3, :cond_3e

    .line 124
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 128
    new-instance v3, Lcom/sun/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;

    invoke-direct {v3, p0, v1, v2}, Lcom/sun/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;-><init>(Lcom/sun/tools/javac/processing/JavacRoundEnvironment;Ljava/util/Set;Ljavax/lang/model/util/Types;)V

    .line 131
    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->rootElements:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 132
    invoke-virtual {v3, v1, v0}, Ljavax/lang/model/util/ElementScanner7;->scan(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    goto :goto_2b

    .line 126
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad implementation type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 119
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The argument does not represent an annotation type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_6c
    return-object v1
.end method

.method public getRootElements()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->rootElements:Ljava/util/Set;

    return-object v0
.end method

.method public processingOver()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->processingOver:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 69
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->errorRaised:Z

    .line 70
    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->rootElements:Ljava/util/Set;

    iget-boolean v2, p0, Lcom/sun/tools/javac/processing/JavacRoundEnvironment;->processingOver:Z

    .line 72
    const-string v3, "[errorRaised=%b, rootElements=%s, processingOver=%b]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
