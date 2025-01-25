.class public interface abstract Lsun/reflect/generics/factory/GenericsFactory;
.super Ljava/lang/Object;
.source "GenericsFactory.java"


# virtual methods
.method public abstract findTypeVariable(Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract makeArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method public abstract makeBool()Ljava/lang/reflect/Type;
.end method

.method public abstract makeByte()Ljava/lang/reflect/Type;
.end method

.method public abstract makeChar()Ljava/lang/reflect/Type;
.end method

.method public abstract makeDouble()Ljava/lang/reflect/Type;
.end method

.method public abstract makeFloat()Ljava/lang/reflect/Type;
.end method

.method public abstract makeInt()Ljava/lang/reflect/Type;
.end method

.method public abstract makeLong()Ljava/lang/reflect/Type;
.end method

.method public abstract makeNamedType(Ljava/lang/String;)Ljava/lang/reflect/Type;
.end method

.method public abstract makeParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
.end method

.method public abstract makeShort()Ljava/lang/reflect/Type;
.end method

.method public abstract makeTypeVariable(Ljava/lang/String;[Lsun/reflect/generics/tree/FieldTypeSignature;)Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lsun/reflect/generics/tree/FieldTypeSignature;",
            ")",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract makeVoid()Ljava/lang/reflect/Type;
.end method

.method public abstract makeWildcard([Lsun/reflect/generics/tree/FieldTypeSignature;[Lsun/reflect/generics/tree/FieldTypeSignature;)Ljava/lang/reflect/WildcardType;
.end method
