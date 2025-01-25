.class public Lcom/sun/tools/javac/tree/JCTree$JCIdent;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/IdentifierTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCIdent"
.end annotation


# instance fields
.field public name:Lcom/sun/tools/javac/util/Name;

.field public sym:Lcom/sun/tools/javac/code/Symbol;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 3

    .line 2477
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 2478
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    .line 2479
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2480
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/source/tree/TreeVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 2497
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 2484
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V

    .line 2485
    return-void
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 2488
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getName()Lcom/sun/tools/javac/util/Name;
    .registers 2

    .line 2492
    iget-object v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    return-object v0
.end method

.method public bridge synthetic getName()Ljavax/lang/model/element/Name;
    .registers 2

    .line 2473
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->getName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 2501
    const/16 v0, 0x23

    return v0
.end method
