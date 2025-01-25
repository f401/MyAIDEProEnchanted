.class public abstract Ljavax/lang/model/util/AbstractTypeVisitor6;
.super Ljava/lang/Object;
.source "AbstractTypeVisitor6.java"

# interfaces
.implements Ljavax/lang/model/type/TypeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/lang/model/type/TypeVisitor",
        "<TR;TP;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")TR;"
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final visit(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "TP;)TR;"
        }
    .end annotation

    .line 82
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnion(Ljavax/lang/model/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/UnionType;",
            "TP;)TR;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/AbstractTypeVisitor6;->visitUnknown(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnknown(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "TP;)TR;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljavax/lang/model/type/UnknownTypeException;

    invoke-direct {v0, p1, p2}, Ljavax/lang/model/type/UnknownTypeException;-><init>(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V

    throw v0
.end method
