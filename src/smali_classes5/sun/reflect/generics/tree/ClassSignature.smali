.class public Lsun/reflect/generics/tree/ClassSignature;
.super Ljava/lang/Object;
.source "ClassSignature.java"

# interfaces
.implements Lsun/reflect/generics/tree/Signature;


# instance fields
.field private formalTypeParams:[Lsun/reflect/generics/tree/FormalTypeParameter;

.field private superInterfaces:[Lsun/reflect/generics/tree/ClassTypeSignature;

.field private superclass:Lsun/reflect/generics/tree/ClassTypeSignature;


# direct methods
.method private constructor <init>([Lsun/reflect/generics/tree/FormalTypeParameter;Lsun/reflect/generics/tree/ClassTypeSignature;[Lsun/reflect/generics/tree/ClassTypeSignature;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lsun/reflect/generics/tree/ClassSignature;->formalTypeParams:[Lsun/reflect/generics/tree/FormalTypeParameter;

    .line 39
    iput-object p2, p0, Lsun/reflect/generics/tree/ClassSignature;->superclass:Lsun/reflect/generics/tree/ClassTypeSignature;

    .line 40
    iput-object p3, p0, Lsun/reflect/generics/tree/ClassSignature;->superInterfaces:[Lsun/reflect/generics/tree/ClassTypeSignature;

    .line 41
    return-void
.end method

.method public static make([Lsun/reflect/generics/tree/FormalTypeParameter;Lsun/reflect/generics/tree/ClassTypeSignature;[Lsun/reflect/generics/tree/ClassTypeSignature;)Lsun/reflect/generics/tree/ClassSignature;
    .registers 4

    .line 46
    new-instance v0, Lsun/reflect/generics/tree/ClassSignature;

    invoke-direct {v0, p0, p1, p2}, Lsun/reflect/generics/tree/ClassSignature;-><init>([Lsun/reflect/generics/tree/FormalTypeParameter;Lsun/reflect/generics/tree/ClassTypeSignature;[Lsun/reflect/generics/tree/ClassTypeSignature;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lsun/reflect/generics/visitor/Visitor;)V
    .registers 2

    .line 55
    invoke-interface {p1, p0}, Lsun/reflect/generics/visitor/Visitor;->visitClassSignature(Lsun/reflect/generics/tree/ClassSignature;)V

    return-void
.end method

.method public getFormalTypeParameters()[Lsun/reflect/generics/tree/FormalTypeParameter;
    .registers 2

    .line 50
    iget-object v0, p0, Lsun/reflect/generics/tree/ClassSignature;->formalTypeParams:[Lsun/reflect/generics/tree/FormalTypeParameter;

    return-object v0
.end method

.method public getSuperInterfaces()[Lsun/reflect/generics/tree/ClassTypeSignature;
    .registers 2

    .line 53
    iget-object v0, p0, Lsun/reflect/generics/tree/ClassSignature;->superInterfaces:[Lsun/reflect/generics/tree/ClassTypeSignature;

    return-object v0
.end method

.method public getSuperclass()Lsun/reflect/generics/tree/ClassTypeSignature;
    .registers 2

    .line 52
    iget-object v0, p0, Lsun/reflect/generics/tree/ClassSignature;->superclass:Lsun/reflect/generics/tree/ClassTypeSignature;

    return-object v0
.end method
