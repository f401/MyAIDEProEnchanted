.class public interface abstract Lcom/sun/tools/javac/code/Attribute$Visitor;
.super Ljava/lang/Object;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract visitArray(Lcom/sun/tools/javac/code/Attribute$Array;)V
.end method

.method public abstract visitClass(Lcom/sun/tools/javac/code/Attribute$Class;)V
.end method

.method public abstract visitCompound(Lcom/sun/tools/javac/code/Attribute$Compound;)V
.end method

.method public abstract visitConstant(Lcom/sun/tools/javac/code/Attribute$Constant;)V
.end method

.method public abstract visitEnum(Lcom/sun/tools/javac/code/Attribute$Enum;)V
.end method

.method public abstract visitError(Lcom/sun/tools/javac/code/Attribute$Error;)V
.end method
