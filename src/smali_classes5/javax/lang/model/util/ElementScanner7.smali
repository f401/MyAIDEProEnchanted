.class public Ljavax/lang/model/util/ElementScanner7;
.super Ljavax/lang/model/util/ElementScanner6;
.source "ElementScanner7.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/lang/model/util/ElementScanner6",
        "<TR;TP;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_7:Ljavax/lang/model/SourceVersion;
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/lang/model/util/ElementScanner6;-><init>(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Ljavax/lang/model/util/ElementScanner6;-><init>(Ljava/lang/Object;)V

    .line 106
    return-void
.end method


# virtual methods
.method public visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/VariableElement;",
            "TP;)TR;"
        }
    .end annotation

    .line 117
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavax/lang/model/util/ElementScanner7;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
