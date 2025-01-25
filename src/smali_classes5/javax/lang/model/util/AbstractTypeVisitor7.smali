.class public abstract Ljavax/lang/model/util/AbstractTypeVisitor7;
.super Ljavax/lang/model/util/AbstractTypeVisitor6;
.source "AbstractTypeVisitor7.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/lang/model/util/AbstractTypeVisitor6",
        "<TR;TP;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljavax/lang/model/util/AbstractTypeVisitor6;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public abstract visitUnion(Ljavax/lang/model/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/UnionType;",
            "TP;)TR;"
        }
    .end annotation
.end method
