.class public Ljavax/lang/model/util/SimpleTypeVisitor7;
.super Ljavax/lang/model/util/SimpleTypeVisitor6;
.source "SimpleTypeVisitor7.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/lang/model/util/SimpleTypeVisitor6",
        "<TR;TP;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_7:Ljavax/lang/model/SourceVersion;
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/lang/model/util/SimpleTypeVisitor6;-><init>(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Ljavax/lang/model/util/SimpleTypeVisitor6;-><init>(Ljava/lang/Object;)V

    .line 91
    return-void
.end method


# virtual methods
.method public visitUnion(Ljavax/lang/model/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/UnionType;",
            "TP;)TR;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleTypeVisitor7;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
