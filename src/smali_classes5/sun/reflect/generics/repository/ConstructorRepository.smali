.class public Lsun/reflect/generics/repository/ConstructorRepository;
.super Lsun/reflect/generics/repository/GenericDeclRepository;
.source "ConstructorRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/reflect/generics/repository/GenericDeclRepository",
        "<",
        "Lsun/reflect/generics/tree/MethodTypeSignature;",
        ">;"
    }
.end annotation


# instance fields
.field private exceptionTypes:[Ljava/lang/reflect/Type;

.field private paramTypes:[Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lsun/reflect/generics/repository/GenericDeclRepository;-><init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V

    .line 52
    return-void
.end method

.method public static make(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)Lsun/reflect/generics/repository/ConstructorRepository;
    .registers 3

    .line 69
    new-instance v0, Lsun/reflect/generics/repository/ConstructorRepository;

    invoke-direct {v0, p0, p1}, Lsun/reflect/generics/repository/ConstructorRepository;-><init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V

    return-object v0
.end method


# virtual methods
.method public getExceptionTypes()[Ljava/lang/reflect/Type;
    .registers 6

    .line 104
    iget-object v0, p0, Lsun/reflect/generics/repository/ConstructorRepository;->exceptionTypes:[Ljava/lang/reflect/Type;

    if-nez v0, :cond_29

    .line 106
    invoke-virtual {p0}, Lsun/reflect/generics/repository/ConstructorRepository;->getTree()Lsun/reflect/generics/tree/Tree;

    move-result-object v0

    check-cast v0, Lsun/reflect/generics/tree/MethodTypeSignature;

    invoke-virtual {v0}, Lsun/reflect/generics/tree/MethodTypeSignature;->getExceptionTypes()[Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v1

    .line 108
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/reflect/Type;

    .line 110
    const/4 v0, 0x0

    :goto_12
    array-length v3, v1

    if-ge v0, v3, :cond_27

    .line 111
    invoke-virtual {p0}, Lsun/reflect/generics/repository/ConstructorRepository;->getReifier()Lsun/reflect/generics/visitor/Reifier;

    move-result-object v3

    .line 112
    aget-object v4, v1, v0

    invoke-interface {v4, v3}, Lsun/reflect/generics/tree/FieldTypeSignature;->accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V

    .line 114
    invoke-virtual {v3}, Lsun/reflect/generics/visitor/Reifier;->getResult()Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v2, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 116
    :cond_27
    iput-object v2, p0, Lsun/reflect/generics/repository/ConstructorRepository;->exceptionTypes:[Ljava/lang/reflect/Type;

    .line 118
    :cond_29
    iget-object v0, p0, Lsun/reflect/generics/repository/ConstructorRepository;->exceptionTypes:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/reflect/Type;
    .registers 6

    .line 86
    iget-object v0, p0, Lsun/reflect/generics/repository/ConstructorRepository;->paramTypes:[Ljava/lang/reflect/Type;

    if-nez v0, :cond_29

    .line 88
    invoke-virtual {p0}, Lsun/reflect/generics/repository/ConstructorRepository;->getTree()Lsun/reflect/generics/tree/Tree;

    move-result-object v0

    check-cast v0, Lsun/reflect/generics/tree/MethodTypeSignature;

    invoke-virtual {v0}, Lsun/reflect/generics/tree/MethodTypeSignature;->getParameterTypes()[Lsun/reflect/generics/tree/TypeSignature;

    move-result-object v1

    .line 90
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/reflect/Type;

    .line 92
    const/4 v0, 0x0

    :goto_12
    array-length v3, v1

    if-ge v0, v3, :cond_27

    .line 93
    invoke-virtual {p0}, Lsun/reflect/generics/repository/ConstructorRepository;->getReifier()Lsun/reflect/generics/visitor/Reifier;

    move-result-object v3

    .line 94
    aget-object v4, v1, v0

    invoke-interface {v4, v3}, Lsun/reflect/generics/tree/TypeSignature;->accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V

    .line 96
    invoke-virtual {v3}, Lsun/reflect/generics/visitor/Reifier;->getResult()Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v2, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 98
    :cond_27
    iput-object v2, p0, Lsun/reflect/generics/repository/ConstructorRepository;->paramTypes:[Ljava/lang/reflect/Type;

    .line 100
    :cond_29
    iget-object v0, p0, Lsun/reflect/generics/repository/ConstructorRepository;->paramTypes:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method protected parse(Ljava/lang/String;)Lsun/reflect/generics/tree/MethodTypeSignature;
    .registers 3

    .line 55
    invoke-static {}, Lsun/reflect/generics/parser/SignatureParser;->make()Lsun/reflect/generics/parser/SignatureParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/reflect/generics/parser/SignatureParser;->parseMethodSig(Ljava/lang/String;)Lsun/reflect/generics/tree/MethodTypeSignature;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parse(Ljava/lang/String;)Lsun/reflect/generics/tree/Tree;
    .registers 3

    .line 43
    invoke-virtual {p0, p1}, Lsun/reflect/generics/repository/ConstructorRepository;->parse(Ljava/lang/String;)Lsun/reflect/generics/tree/MethodTypeSignature;

    move-result-object v0

    return-object v0
.end method
