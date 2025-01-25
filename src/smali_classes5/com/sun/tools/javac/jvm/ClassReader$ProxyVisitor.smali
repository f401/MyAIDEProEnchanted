.class interface abstract Lcom/sun/tools/javac/jvm/ClassReader$ProxyVisitor;
.super Ljava/lang/Object;
.source "ClassReader.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Attribute$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ProxyVisitor"
.end annotation


# virtual methods
.method public abstract visitArrayAttributeProxy(Lcom/sun/tools/javac/jvm/ClassReader$ArrayAttributeProxy;)V
.end method

.method public abstract visitCompoundAnnotationProxy(Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;)V
.end method

.method public abstract visitEnumAttributeProxy(Lcom/sun/tools/javac/jvm/ClassReader$EnumAttributeProxy;)V
.end method
