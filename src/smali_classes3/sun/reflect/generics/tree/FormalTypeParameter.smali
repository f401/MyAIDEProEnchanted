.class public Lsun/reflect/generics/tree/FormalTypeParameter;
.super Ljava/lang/Object;
.source "FormalTypeParameter.java"

# interfaces
.implements Lsun/reflect/generics/tree/TypeTree;


# instance fields
.field private bounds:[Lsun/reflect/generics/tree/FieldTypeSignature;

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Lsun/reflect/generics/tree/FieldTypeSignature;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lsun/reflect/generics/tree/FormalTypeParameter;->name:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lsun/reflect/generics/tree/FormalTypeParameter;->bounds:[Lsun/reflect/generics/tree/FieldTypeSignature;

    .line 38
    return-void
.end method

.method public static make(Ljava/lang/String;[Lsun/reflect/generics/tree/FieldTypeSignature;)Lsun/reflect/generics/tree/FormalTypeParameter;
    .registers 3

    .line 48
    new-instance v0, Lsun/reflect/generics/tree/FormalTypeParameter;

    invoke-direct {v0, p0, p1}, Lsun/reflect/generics/tree/FormalTypeParameter;-><init>(Ljava/lang/String;[Lsun/reflect/generics/tree/FieldTypeSignature;)V

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

    .line 54
    invoke-interface {p1, p0}, Lsun/reflect/generics/visitor/TypeTreeVisitor;->visitFormalTypeParameter(Lsun/reflect/generics/tree/FormalTypeParameter;)V

    return-void
.end method

.method public getBounds()[Lsun/reflect/generics/tree/FieldTypeSignature;
    .registers 2

    .line 51
    iget-object v0, p0, Lsun/reflect/generics/tree/FormalTypeParameter;->bounds:[Lsun/reflect/generics/tree/FieldTypeSignature;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lsun/reflect/generics/tree/FormalTypeParameter;->name:Ljava/lang/String;

    return-object v0
.end method
