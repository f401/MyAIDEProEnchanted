.class public abstract Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;
.super Ljava/lang/Object;
.source "Types.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Symbol$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DefaultSymbolVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sun/tools/javac/code/Symbol$Visitor",
        "<TR;TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol;",
            "TS;)TR;"
        }
    .end annotation

    .line 3794
    invoke-virtual {p1, p0, p2}, Lcom/sun/tools/javac/code/Symbol;->accept(Lcom/sun/tools/javac/code/Symbol$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            "TS;)TR;"
        }
    .end annotation

    .line 3795
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "TS;)TR;"
        }
    .end annotation

    .line 3796
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitOperatorSymbol(Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;",
            "TS;)TR;"
        }
    .end annotation

    .line 3797
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPackageSymbol(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$PackageSymbol;",
            "TS;)TR;"
        }
    .end annotation

    .line 3798
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeSymbol(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "TS;)TR;"
        }
    .end annotation

    .line 3799
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitVarSymbol(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$VarSymbol;",
            "TS;)TR;"
        }
    .end annotation

    .line 3800
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
