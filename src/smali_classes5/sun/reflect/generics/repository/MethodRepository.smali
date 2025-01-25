.class public Lsun/reflect/generics/repository/MethodRepository;
.super Lsun/reflect/generics/repository/ConstructorRepository;
.source "MethodRepository.java"


# instance fields
.field private returnType:Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lsun/reflect/generics/repository/ConstructorRepository;-><init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V

    .line 47
    return-void
.end method

.method public static make(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)Lsun/reflect/generics/repository/MethodRepository;
    .registers 3

    .line 59
    new-instance v0, Lsun/reflect/generics/repository/MethodRepository;

    invoke-direct {v0, p0, p1}, Lsun/reflect/generics/repository/MethodRepository;-><init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V

    return-object v0
.end method


# virtual methods
.method public getReturnType()Ljava/lang/reflect/Type;
    .registers 3

    .line 65
    iget-object v0, p0, Lsun/reflect/generics/repository/MethodRepository;->returnType:Ljava/lang/reflect/Type;

    if-nez v0, :cond_1b

    .line 66
    invoke-virtual {p0}, Lsun/reflect/generics/repository/MethodRepository;->getReifier()Lsun/reflect/generics/visitor/Reifier;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lsun/reflect/generics/repository/MethodRepository;->getTree()Lsun/reflect/generics/tree/Tree;

    move-result-object v0

    check-cast v0, Lsun/reflect/generics/tree/MethodTypeSignature;

    invoke-virtual {v0}, Lsun/reflect/generics/tree/MethodTypeSignature;->getReturnType()Lsun/reflect/generics/tree/ReturnType;

    move-result-object v0

    invoke-interface {v0, v1}, Lsun/reflect/generics/tree/ReturnType;->accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V

    .line 70
    invoke-virtual {v1}, Lsun/reflect/generics/visitor/Reifier;->getResult()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/repository/MethodRepository;->returnType:Ljava/lang/reflect/Type;

    .line 72
    :cond_1b
    iget-object v0, p0, Lsun/reflect/generics/repository/MethodRepository;->returnType:Ljava/lang/reflect/Type;

    return-object v0
.end method
