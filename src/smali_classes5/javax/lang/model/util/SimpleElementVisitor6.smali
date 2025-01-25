.class public Ljavax/lang/model/util/SimpleElementVisitor6;
.super Ljavax/lang/model/util/AbstractElementVisitor6;
.source "SimpleElementVisitor6.java"


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

    .line 93
    invoke-direct {p0}, Ljavax/lang/model/util/AbstractElementVisitor6;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/lang/model/util/SimpleElementVisitor6;->DEFAULT_VALUE:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljavax/lang/model/util/AbstractElementVisitor6;-><init>()V

    .line 104
    iput-object p1, p0, Ljavax/lang/model/util/SimpleElementVisitor6;->DEFAULT_VALUE:Ljava/lang/Object;

    .line 105
    return-void
.end method


# virtual methods
.method protected defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "TP;)TR;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Ljavax/lang/model/util/SimpleElementVisitor6;->DEFAULT_VALUE:Ljava/lang/Object;

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

    .line 167
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleElementVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 127
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleElementVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 138
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleElementVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 178
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleElementVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 153
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_d

    .line 154
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleElementVisitor6;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleElementVisitor6;->visitUnknown(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method
