.class public Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;
.super Lsun/reflect/generics/reflectiveObjects/LazyReflectiveObjectGenerator;
.source "TypeVariableImpl.java"

# interfaces
.implements Ljava/lang/reflect/TypeVariable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/lang/reflect/GenericDeclaration;",
        ">",
        "Lsun/reflect/generics/reflectiveObjects/LazyReflectiveObjectGenerator;",
        "Ljava/lang/reflect/TypeVariable",
        "<TD;>;"
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private boundASTs:[Lsun/reflect/generics/tree/FieldTypeSignature;

.field private bounds:[Ljava/lang/reflect/Type;

.field genericDeclaration:Ljava/lang/reflect/GenericDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Lsun/reflect/generics/tree/FieldTypeSignature;Lsun/reflect/generics/factory/GenericsFactory;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/String;",
            "[",
            "Lsun/reflect/generics/tree/FieldTypeSignature;",
            "Lsun/reflect/generics/factory/GenericsFactory;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p4}, Lsun/reflect/generics/reflectiveObjects/LazyReflectiveObjectGenerator;-><init>(Lsun/reflect/generics/factory/GenericsFactory;)V

    .line 58
    iput-object p1, p0, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 59
    iput-object p2, p0, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->name:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->boundASTs:[Lsun/reflect/generics/tree/FieldTypeSignature;

    .line 61
    return-void
.end method

.method private getBoundASTs()[Lsun/reflect/generics/tree/FieldTypeSignature;
    .registers 2

    .line 70
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->boundASTs:[Lsun/reflect/generics/tree/FieldTypeSignature;

    return-object v0
.end method

.method public static make(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Lsun/reflect/generics/tree/FieldTypeSignature;Lsun/reflect/generics/factory/GenericsFactory;)Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Lsun/reflect/generics/tree/FieldTypeSignature;",
            "Lsun/reflect/generics/factory/GenericsFactory;",
            ")",
            "Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl",
            "<TT;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Lsun/reflect/generics/tree/FieldTypeSignature;Lsun/reflect/generics/factory/GenericsFactory;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    .line 159
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 160
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .line 162
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    .line 163
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    .line 165
    iget-object v3, p0, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    .line 168
    :goto_0
    iget-object v1, p0, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    if-nez v2, :cond_0

    .line 171
    :goto_1
    const/4 v0, 0x1

    .line 174
    :cond_0
    return v0

    .line 168
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public getBounds()[Ljava/lang/reflect/Type;
    .registers 6

    .line 117
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->bounds:[Ljava/lang/reflect/Type;

    if-nez v0, :cond_1

    .line 118
    invoke-direct {p0}, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->getBoundASTs()[Lsun/reflect/generics/tree/FieldTypeSignature;

    move-result-object v1

    .line 121
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/reflect/Type;

    .line 123
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 124
    invoke-virtual {p0}, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->getReifier()Lsun/reflect/generics/visitor/Reifier;

    move-result-object v3

    .line 125
    aget-object v4, v1, v0

    invoke-interface {v4, v3}, Lsun/reflect/generics/tree/FieldTypeSignature;->accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V

    .line 126
    invoke-virtual {v3}, Lsun/reflect/generics/visitor/Reifier;->getResult()Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v2, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iput-object v2, p0, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->bounds:[Ljava/lang/reflect/Type;

    .line 132
    :cond_1
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->bounds:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 179
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 155
    invoke-virtual {p0}, Lsun/reflect/generics/reflectiveObjects/TypeVariableImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
