.class public abstract Ljavax/lang/model/util/AbstractAnnotationValueVisitor6;
.super Ljava/lang/Object;
.source "AbstractAnnotationValueVisitor6.java"

# interfaces
.implements Ljavax/lang/model/element/AnnotationValueVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/lang/model/element/AnnotationValueVisitor",
        "<TR;TP;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_6:Ljavax/lang/model/SourceVersion;
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationValue;",
            ")TR;"
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final visit(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationValue;",
            "TP;)TR;"
        }
    .end annotation

    .line 84
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnknown(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationValue;",
            "TP;)TR;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljavax/lang/model/element/UnknownAnnotationValueException;

    invoke-direct {v0, p1, p2}, Ljavax/lang/model/element/UnknownAnnotationValueException;-><init>(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Object;)V

    throw v0
.end method
