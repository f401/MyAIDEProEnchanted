.class public Lsun/reflect/generics/tree/TypeVariableSignature;
.super Ljava/lang/Object;
.source "TypeVariableSignature.java"

# interfaces
.implements Lsun/reflect/generics/tree/FieldTypeSignature;


# instance fields
.field private identifier:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/reflect/generics/tree/TypeVariableSignature;->identifier:Ljava/lang/String;

    return-void
.end method

.method public static make(Ljava/lang/String;)Lsun/reflect/generics/tree/TypeVariableSignature;
    .locals 1

    .line 37
    new-instance v0, Lsun/reflect/generics/tree/TypeVariableSignature;

    invoke-direct {v0, p0}, Lsun/reflect/generics/tree/TypeVariableSignature;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/reflect/generics/visitor/TypeTreeVisitor",
            "<*>;)V"
        }
    .end annotation

    .line 43
    invoke-interface {p1, p0}, Lsun/reflect/generics/visitor/TypeTreeVisitor;->visitTypeVariableSignature(Lsun/reflect/generics/tree/TypeVariableSignature;)V

    .line 44
    return-void
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lsun/reflect/generics/tree/TypeVariableSignature;->identifier:Ljava/lang/String;

    return-object v0
.end method
