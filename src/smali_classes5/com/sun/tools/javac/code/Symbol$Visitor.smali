.class public interface abstract Lcom/sun/tools/javac/code/Symbol$Visitor;
.super Ljava/lang/Object;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitOperatorSymbol(Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitPackageSymbol(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$PackageSymbol;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitTypeSymbol(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitVarSymbol(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            "TP;)TR;"
        }
    .end annotation
.end method
