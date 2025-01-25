.class public Ljavax/lang/model/util/ElementScanner6;
.super Ljavax/lang/model/util/AbstractElementVisitor6;
.source "ElementScanner6.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/lang/model/util/AbstractElementVisitor6",
        "<TR;TP;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_6:Ljavax/lang/model/SourceVersion;
.end annotation


# instance fields
.field protected final DEFAULT_VALUE:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Ljavax/lang/model/util/AbstractElementVisitor6;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/lang/model/util/ElementScanner6;->DEFAULT_VALUE:Ljava/lang/Object;

    .line 107
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljavax/lang/model/util/AbstractElementVisitor6;-><init>()V

    .line 114
    iput-object p1, p0, Ljavax/lang/model/util/ElementScanner6;->DEFAULT_VALUE:Ljava/lang/Object;

    .line 115
    return-void
.end method


# virtual methods
.method public final scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;TP;)TR;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Ljavax/lang/model/util/ElementScanner6;->DEFAULT_VALUE:Ljava/lang/Object;

    .line 129
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 130
    invoke-virtual {p0, v0, p2}, Ljavax/lang/model/util/ElementScanner6;->scan(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    .line 131
    :cond_17
    return-object v0
.end method

.method public final scan(Ljavax/lang/model/element/Element;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")TR;"
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/lang/model/util/ElementScanner6;->scan(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public scan(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "TP;)TR;"
        }
    .end annotation

    .line 140
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/element/Element;->accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutable(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 199
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/PackageElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 159
    invoke-interface {p1}, Ljavax/lang/model/element/PackageElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 170
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 210
    invoke-interface {p1}, Ljavax/lang/model/element/TypeParameterElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/VariableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 185
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_11

    .line 186
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavax/lang/model/util/ElementScanner6;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/ElementScanner6;->visitUnknown(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10
.end method
