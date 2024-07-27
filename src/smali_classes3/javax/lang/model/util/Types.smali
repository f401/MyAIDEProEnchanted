.class public interface abstract Ljavax/lang/model/util/Types;
.super Ljava/lang/Object;
.source "Types.java"


# virtual methods
.method public abstract asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;
.end method

.method public abstract asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;
.end method

.method public abstract boxedClass(Ljavax/lang/model/type/PrimitiveType;)Ljavax/lang/model/element/TypeElement;
.end method

.method public abstract capture(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;
.end method

.method public abstract contains(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
.end method

.method public abstract directSupertypes(Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/List",
            "<+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end method

.method public abstract erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;
.end method

.method public abstract getArrayType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;
.end method

.method public varargs abstract getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;
.end method

.method public varargs abstract getDeclaredType(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;
.end method

.method public abstract getNoType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/NoType;
.end method

.method public abstract getNullType()Ljavax/lang/model/type/NullType;
.end method

.method public abstract getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;
.end method

.method public abstract getWildcardType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/WildcardType;
.end method

.method public abstract isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
.end method

.method public abstract isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
.end method

.method public abstract isSubsignature(Ljavax/lang/model/type/ExecutableType;Ljavax/lang/model/type/ExecutableType;)Z
.end method

.method public abstract isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
.end method

.method public abstract unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;
.end method
