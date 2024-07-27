.class public interface abstract Lsun/reflect/generics/visitor/TypeTreeVisitor;
.super Ljava/lang/Object;
.source "TypeTreeVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract visitArrayTypeSignature(Lsun/reflect/generics/tree/ArrayTypeSignature;)V
.end method

.method public abstract visitBooleanSignature(Lsun/reflect/generics/tree/BooleanSignature;)V
.end method

.method public abstract visitBottomSignature(Lsun/reflect/generics/tree/BottomSignature;)V
.end method

.method public abstract visitByteSignature(Lsun/reflect/generics/tree/ByteSignature;)V
.end method

.method public abstract visitCharSignature(Lsun/reflect/generics/tree/CharSignature;)V
.end method

.method public abstract visitClassTypeSignature(Lsun/reflect/generics/tree/ClassTypeSignature;)V
.end method

.method public abstract visitDoubleSignature(Lsun/reflect/generics/tree/DoubleSignature;)V
.end method

.method public abstract visitFloatSignature(Lsun/reflect/generics/tree/FloatSignature;)V
.end method

.method public abstract visitFormalTypeParameter(Lsun/reflect/generics/tree/FormalTypeParameter;)V
.end method

.method public abstract visitIntSignature(Lsun/reflect/generics/tree/IntSignature;)V
.end method

.method public abstract visitLongSignature(Lsun/reflect/generics/tree/LongSignature;)V
.end method

.method public abstract visitShortSignature(Lsun/reflect/generics/tree/ShortSignature;)V
.end method

.method public abstract visitSimpleClassTypeSignature(Lsun/reflect/generics/tree/SimpleClassTypeSignature;)V
.end method

.method public abstract visitTypeVariableSignature(Lsun/reflect/generics/tree/TypeVariableSignature;)V
.end method

.method public abstract visitVoidDescriptor(Lsun/reflect/generics/tree/VoidDescriptor;)V
.end method

.method public abstract visitWildcard(Lsun/reflect/generics/tree/Wildcard;)V
.end method
