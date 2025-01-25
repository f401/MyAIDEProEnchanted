.class final Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/reflect/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GenericArrayTypeImpl"
.end annotation


# instance fields
.field private final componentType:Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 69
    if-eq p1, p0, :cond_e

    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->access$000(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .registers 2

    .line 77
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 85
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 87
    or-int/lit16 v0, v0, 0x430

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 95
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
