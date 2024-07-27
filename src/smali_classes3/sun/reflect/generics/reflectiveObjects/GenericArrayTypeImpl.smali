.class public Lsun/reflect/generics/reflectiveObjects/GenericArrayTypeImpl;
.super Ljava/lang/Object;
.source "GenericArrayTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;


# instance fields
.field private genericComponentType:Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lsun/reflect/generics/reflectiveObjects/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    .line 42
    return-void
.end method

.method public static make(Ljava/lang/reflect/Type;)Lsun/reflect/generics/reflectiveObjects/GenericArrayTypeImpl;
    .registers 2

    .line 51
    new-instance v0, Lsun/reflect/generics/reflectiveObjects/GenericArrayTypeImpl;

    invoke-direct {v0, p0}, Lsun/reflect/generics/reflectiveObjects/GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 81
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_0

    .line 82
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 84
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lsun/reflect/generics/reflectiveObjects/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    if-nez v2, :cond_1

    .line 86
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .registers 2

    .line 64
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 94
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 68
    invoke-virtual {p0}, Lsun/reflect/generics/reflectiveObjects/GenericArrayTypeImpl;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 72
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :goto_0
    const-string v0, "[]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
