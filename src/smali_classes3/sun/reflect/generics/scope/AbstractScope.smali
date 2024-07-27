.class public abstract Lsun/reflect/generics/scope/AbstractScope;
.super Ljava/lang/Object;
.source "AbstractScope.java"

# interfaces
.implements Lsun/reflect/generics/scope/Scope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/lang/reflect/GenericDeclaration;",
        ">",
        "Ljava/lang/Object;",
        "Lsun/reflect/generics/scope/Scope;"
    }
.end annotation


# instance fields
.field private enclosingScope:Lsun/reflect/generics/scope/Scope;

.field private recvr:Ljava/lang/reflect/GenericDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/GenericDeclaration;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/reflect/generics/scope/AbstractScope;->recvr:Ljava/lang/reflect/GenericDeclaration;

    return-void
.end method


# virtual methods
.method protected abstract computeEnclosingScope()Lsun/reflect/generics/scope/Scope;
.end method

.method protected getEnclosingScope()Lsun/reflect/generics/scope/Scope;
    .registers 2

    .line 74
    iget-object v0, p0, Lsun/reflect/generics/scope/AbstractScope;->enclosingScope:Lsun/reflect/generics/scope/Scope;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/reflect/generics/scope/AbstractScope;->computeEnclosingScope()Lsun/reflect/generics/scope/Scope;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/scope/AbstractScope;->enclosingScope:Lsun/reflect/generics/scope/Scope;

    .line 75
    :cond_0
    iget-object v0, p0, Lsun/reflect/generics/scope/AbstractScope;->enclosingScope:Lsun/reflect/generics/scope/Scope;

    return-object v0
.end method

.method protected getRecvr()Ljava/lang/reflect/GenericDeclaration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lsun/reflect/generics/scope/AbstractScope;->recvr:Ljava/lang/reflect/GenericDeclaration;

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lsun/reflect/generics/scope/AbstractScope;->getRecvr()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    .line 87
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 88
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    :goto_1
    return-object v0

    .line 87
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lsun/reflect/generics/scope/AbstractScope;->getEnclosingScope()Lsun/reflect/generics/scope/Scope;

    move-result-object v0

    invoke-interface {v0, p1}, Lsun/reflect/generics/scope/Scope;->lookup(Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    goto :goto_1
.end method
