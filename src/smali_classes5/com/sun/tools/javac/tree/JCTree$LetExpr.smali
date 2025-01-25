.class public Lcom/sun/tools/javac/tree/JCTree$LetExpr;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LetExpr"
.end annotation


# instance fields
.field public defs:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation
.end field

.field public expr:Lcom/sun/tools/javac/tree/JCTree;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ")V"
        }
    .end annotation

    .line 2973
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 2974
    iput-object p1, p0, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->defs:Lcom/sun/tools/javac/util/List;

    .line 2975
    iput-object p2, p0, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->expr:Lcom/sun/tools/javac/tree/JCTree;

    .line 2976
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
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

    .line 2989
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "LetExpr is not part of a public API"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 2980
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitLetExpr(Lcom/sun/tools/javac/tree/JCTree$LetExpr;)V

    .line 2981
    return-void
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 3

    .line 2984
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "LetExpr is not part of a public API"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getTag()I
    .registers 2

    .line 2994
    const/16 v0, 0x5d

    return v0
.end method
