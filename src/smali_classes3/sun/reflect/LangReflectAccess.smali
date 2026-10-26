.class public interface abstract Lsun/reflect/LangReflectAccess;
.super Ljava/lang/Object;
.source "LangReflectAccess.java"


# virtual methods
.method public abstract copyConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract copyField(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
.end method

.method public abstract copyMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
.end method

.method public abstract getConstructorAccessor(Ljava/lang/reflect/Constructor;)Lsun/reflect/ConstructorAccessor;
.end method

.method public abstract getConstructorAnnotations(Ljava/lang/reflect/Constructor;)[B
.end method

.method public abstract getConstructorParameterAnnotations(Ljava/lang/reflect/Constructor;)[B
.end method

.method public abstract getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
.end method

.method public abstract getConstructorSlot(Ljava/lang/reflect/Constructor;)I
.end method

.method public abstract getMethodAccessor(Ljava/lang/reflect/Method;)Lsun/reflect/MethodAccessor;
.end method

.method public abstract newConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;IILjava/lang/String;[B[B)Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Class;",
            "II",
            "Ljava/lang/String;",
            "[B[B)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract newField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;IILjava/lang/String;[B)Ljava/lang/reflect/Field;
.end method

.method public abstract newMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;IILjava/lang/String;[B[B[B)Ljava/lang/reflect/Method;
.end method

.method public abstract setConstructorAccessor(Ljava/lang/reflect/Constructor;Lsun/reflect/ConstructorAccessor;)V
.end method

.method public abstract setMethodAccessor(Ljava/lang/reflect/Method;Lsun/reflect/MethodAccessor;)V
.end method
