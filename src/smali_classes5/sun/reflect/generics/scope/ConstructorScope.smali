.class public Lsun/reflect/generics/scope/ConstructorScope;
.super Lsun/reflect/generics/scope/AbstractScope;
.source "ConstructorScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/reflect/generics/scope/AbstractScope",
        "<",
        "Ljava/lang/reflect/Constructor;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lsun/reflect/generics/scope/AbstractScope;-><init>(Ljava/lang/reflect/GenericDeclaration;)V

    .line 40
    return-void
.end method

.method private getEnclosingClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lsun/reflect/generics/scope/ConstructorScope;->getRecvr()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static make(Ljava/lang/reflect/Constructor;)Lsun/reflect/generics/scope/ConstructorScope;
    .registers 2

    .line 65
    new-instance v0, Lsun/reflect/generics/scope/ConstructorScope;

    invoke-direct {v0, p0}, Lsun/reflect/generics/scope/ConstructorScope;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method


# virtual methods
.method protected computeEnclosingScope()Lsun/reflect/generics/scope/Scope;
    .registers 2

    .line 55
    invoke-direct {p0}, Lsun/reflect/generics/scope/ConstructorScope;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lsun/reflect/generics/scope/ClassScope;->make(Ljava/lang/Class;)Lsun/reflect/generics/scope/ClassScope;

    move-result-object v0

    return-object v0
.end method
