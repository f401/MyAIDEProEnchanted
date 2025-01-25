.class public interface abstract Lsun/reflect/generics/visitor/Visitor;
.super Ljava/lang/Object;
.source "Visitor.java"

# interfaces
.implements Lsun/reflect/generics/visitor/TypeTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lsun/reflect/generics/visitor/TypeTreeVisitor",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract visitClassSignature(Lsun/reflect/generics/tree/ClassSignature;)V
.end method

.method public abstract visitMethodTypeSignature(Lsun/reflect/generics/tree/MethodTypeSignature;)V
.end method
