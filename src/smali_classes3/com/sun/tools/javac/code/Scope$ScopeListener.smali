.class public interface abstract Lcom/sun/tools/javac/code/Scope$ScopeListener;
.super Ljava/lang/Object;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScopeListener"
.end annotation


# virtual methods
.method public abstract symbolAdded(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V
.end method

.method public abstract symbolRemoved(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V
.end method
