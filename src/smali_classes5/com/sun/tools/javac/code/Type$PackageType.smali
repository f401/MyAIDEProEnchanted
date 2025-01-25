.class public Lcom/sun/tools/javac/code/Type$PackageType;
.super Lcom/sun/tools/javac/code/Type;
.source "Type.java"

# interfaces
.implements Ljavax/lang/model/type/NoType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageType"
.end annotation


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 3

    .line 1016
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 1017
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/code/Type$Visitor",
            "<TR;TS;>;TS;)TR;"
        }
    .end annotation

    .line 1021
    invoke-interface {p1, p0, p2}, Lcom/sun/tools/javac/code/Type$Visitor;->visitPackageType(Lcom/sun/tools/javac/code/Type$PackageType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/type/TypeVisitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1033
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeVisitor;->visitNoType(Ljavax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/lang/model/type/TypeKind;
    .registers 2

    .line 1029
    sget-object v0, Ljavax/lang/model/type/TypeKind;->PACKAGE:Ljavax/lang/model/type/TypeKind;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1025
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$PackageType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
