.class public Lsun/reflect/generics/factory/CoreReflectionFactory;
.super Ljava/lang/Object;
.source "CoreReflectionFactory.java"

# interfaces
.implements Lsun/reflect/generics/factory/GenericsFactory;


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private decl:Ljava/lang/reflect/GenericDeclaration;

.field private scope:Lsun/reflect/generics/scope/Scope;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 46
    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/GenericDeclaration;Lsun/reflect/generics/scope/Scope;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lsun/reflect/generics/factory/CoreReflectionFactory;->decl:Ljava/lang/reflect/GenericDeclaration;

    .line 52
    iput-object p2, p0, Lsun/reflect/generics/factory/CoreReflectionFactory;->scope:Lsun/reflect/generics/scope/Scope;

    .line 53
    return-void
.end method

.method private getDecl()Ljava/lang/reflect/GenericDeclaration;
    .registers 2

    .line 55
    iget-object v0, p0, Lsun/reflect/generics/factory/CoreReflectionFactory;->decl:Ljava/lang/reflect/GenericDeclaration;

    return-object v0
.end method

.method private getDeclsLoader()Ljava/lang/ClassLoader;
    .registers 3

    .line 61
    iget-object v0, p0, Lsun/reflect/generics/factory/CoreReflectionFactory;->decl:Ljava/lang/reflect/GenericDeclaration;

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 62
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 63
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_1
    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method private getScope()Lsun/reflect/generics/scope/Scope;
    .registers 2

    .line 57
    iget-object v0, p0, Lsun/reflect/generics/factory/CoreReflectionFactory;->scope:Lsun/reflect/generics/scope/Scope;

    return-object v0
.end method

.method public static make(Ljava/lang/reflect/GenericDeclaration;Lsun/reflect/generics/scope/Scope;)Lsun/reflect/generics/factory/CoreReflectionFactory;
    .registers 3

    .line 88
    new-instance v0, Lsun/reflect/generics/factory/CoreReflectionFactory;

    invoke-direct {v0, p0, p1}, Lsun/reflect/generics/factory/CoreReflectionFactory;-><init>(Ljava/lang/reflect/GenericDeclaration;Lsun/reflect/generics/scope/Scope;)V

    return-object v0
.end method


# virtual methods
.method public findTypeVariable(Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lsun/reflect/generics/factory/CoreReflectionFactory;->getScope()Lsun/reflect/generics/scope/Scope;

    move-result-object v0

    invoke-interface {v0, p1}, Lsun/reflect/generics/scope/Scope;->lookup(Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    return-object v0
.end method

.method public makeArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 3

    .line 121
    invoke-static {p1}, Lsun/reflect/generics/reflectiveObjects/GenericArrayTypeImpl;->make(Ljava/lang/reflect/Type;)Lsun/reflect/generics/reflectiveObjects/GenericArrayTypeImpl;

    move-result-object v0

    return-object v0
.end method

.method public makeBool()Ljava/lang/reflect/Type;
    .registers 2

    .line 125
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public makeByte()Ljava/lang/reflect/Type;
    .registers 2

    .line 124
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public makeChar()Ljava/lang/reflect/Type;
    .registers 2

    .line 127
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public makeDouble()Ljava/lang/reflect/Type;
    .registers 2

    .line 131
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public makeFloat()Ljava/lang/reflect/Type;
    .registers 2

    .line 130
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public makeInt()Ljava/lang/reflect/Type;
    .registers 2

    .line 128
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public makeLong()Ljava/lang/reflect/Type;
    .registers 2

    .line 129
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public makeNamedType(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .registers 4

    .line 113
    :try_start_0
    invoke-direct {p0}, Lsun/reflect/generics/factory/CoreReflectionFactory;->getDeclsLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Ljava/lang/TypeNotPresentException;

    invoke-direct {v1, p1, v0}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public makeParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .registers 5

    .line 104
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;->make(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lsun/reflect/generics/reflectiveObjects/ParameterizedTypeImpl;

    move-result-object v0

    return-object v0
.end method

.method public makeShort()Ljava/lang/reflect/Type;
    .registers 2

    .line 126
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public makeTypeVariable(Ljava/lang/String;[Lsun/reflect/generics/tree/FieldTypeSignature;)Ljava/lang/reflect/TypeVariable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lsun/reflect/generics/tree/FieldTypeSignature;",
            ")",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lsun/reflect/generics/factory/CoreReflectionFactory;->getDecl()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    invoke-static {v0, p1, p2, p0}, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->make(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Lsun/reflect/generics/tree/FieldTypeSignature;Lsun/reflect/generics/factory/GenericsFactory;)Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;

    move-result-object v0

    return-object v0
.end method

.method public makeVoid()Ljava/lang/reflect/Type;
    .registers 2

    .line 133
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public makeWildcard([Lsun/reflect/generics/tree/FieldTypeSignature;[Lsun/reflect/generics/tree/FieldTypeSignature;)Ljava/lang/reflect/WildcardType;
    .registers 4

    .line 98
    invoke-static {p1, p2, p0}, Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;->make([Lsun/reflect/generics/tree/FieldTypeSignature;[Lsun/reflect/generics/tree/FieldTypeSignature;Lsun/reflect/generics/factory/GenericsFactory;)Lsun/reflect/generics/reflectiveObjects/WildcardTypeImpl;

    move-result-object v0

    return-object v0
.end method
