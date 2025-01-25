.class public Lsun/reflect/generics/repository/FieldRepository;
.super Lsun/reflect/generics/repository/AbstractRepository;
.source "FieldRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/reflect/generics/repository/AbstractRepository",
        "<",
        "Lsun/reflect/generics/tree/TypeSignature;",
        ">;"
    }
.end annotation


# instance fields
.field private genericType:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Lsun/reflect/generics/repository/AbstractRepository;-><init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V

    .line 49
    return-void
.end method

.method public static make(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)Lsun/reflect/generics/repository/FieldRepository;
    .registers 3

    .line 66
    new-instance v0, Lsun/reflect/generics/repository/FieldRepository;

    invoke-direct {v0, p0, p1}, Lsun/reflect/generics/repository/FieldRepository;-><init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V

    return-object v0
.end method


# virtual methods
.method public getGenericType()Ljava/lang/reflect/Type;
    .registers 3

    .line 83
    iget-object v0, p0, Lsun/reflect/generics/repository/FieldRepository;->genericType:Ljava/lang/reflect/Type;

    if-nez v0, :cond_17

    .line 84
    invoke-virtual {p0}, Lsun/reflect/generics/repository/FieldRepository;->getReifier()Lsun/reflect/generics/visitor/Reifier;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Lsun/reflect/generics/repository/FieldRepository;->getTree()Lsun/reflect/generics/tree/Tree;

    move-result-object v0

    check-cast v0, Lsun/reflect/generics/tree/TypeSignature;

    invoke-interface {v0, v1}, Lsun/reflect/generics/tree/TypeSignature;->accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V

    .line 87
    invoke-virtual {v1}, Lsun/reflect/generics/visitor/Reifier;->getResult()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/repository/FieldRepository;->genericType:Ljava/lang/reflect/Type;

    .line 89
    :cond_17
    iget-object v0, p0, Lsun/reflect/generics/repository/FieldRepository;->genericType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method protected bridge synthetic parse(Ljava/lang/String;)Lsun/reflect/generics/tree/Tree;
    .registers 3

    .line 42
    invoke-virtual {p0, p1}, Lsun/reflect/generics/repository/FieldRepository;->parse(Ljava/lang/String;)Lsun/reflect/generics/tree/TypeSignature;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Ljava/lang/String;)Lsun/reflect/generics/tree/TypeSignature;
    .registers 3

    .line 52
    invoke-static {}, Lsun/reflect/generics/parser/SignatureParser;->make()Lsun/reflect/generics/parser/SignatureParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/reflect/generics/parser/SignatureParser;->parseTypeSig(Ljava/lang/String;)Lsun/reflect/generics/tree/TypeSignature;

    move-result-object v0

    return-object v0
.end method
