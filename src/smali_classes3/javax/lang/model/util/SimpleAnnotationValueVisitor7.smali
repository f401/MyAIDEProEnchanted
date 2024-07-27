.class public Ljavax/lang/model/util/SimpleAnnotationValueVisitor7;
.super Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;
.source "SimpleAnnotationValueVisitor7.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/lang/model/util/SimpleAnnotationValueVisitor6",
        "<TR;TP;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_7:Ljavax/lang/model/SourceVersion;
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;-><init>(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;-><init>(Ljava/lang/Object;)V

    .line 85
    return-void
.end method
