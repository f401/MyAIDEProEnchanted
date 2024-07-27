.class public Lsun/reflect/generics/repository/ClassRepository;
.super Lsun/reflect/generics/repository/GenericDeclRepository;
.source "ClassRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/reflect/generics/repository/GenericDeclRepository",
        "<",
        "Lsun/reflect/generics/tree/ClassSignature;",
        ">;"
    }
.end annotation


# instance fields
.field private superInterfaces:[Ljava/lang/reflect/Type;

.field private superclass:Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Lsun/reflect/generics/repository/GenericDeclRepository;-><init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V

    .line 49
    return-void
.end method

.method public static make(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)Lsun/reflect/generics/repository/ClassRepository;
    .registers 3

    .line 65
    new-instance v0, Lsun/reflect/generics/repository/ClassRepository;

    invoke-direct {v0, p0, p1}, Lsun/reflect/generics/repository/ClassRepository;-><init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V

    return-object v0
.end method


# virtual methods
.method public getSuperInterfaces()[Ljava/lang/reflect/Type;
    .registers 6

    .line 92
    iget-object v0, p0, Lsun/reflect/generics/repository/ClassRepository;->superInterfaces:[Ljava/lang/reflect/Type;

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lsun/reflect/generics/repository/ClassRepository;->getTree()Lsun/reflect/generics/tree/Tree;

    move-result-object v0

    check-cast v0, Lsun/reflect/generics/tree/ClassSignature;

    invoke-virtual {v0}, Lsun/reflect/generics/tree/ClassSignature;->getSuperInterfaces()[Lsun/reflect/generics/tree/ClassTypeSignature;

    move-result-object v1

    .line 96
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/reflect/Type;

    .line 98
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 99
    invoke-virtual {p0}, Lsun/reflect/generics/repository/ClassRepository;->getReifier()Lsun/reflect/generics/visitor/Reifier;

    move-result-object v3

    .line 100
    aget-object v4, v1, v0

    invoke-interface {v4, v3}, Lsun/reflect/generics/tree/TypeTree;->accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V

    .line 102
    invoke-virtual {v3}, Lsun/reflect/generics/visitor/Reifier;->getResult()Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v2, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iput-object v2, p0, Lsun/reflect/generics/repository/ClassRepository;->superInterfaces:[Ljava/lang/reflect/Type;

    .line 106
    :cond_1
    iget-object v0, p0, Lsun/reflect/generics/repository/ClassRepository;->superInterfaces:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/reflect/Type;
    .registers 3

    .line 81
    iget-object v0, p0, Lsun/reflect/generics/repository/ClassRepository;->superclass:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lsun/reflect/generics/repository/ClassRepository;->getReifier()Lsun/reflect/generics/visitor/Reifier;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lsun/reflect/generics/repository/ClassRepository;->getTree()Lsun/reflect/generics/tree/Tree;

    move-result-object v0

    check-cast v0, Lsun/reflect/generics/tree/ClassSignature;

    invoke-virtual {v0}, Lsun/reflect/generics/tree/ClassSignature;->getSuperclass()Lsun/reflect/generics/tree/ClassTypeSignature;

    move-result-object v0

    invoke-virtual {v0, v1}, Lsun/reflect/generics/tree/ClassTypeSignature;->accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V

    .line 86
    invoke-virtual {v1}, Lsun/reflect/generics/visitor/Reifier;->getResult()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/repository/ClassRepository;->superclass:Ljava/lang/reflect/Type;

    .line 88
    :cond_0
    iget-object v0, p0, Lsun/reflect/generics/repository/ClassRepository;->superclass:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method protected parse(Ljava/lang/String;)Lsun/reflect/generics/tree/ClassSignature;
    .registers 3

    .line 52
    invoke-static {}, Lsun/reflect/generics/parser/SignatureParser;->make()Lsun/reflect/generics/parser/SignatureParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/reflect/generics/parser/SignatureParser;->parseClassSig(Ljava/lang/String;)Lsun/reflect/generics/tree/ClassSignature;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parse(Ljava/lang/String;)Lsun/reflect/generics/tree/Tree;
    .registers 3

    .line 41
    invoke-virtual {p0, p1}, Lsun/reflect/generics/repository/ClassRepository;->parse(Ljava/lang/String;)Lsun/reflect/generics/tree/ClassSignature;

    move-result-object v0

    return-object v0
.end method
