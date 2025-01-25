.class public Ljavax/lang/model/util/SimpleTypeVisitor6;
.super Ljavax/lang/model/util/AbstractTypeVisitor6;
.source "SimpleTypeVisitor6.java"


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
    invoke-direct {p0}, Ljavax/lang/model/util/AbstractTypeVisitor6;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/lang/model/util/SimpleTypeVisitor6;->DEFAULT_VALUE:Ljava/lang/Object;

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
    invoke-direct {p0}, Ljavax/lang/model/util/AbstractTypeVisitor6;-><init>()V

    .line 104
    iput-object p1, p0, Ljavax/lang/model/util/SimpleTypeVisitor6;->DEFAULT_VALUE:Ljava/lang/Object;

    .line 105
    return-void
.end method


# virtual methods
.method protected defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "TP;)TR;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Ljavax/lang/model/util/SimpleTypeVisitor6;->DEFAULT_VALUE:Ljava/lang/Object;

    return-object v0
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/ArrayType;",
            "TP;)TR;"
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/DeclaredType;",
            "TP;)TR;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/ErrorType;",
            "TP;)TR;"
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutable(Ljavax/lang/model/type/ExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/ExecutableType;",
            "TP;)TR;"
        }
    .end annotation

    .line 201
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNoType(Ljavax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/NoType;",
            "TP;)TR;"
        }
    .end annotation

    .line 212
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNull(Ljavax/lang/model/type/NullType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/NullType;",
            "TP;)TR;"
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeVariable;",
            "TP;)TR;"
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/WildcardType;",
            "TP;)TR;"
        }
    .end annotation

    .line 190
    invoke-virtual {p0, p1, p2}, Ljavax/lang/model/util/SimpleTypeVisitor6;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
