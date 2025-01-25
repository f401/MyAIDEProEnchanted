.class public Lsun/reflect/generics/tree/ArrayTypeSignature;
.super Ljava/lang/Object;
.source "ArrayTypeSignature.java"

# interfaces
.implements Lsun/reflect/generics/tree/FieldTypeSignature;


# instance fields
.field private componentType:Lsun/reflect/generics/tree/TypeSignature;


# direct methods
.method private constructor <init>(Lsun/reflect/generics/tree/TypeSignature;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/reflect/generics/tree/ArrayTypeSignature;->componentType:Lsun/reflect/generics/tree/TypeSignature;

    return-void
.end method

.method public static make(Lsun/reflect/generics/tree/TypeSignature;)Lsun/reflect/generics/tree/ArrayTypeSignature;
    .registers 2

    .line 36
    new-instance v0, Lsun/reflect/generics/tree/ArrayTypeSignature;

    invoke-direct {v0, p0}, Lsun/reflect/generics/tree/ArrayTypeSignature;-><init>(Lsun/reflect/generics/tree/TypeSignature;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/reflect/generics/visitor/TypeTreeVisitor",
            "<*>;)V"
        }
    .end annotation

    .line 42
    invoke-interface {p1, p0}, Lsun/reflect/generics/visitor/TypeTreeVisitor;->visitArrayTypeSignature(Lsun/reflect/generics/tree/ArrayTypeSignature;)V

    .line 43
    return-void
.end method

.method public getComponentType()Lsun/reflect/generics/tree/TypeSignature;
    .registers 2

    .line 39
    iget-object v0, p0, Lsun/reflect/generics/tree/ArrayTypeSignature;->componentType:Lsun/reflect/generics/tree/TypeSignature;

    return-object v0
.end method
