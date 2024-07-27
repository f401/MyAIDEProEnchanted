.class public abstract Lsun/reflect/generics/repository/GenericDeclRepository;
.super Lsun/reflect/generics/repository/AbstractRepository;
.source "GenericDeclRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lsun/reflect/generics/tree/Signature;",
        ">",
        "Lsun/reflect/generics/repository/AbstractRepository",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private typeParams:[Ljava/lang/reflect/TypeVariable;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Lsun/reflect/generics/repository/AbstractRepository;-><init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .registers 6

    .line 68
    iget-object v0, p0, Lsun/reflect/generics/repository/GenericDeclRepository;->typeParams:[Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lsun/reflect/generics/repository/GenericDeclRepository;->getTree()Lsun/reflect/generics/tree/Tree;

    move-result-object v0

    check-cast v0, Lsun/reflect/generics/tree/Signature;

    invoke-interface {v0}, Lsun/reflect/generics/tree/Signature;->getFormalTypeParameters()[Lsun/reflect/generics/tree/FormalTypeParameter;

    move-result-object v2

    .line 72
    array-length v0, v2

    new-array v3, v0, [Ljava/lang/reflect/TypeVariable;

    .line 74
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lsun/reflect/generics/repository/GenericDeclRepository;->getReifier()Lsun/reflect/generics/visitor/Reifier;

    move-result-object v0

    .line 76
    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Lsun/reflect/generics/tree/FormalTypeParameter;->accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V

    .line 78
    invoke-virtual {v0}, Lsun/reflect/generics/visitor/Reifier;->getResult()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    aput-object v0, v3, v1

    .line 74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 80
    :cond_0
    iput-object v3, p0, Lsun/reflect/generics/repository/GenericDeclRepository;->typeParams:[Ljava/lang/reflect/TypeVariable;

    .line 82
    :cond_1
    iget-object v0, p0, Lsun/reflect/generics/repository/GenericDeclRepository;->typeParams:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, [Ljava/lang/reflect/TypeVariable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/TypeVariable;

    return-object v0
.end method
