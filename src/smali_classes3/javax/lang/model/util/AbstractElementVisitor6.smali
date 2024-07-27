.class public abstract Ljavax/lang/model/util/AbstractElementVisitor6;
.super Ljava/lang/Object;
.source "AbstractElementVisitor6.java"

# interfaces
.implements Ljavax/lang/model/element/ElementVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/lang/model/element/ElementVisitor",
        "<TR;TP;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_6:Ljavax/lang/model/SourceVersion;
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Ljavax/lang/model/element/Element;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")TR;"
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Ljavax/lang/model/element/Element;->accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final visit(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "TP;)TR;"
        }
    .end annotation

    .line 89
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/element/Element;->accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnknown(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "TP;)TR;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljavax/lang/model/element/UnknownElementException;

    invoke-direct {v0, p1, p2}, Ljavax/lang/model/element/UnknownElementException;-><init>(Ljavax/lang/model/element/Element;Ljava/lang/Object;)V

    throw v0
.end method
