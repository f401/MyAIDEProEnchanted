.class public Lsun/reflect/generics/tree/SimpleClassTypeSignature;
.super Ljava/lang/Object;
.source "SimpleClassTypeSignature.java"

# interfaces
.implements Lsun/reflect/generics/tree/FieldTypeSignature;


# instance fields
.field private dollar:Z

.field private name:Ljava/lang/String;

.field private typeArgs:[Lsun/reflect/generics/tree/TypeArgument;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z[Lsun/reflect/generics/tree/TypeArgument;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->name:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->dollar:Z

    .line 38
    iput-object p3, p0, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->typeArgs:[Lsun/reflect/generics/tree/TypeArgument;

    .line 39
    return-void
.end method

.method public static make(Ljava/lang/String;Z[Lsun/reflect/generics/tree/TypeArgument;)Lsun/reflect/generics/tree/SimpleClassTypeSignature;
    .registers 4

    .line 44
    new-instance v0, Lsun/reflect/generics/tree/SimpleClassTypeSignature;

    invoke-direct {v0, p0, p1, p2}, Lsun/reflect/generics/tree/SimpleClassTypeSignature;-><init>(Ljava/lang/String;Z[Lsun/reflect/generics/tree/TypeArgument;)V

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

    .line 58
    invoke-interface {p1, p0}, Lsun/reflect/generics/visitor/TypeTreeVisitor;->visitSimpleClassTypeSignature(Lsun/reflect/generics/tree/SimpleClassTypeSignature;)V

    .line 59
    return-void
.end method

.method public getDollar()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->dollar:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeArguments()[Lsun/reflect/generics/tree/TypeArgument;
    .registers 2

    .line 55
    iget-object v0, p0, Lsun/reflect/generics/tree/SimpleClassTypeSignature;->typeArgs:[Lsun/reflect/generics/tree/TypeArgument;

    return-object v0
.end method
