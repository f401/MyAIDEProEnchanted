.class public Lsun/reflect/generics/scope/ClassScope;
.super Lsun/reflect/generics/scope/AbstractScope;
.source "ClassScope.java"

# interfaces
.implements Lsun/reflect/generics/scope/Scope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/reflect/generics/scope/AbstractScope",
        "<",
        "Ljava/lang/Class",
        "<*>;>;",
        "Lsun/reflect/generics/scope/Scope;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lsun/reflect/generics/scope/AbstractScope;-><init>(Ljava/lang/reflect/GenericDeclaration;)V

    .line 41
    return-void
.end method

.method public static make(Ljava/lang/Class;)Lsun/reflect/generics/scope/ClassScope;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lsun/reflect/generics/scope/ClassScope;"
        }
    .end annotation

    .line 81
    new-instance v0, Lsun/reflect/generics/scope/ClassScope;

    invoke-direct {v0, p0}, Lsun/reflect/generics/scope/ClassScope;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected computeEnclosingScope()Lsun/reflect/generics/scope/Scope;
    .registers 3

    .line 48
    invoke-virtual {p0}, Lsun/reflect/generics/scope/ClassScope;->getRecvr()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 54
    invoke-static {v1}, Lsun/reflect/generics/scope/MethodScope;->make(Ljava/lang/reflect/Method;)Lsun/reflect/generics/scope/MethodScope;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    .line 60
    invoke-static {v1}, Lsun/reflect/generics/scope/ConstructorScope;->make(Ljava/lang/reflect/Constructor;)Lsun/reflect/generics/scope/ConstructorScope;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 68
    invoke-static {v0}, Lsun/reflect/generics/scope/ClassScope;->make(Ljava/lang/Class;)Lsun/reflect/generics/scope/ClassScope;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {}, Lsun/reflect/generics/scope/DummyScope;->make()Lsun/reflect/generics/scope/DummyScope;

    move-result-object v0

    goto :goto_0
.end method
